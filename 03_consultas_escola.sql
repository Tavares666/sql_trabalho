-- =============================================
-- RESPONDENDO AS CONSULTAS DO PROFESSOR
-- =============================================

USE escola_db;

-- =============================================
-- CONSULTA 1: Listar alunos com total de faltas por turma e disciplina
-- (ordenado do maior para o menor)
-- =============================================

SELECT 
    t.nome as turma,
    d.nome as disciplina,
    a.nome as aluno,
    COUNT(CASE WHEN p.presente = FALSE THEN 1 END) as total_faltas
FROM presencas p
JOIN alunos a ON p.id_aluno = a.id_aluno
JOIN turma_disciplinas td ON p.id_turma_disciplina = td.id_turma_disciplina
JOIN turmas t ON td.id_turma = t.id_turma
JOIN disciplinas d ON td.id_disciplina = d.id_disciplina
GROUP BY t.id_turma, d.id_disciplina, a.id_aluno, t.nome, d.nome, a.nome
ORDER BY total_faltas DESC, t.nome, d.nome, a.nome;

-- =============================================
-- CONSULTA 2: Taxa de presença (%) por aluno em cada turma e disciplina
-- =============================================

SELECT 
    t.nome as turma,
    d.nome as disciplina,
    a.nome as aluno,
    COUNT(p.id_presenca) as total_aulas,
    COUNT(CASE WHEN p.presente = TRUE THEN 1 END) as presencas,
    COUNT(CASE WHEN p.presente = FALSE THEN 1 END) as faltas,
    ROUND(
        (COUNT(CASE WHEN p.presente = TRUE THEN 1 END) * 100.0 / COUNT(p.id_presenca)), 2
    ) as taxa_presenca_percent
FROM presencas p
JOIN alunos a ON p.id_aluno = a.id_aluno
JOIN turma_disciplinas td ON p.id_turma_disciplina = td.id_turma_disciplina
JOIN turmas t ON td.id_turma = t.id_turma
JOIN disciplinas d ON td.id_disciplina = d.id_disciplina
GROUP BY t.id_turma, d.id_disciplina, a.id_aluno, t.nome, d.nome, a.nome
ORDER BY t.nome, d.nome, taxa_presenca_percent DESC;

-- =============================================
-- CONSULTA 3: Média final do aluno na disciplina
-- =============================================

SELECT 
    t.nome as turma,
    d.nome as disciplina,
    a.nome as aluno,
    COUNT(n.id_nota) as total_avaliacoes,
    ROUND(AVG(n.nota), 2) as media_final
FROM notas n
JOIN avaliacoes av ON n.id_avaliacao = av.id_avaliacao
JOIN turma_disciplinas td ON av.id_turma_disciplina = td.id_turma_disciplina
JOIN turmas t ON td.id_turma = t.id_turma
JOIN disciplinas d ON td.id_disciplina = d.id_disciplina
JOIN alunos a ON n.id_aluno = a.id_aluno
GROUP BY t.id_turma, d.id_disciplina, a.id_aluno, t.nome, d.nome, a.nome
ORDER BY t.nome, d.nome, media_final DESC;

-- =============================================
-- CONSULTA 4: Aluno com maior média em cada turma
-- =============================================

WITH medias_por_turma AS (
    SELECT 
        t.id_turma,
        t.nome as turma,
        a.nome as aluno,
        ROUND(AVG(n.nota), 2) as media_geral
    FROM notas n
    JOIN avaliacoes av ON n.id_avaliacao = av.id_avaliacao
    JOIN turma_disciplinas td ON av.id_turma_disciplina = td.id_turma_disciplina
    JOIN turmas t ON td.id_turma = t.id_turma
    JOIN alunos a ON n.id_aluno = a.id_aluno
    GROUP BY t.id_turma, t.nome, a.id_aluno, a.nome
),
ranked_medias AS (
    SELECT 
        turma,
        aluno,
        media_geral,
        ROW_NUMBER() OVER (PARTITION BY id_turma ORDER BY media_geral DESC) as ranking
    FROM medias_por_turma
)
SELECT 
    turma,
    aluno,
    media_geral
FROM ranked_medias
WHERE ranking = 1
ORDER BY turma;

-- =============================================
-- CONSULTA 5: Ranking de alunos (média) dentro de uma turma específica
-- (usando 1º Ano A como exemplo)
-- =============================================

WITH medias_turma AS (
    SELECT 
        a.nome as aluno,
        ROUND(AVG(n.nota), 2) as media_geral,
        COUNT(n.id_nota) as total_avaliacoes
    FROM notas n
    JOIN avaliacoes av ON n.id_avaliacao = av.id_avaliacao
    JOIN turma_disciplinas td ON av.id_turma_disciplina = td.id_turma_disciplina
    JOIN turmas t ON td.id_turma = t.id_turma
    JOIN alunos a ON n.id_aluno = a.id_aluno
    WHERE t.nome = '1º Ano A'
    GROUP BY a.id_aluno, a.nome
)
SELECT 
    ROW_NUMBER() OVER (ORDER BY media_geral DESC) as posicao,
    aluno,
    media_geral,
    total_avaliacoes
FROM medias_turma
ORDER BY media_geral DESC;

-- =============================================
-- CONSULTA 6: Disciplinas com maior taxa média de faltas
-- =============================================

SELECT 
    d.nome as disciplina,
    COUNT(p.id_presenca) as total_aulas,
    COUNT(CASE WHEN p.presente = FALSE THEN 1 END) as total_faltas,
    ROUND(
        (COUNT(CASE WHEN p.presente = FALSE THEN 1 END) * 100.0 / COUNT(p.id_presenca)), 2
    ) as taxa_media_faltas_percent
FROM presencas p
JOIN turma_disciplinas td ON p.id_turma_disciplina = td.id_turma_disciplina
JOIN disciplinas d ON td.id_disciplina = d.id_disciplina
GROUP BY d.id_disciplina, d.nome
ORDER BY taxa_media_faltas_percent DESC;

-- =============================================
-- CONSULTA 7: Professor com maior carga (número de turmas)
-- =============================================

SELECT 
    p.nome as professor,
    p.especialidade,
    COUNT(DISTINCT td.id_turma) as total_turmas,
    COUNT(td.id_turma_disciplina) as total_disciplinas
FROM professores p
JOIN turma_disciplinas td ON p.id_professor = td.id_professor
GROUP BY p.id_professor, p.nome, p.especialidade
ORDER BY total_turmas DESC, total_disciplinas DESC;

-- =============================================
-- CONSULTA 8: Turmas com média geral abaixo de 6,0 (alerta)
-- =============================================

WITH medias_turmas AS (
    SELECT 
        t.nome as turma,
        t.ano_letivo,
        t.semestre,
        ROUND(AVG(n.nota), 2) as media_geral_turma,
        COUNT(DISTINCT a.id_aluno) as total_alunos
    FROM notas n
    JOIN avaliacoes av ON n.id_avaliacao = av.id_avaliacao
    JOIN turma_disciplinas td ON av.id_turma_disciplina = td.id_turma_disciplina
    JOIN turmas t ON td.id_turma = t.id_turma
    JOIN alunos a ON n.id_aluno = a.id_aluno
    GROUP BY t.id_turma, t.nome, t.ano_letivo, t.semestre
)
SELECT 
    turma,
    ano_letivo,
    semestre,
    media_geral_turma,
    total_alunos,
    'ALERTA: Média abaixo de 6.0' as status
FROM medias_turmas
WHERE media_geral_turma < 6.0
ORDER BY media_geral_turma ASC;

-- =============================================
-- CONSULTA 9: Alunos em risco de reprovação por falta (presença < 75%)
-- =============================================

WITH presencas_alunos AS (
    SELECT 
        t.nome as turma,
        d.nome as disciplina,
        a.nome as aluno,
        COUNT(p.id_presenca) as total_aulas,
        COUNT(CASE WHEN p.presente = TRUE THEN 1 END) as presencas,
        ROUND(
            (COUNT(CASE WHEN p.presente = TRUE THEN 1 END) * 100.0 / COUNT(p.id_presenca)), 2
        ) as taxa_presenca_percent
    FROM presencas p
    JOIN alunos a ON p.id_aluno = a.id_aluno
    JOIN turma_disciplinas td ON p.id_turma_disciplina = td.id_turma_disciplina
    JOIN turmas t ON td.id_turma = t.id_turma
    JOIN disciplinas d ON td.id_disciplina = d.id_disciplina
    GROUP BY t.id_turma, d.id_disciplina, a.id_aluno, t.nome, d.nome, a.nome
)
SELECT 
    turma,
    disciplina,
    aluno,
    total_aulas,
    presencas,
    taxa_presenca_percent,
    'RISCO: Presença abaixo de 75%' as status
FROM presencas_alunos
WHERE taxa_presenca_percent < 75.0
ORDER BY taxa_presenca_percent ASC, turma, disciplina, aluno;

-- =============================================
-- CONSULTA 10: Distribuição de notas (média, min, max, desvio) por avaliação
-- =============================================

SELECT 
    av.nome as avaliacao,
    av.tipo,
    d.nome as disciplina,
    t.nome as turma,
    COUNT(n.id_nota) as total_notas,
    ROUND(AVG(n.nota), 2) as media_notas,
    ROUND(MIN(n.nota), 2) as nota_minima,
    ROUND(MAX(n.nota), 2) as nota_maxima,
    ROUND(STDDEV(n.nota), 2) as desvio_padrao,
    ROUND(MAX(n.nota) - MIN(n.nota), 2) as amplitude
FROM notas n
JOIN avaliacoes av ON n.id_avaliacao = av.id_avaliacao
JOIN turma_disciplinas td ON av.id_turma_disciplina = td.id_turma_disciplina
JOIN disciplinas d ON td.id_disciplina = d.id_disciplina
JOIN turmas t ON td.id_turma = t.id_turma
GROUP BY av.id_avaliacao, av.nome, av.tipo, d.nome, t.nome
ORDER BY t.nome, d.nome, av.data_avaliacao;

-- =============================================
-- CONSULTA 11: Top 3 alunos da escola no semestre (média global)
-- =============================================

WITH medias_globais AS (
    SELECT 
        a.nome as aluno,
        t.nome as turma,
        ROUND(AVG(n.nota), 2) as media_global,
        COUNT(n.id_nota) as total_avaliacoes
    FROM notas n
    JOIN avaliacoes av ON n.id_avaliacao = av.id_avaliacao
    JOIN turma_disciplinas td ON av.id_turma_disciplina = td.id_turma_disciplina
    JOIN turmas t ON td.id_turma = t.id_turma
    JOIN alunos a ON n.id_aluno = a.id_aluno
    GROUP BY a.id_aluno, a.nome, t.nome
),
ranked_globais AS (
    SELECT 
        aluno,
        turma,
        media_global,
        total_avaliacoes,
        ROW_NUMBER() OVER (ORDER BY media_global DESC) as ranking
    FROM medias_globais
)
SELECT 
    ranking as posicao,
    aluno,
    turma,
    media_global,
    total_avaliacoes
FROM ranked_globais
WHERE ranking <= 3
ORDER BY ranking;
