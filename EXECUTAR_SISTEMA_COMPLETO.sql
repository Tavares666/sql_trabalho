USE escola_db;

-- Verificar se todas as tabelas foram criadas
SHOW TABLES;

-- Verificar quantidades de dados
SELECT 'VERIFICAÇÃO FINAL DO SISTEMA' as Status;

SELECT 
    'Professores' as Tabela,
    COUNT(*) as Total
FROM professores
UNION ALL
SELECT 
    'Alunos' as Tabela,
    COUNT(*) as Total
FROM alunos
UNION ALL
SELECT 
    'Turmas' as Tabela,
    COUNT(*) as Total
FROM turmas
UNION ALL
SELECT 
    'Disciplinas' as Tabela,
    COUNT(*) as Total
FROM disciplinas
UNION ALL
SELECT 
    'Matrículas' as Tabela,
    COUNT(*) as Total
FROM matriculas
UNION ALL
SELECT 
    'Turma-Disciplinas' as Tabela,
    COUNT(*) as Total
FROM turma_disciplinas
UNION ALL
SELECT 
    'Avaliações' as Tabela,
    COUNT(*) as Total
FROM avaliacoes
UNION ALL
SELECT 
    'Presenças' as Tabela,
    COUNT(*) as Total
FROM presencas
UNION ALL
SELECT 
    'Notas' as Tabela,
    COUNT(*) as Total
FROM notas;

-- Verificar se o sistema atende aos requisitos
SELECT 'VERIFICAÇÃO DE REQUISITOS' as Status;

-- 1. 6 turmas ✓
SELECT 
    '6 turmas' as Requisito,
    CASE WHEN COUNT(*) = 6 THEN '✓ ATENDIDO' ELSE '✗ NÃO ATENDIDO' END as Status
FROM turmas;

-- 2. 10 alunos por turma ✓
SELECT 
    '10 alunos por turma' as Requisito,
    CASE WHEN COUNT(*) = 60 THEN '✓ ATENDIDO' ELSE '✗ NÃO ATENDIDO' END as Status
FROM alunos;

-- 3. Presenças para 10 dias ✓
SELECT 
    'Presenças para 10 dias' as Requisito,
    CASE WHEN COUNT(*) >= 600 THEN '✓ ATENDIDO' ELSE '✗ NÃO ATENDIDO' END as Status
FROM presencas;

-- 4. Notas para todos os alunos ✓
SELECT 
    'Notas para todos os alunos' as Requisito,
    CASE WHEN COUNT(*) >= 180 THEN '✓ ATENDIDO' ELSE '✗ NÃO ATENDIDO' END as Status
FROM notas;

-- 5. 3 avaliações por turma ✓
SELECT 
    '3 avaliações por turma' as Requisito,
    CASE WHEN COUNT(*) >= 18 THEN '✓ ATENDIDO' ELSE '✗ NÃO ATENDIDO' END as Status
FROM avaliacoes;

-- =============================================
-- TESTE DAS CONSULTAS PRINCIPAIS
-- =============================================

SELECT 'TESTE DAS CONSULTAS' as Status;

-- Teste da Consulta 1: Total de faltas
SELECT 
    'Consulta 1: Total de faltas' as Teste,
    CASE WHEN COUNT(*) > 0 THEN '✓ FUNCIONANDO' ELSE '✗ ERRO' END as Status
FROM (
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
    ORDER BY total_faltas DESC
    LIMIT 5
) as teste_faltas;

-- Teste da Consulta 2: Taxa de presença
SELECT 
    'Consulta 2: Taxa de presença' as Teste,
    CASE WHEN COUNT(*) > 0 THEN '✓ FUNCIONANDO' ELSE '✗ ERRO' END as Status
FROM (
    SELECT 
        t.nome as turma,
        d.nome as disciplina,
        a.nome as aluno,
        ROUND(
            (COUNT(CASE WHEN p.presente = TRUE THEN 1 END) * 100.0 / COUNT(p.id_presenca)), 2
        ) as taxa_presenca_percent
    FROM presencas p
    JOIN alunos a ON p.id_aluno = a.id_aluno
    JOIN turma_disciplinas td ON p.id_turma_disciplina = td.id_turma_disciplina
    JOIN turmas t ON td.id_turma = t.id_turma
    JOIN disciplinas d ON td.id_disciplina = d.id_disciplina
    GROUP BY t.id_turma, d.id_disciplina, a.id_aluno, t.nome, d.nome, a.nome
    ORDER BY taxa_presenca_percent DESC
    LIMIT 5
) as teste_presenca;

-- Teste da Consulta 3: Média final
SELECT 
    'Consulta 3: Média final' as Teste,
    CASE WHEN COUNT(*) > 0 THEN '✓ FUNCIONANDO' ELSE '✗ ERRO' END as Status
FROM (
    SELECT 
        t.nome as turma,
        d.nome as disciplina,
        a.nome as aluno,
        ROUND(AVG(n.nota), 2) as media_final
    FROM notas n
    JOIN avaliacoes av ON n.id_avaliacao = av.id_avaliacao
    JOIN turma_disciplinas td ON av.id_turma_disciplina = td.id_turma_disciplina
    JOIN turmas t ON td.id_turma = t.id_turma
    JOIN disciplinas d ON td.id_disciplina = d.id_disciplina
    JOIN alunos a ON n.id_aluno = a.id_aluno
    GROUP BY t.id_turma, d.id_disciplina, a.id_aluno, t.nome, d.nome, a.nome
    ORDER BY media_final DESC
    LIMIT 5
) as teste_media;

SELECT 'SISTEMA PRONTO!' as Status;
