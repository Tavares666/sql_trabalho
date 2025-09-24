-- =============================================
-- DADOS COMPLETOS PARA TODAS AS TURMAS
-- =============================================

USE escola_db;

-- =============================================
-- PRESENÇAS E NOTAS PARA TODAS AS TURMAS
-- =============================================

-- Presenças para 1º Ano B - Matemática (alunos 11-20) - 10 dias
INSERT INTO presencas (id_aluno, id_turma_disciplina, data_aula, presente) VALUES
-- Karla (11) - 8 presenças, 2 faltas
(11, 5, '2024-02-05', TRUE), (11, 5, '2024-02-12', TRUE), (11, 5, '2024-02-19', FALSE), (11, 5, '2024-02-26', TRUE),
(11, 5, '2024-03-05', TRUE), (11, 5, '2024-03-12', TRUE), (11, 5, '2024-03-19', FALSE), (11, 5, '2024-03-26', TRUE),
(11, 5, '2024-04-02', TRUE), (11, 5, '2024-04-09', TRUE),

-- Lucas (12) - 9 presenças, 1 falta
(12, 5, '2024-02-05', TRUE), (12, 5, '2024-02-12', TRUE), (12, 5, '2024-02-19', TRUE), (12, 5, '2024-02-26', TRUE),
(12, 5, '2024-03-05', TRUE), (12, 5, '2024-03-12', TRUE), (12, 5, '2024-03-19', TRUE), (12, 5, '2024-03-26', TRUE),
(12, 5, '2024-04-02', FALSE), (12, 5, '2024-04-09', TRUE),

-- Mariana (13) - 7 presenças, 3 faltas
(13, 5, '2024-02-05', TRUE), (13, 5, '2024-02-12', FALSE), (13, 5, '2024-02-19', TRUE), (13, 5, '2024-02-26', FALSE),
(13, 5, '2024-03-05', TRUE), (13, 5, '2024-03-12', TRUE), (13, 5, '2024-03-19', FALSE), (13, 5, '2024-03-26', TRUE),
(13, 5, '2024-04-02', TRUE), (13, 5, '2024-04-09', TRUE),

-- Nicolas (14) - 10 presenças, 0 faltas
(14, 5, '2024-02-05', TRUE), (14, 5, '2024-02-12', TRUE), (14, 5, '2024-02-19', TRUE), (14, 5, '2024-02-26', TRUE),
(14, 5, '2024-03-05', TRUE), (14, 5, '2024-03-12', TRUE), (14, 5, '2024-03-19', TRUE), (14, 5, '2024-03-26', TRUE),
(14, 5, '2024-04-02', TRUE), (14, 5, '2024-04-09', TRUE),

-- Olivia (15) - 6 presenças, 4 faltas
(15, 5, '2024-02-05', FALSE), (15, 5, '2024-02-12', TRUE), (15, 5, '2024-02-19', FALSE), (15, 5, '2024-02-26', TRUE),
(15, 5, '2024-03-05', FALSE), (15, 5, '2024-03-12', TRUE), (15, 5, '2024-03-19', TRUE), (15, 5, '2024-03-26', FALSE),
(15, 5, '2024-04-02', TRUE), (15, 5, '2024-04-09', TRUE),

-- Pedro (16) - 8 presenças, 2 faltas
(16, 5, '2024-02-05', TRUE), (16, 5, '2024-02-12', TRUE), (16, 5, '2024-02-19', TRUE), (16, 5, '2024-02-26', FALSE),
(16, 5, '2024-03-05', TRUE), (16, 5, '2024-03-12', FALSE), (16, 5, '2024-03-19', TRUE), (16, 5, '2024-03-26', TRUE),
(16, 5, '2024-04-02', TRUE), (16, 5, '2024-04-09', TRUE),

-- Quiteria (17) - 9 presenças, 1 falta
(17, 5, '2024-02-05', TRUE), (17, 5, '2024-02-12', TRUE), (17, 5, '2024-02-19', TRUE), (17, 5, '2024-02-26', TRUE),
(17, 5, '2024-03-05', TRUE), (17, 5, '2024-03-12', TRUE), (17, 5, '2024-03-19', TRUE), (17, 5, '2024-03-26', TRUE),
(17, 5, '2024-04-02', FALSE), (17, 5, '2024-04-09', TRUE),

-- Rafael (18) - 7 presenças, 3 faltas
(18, 5, '2024-02-05', TRUE), (18, 5, '2024-02-12', FALSE), (18, 5, '2024-02-19', TRUE), (18, 5, '2024-02-26', TRUE),
(18, 5, '2024-03-05', FALSE), (18, 5, '2024-03-12', TRUE), (18, 5, '2024-03-19', FALSE), (18, 5, '2024-03-26', TRUE),
(18, 5, '2024-04-02', TRUE), (18, 5, '2024-04-09', TRUE),

-- Sofia (19) - 10 presenças, 0 faltas
(19, 5, '2024-02-05', TRUE), (19, 5, '2024-02-12', TRUE), (19, 5, '2024-02-19', TRUE), (19, 5, '2024-02-26', TRUE),
(19, 5, '2024-03-05', TRUE), (19, 5, '2024-03-12', TRUE), (19, 5, '2024-03-19', TRUE), (19, 5, '2024-03-26', TRUE),
(19, 5, '2024-04-02', TRUE), (19, 5, '2024-04-09', TRUE),

-- Thiago (20) - 5 presenças, 5 faltas
(20, 5, '2024-02-05', FALSE), (20, 5, '2024-02-12', FALSE), (20, 5, '2024-02-19', TRUE), (20, 5, '2024-02-26', FALSE),
(20, 5, '2024-03-05', TRUE), (20, 5, '2024-03-12', FALSE), (20, 5, '2024-03-19', TRUE), (20, 5, '2024-03-26', FALSE),
(20, 5, '2024-04-02', TRUE), (20, 5, '2024-04-09', FALSE);

-- Notas para 1º Ano B - Matemática (3 avaliações)
INSERT INTO notas (id_aluno, id_avaliacao, nota) VALUES
-- Karla (11)
(11, 13, 8.0), (11, 17, 7.5), (11, 21, 8.5),
-- Lucas (12)
(12, 13, 8.5), (12, 17, 8.0), (12, 21, 9.0),
-- Mariana (13)
(13, 13, 6.0), (13, 17, 7.0), (13, 21, 6.5),
-- Nicolas (14)
(14, 13, 9.0), (14, 17, 9.5), (14, 21, 10.0),
-- Olivia (15)
(15, 13, 5.5), (15, 17, 6.0), (15, 21, 5.0),
-- Pedro (16)
(16, 13, 7.5), (16, 17, 8.0), (16, 21, 7.0),
-- Quiteria (17)
(17, 13, 8.5), (17, 17, 8.0), (17, 21, 9.0),
-- Rafael (18)
(18, 13, 6.5), (18, 17, 7.0), (18, 21, 6.0),
-- Sofia (19)
(19, 13, 9.5), (19, 17, 10.0), (19, 21, 9.5),
-- Thiago (20)
(20, 13, 4.5), (20, 17, 5.0), (20, 21, 4.0);

-- =============================================
-- DADOS PARA 2º ANO A (alunos 21-30)
-- =============================================

-- Presenças para 2º Ano A - História (alunos 21-30) - 10 dias
INSERT INTO presencas (id_aluno, id_turma_disciplina, data_aula, presente) VALUES
-- Ursula (21) - 8 presenças, 2 faltas
(21, 9, '2024-02-05', TRUE), (21, 9, '2024-02-12', TRUE), (21, 9, '2024-02-19', FALSE), (21, 9, '2024-02-26', TRUE),
(21, 9, '2024-03-05', TRUE), (21, 9, '2024-03-12', TRUE), (21, 9, '2024-03-19', FALSE), (21, 9, '2024-03-26', TRUE),
(21, 9, '2024-04-02', TRUE), (21, 9, '2024-04-09', TRUE),

-- Vitor (22) - 9 presenças, 1 falta
(22, 9, '2024-02-05', TRUE), (22, 9, '2024-02-12', TRUE), (22, 9, '2024-02-19', TRUE), (22, 9, '2024-02-26', TRUE),
(22, 9, '2024-03-05', TRUE), (22, 9, '2024-03-12', TRUE), (22, 9, '2024-03-19', TRUE), (22, 9, '2024-03-26', TRUE),
(22, 9, '2024-04-02', FALSE), (22, 9, '2024-04-09', TRUE),

-- Wanda (23) - 7 presenças, 3 faltas
(23, 9, '2024-02-05', TRUE), (23, 9, '2024-02-12', FALSE), (23, 9, '2024-02-19', TRUE), (23, 9, '2024-02-26', FALSE),
(23, 9, '2024-03-05', TRUE), (23, 9, '2024-03-12', TRUE), (23, 9, '2024-03-19', FALSE), (23, 9, '2024-03-26', TRUE),
(23, 9, '2024-04-02', TRUE), (23, 9, '2024-04-09', TRUE),

-- Xavier (24) - 10 presenças, 0 faltas
(24, 9, '2024-02-05', TRUE), (24, 9, '2024-02-12', TRUE), (24, 9, '2024-02-19', TRUE), (24, 9, '2024-02-26', TRUE),
(24, 9, '2024-03-05', TRUE), (24, 9, '2024-03-12', TRUE), (24, 9, '2024-03-19', TRUE), (24, 9, '2024-03-26', TRUE),
(24, 9, '2024-04-02', TRUE), (24, 9, '2024-04-09', TRUE),

-- Yasmin (25) - 6 presenças, 4 faltas
(25, 9, '2024-02-05', FALSE), (25, 9, '2024-02-12', TRUE), (25, 9, '2024-02-19', FALSE), (25, 9, '2024-02-26', TRUE),
(25, 9, '2024-03-05', FALSE), (25, 9, '2024-03-12', TRUE), (25, 9, '2024-03-19', TRUE), (25, 9, '2024-03-26', FALSE),
(25, 9, '2024-04-02', TRUE), (25, 9, '2024-04-09', TRUE),

-- Zeca (26) - 8 presenças, 2 faltas
(26, 9, '2024-02-05', TRUE), (26, 9, '2024-02-12', TRUE), (26, 9, '2024-02-19', TRUE), (26, 9, '2024-02-26', FALSE),
(26, 9, '2024-03-05', TRUE), (26, 9, '2024-03-12', FALSE), (26, 9, '2024-03-19', TRUE), (26, 9, '2024-03-26', TRUE),
(26, 9, '2024-04-02', TRUE), (26, 9, '2024-04-09', TRUE),

-- Ana Clara (27) - 9 presenças, 1 falta
(27, 9, '2024-02-05', TRUE), (27, 9, '2024-02-12', TRUE), (27, 9, '2024-02-19', TRUE), (27, 9, '2024-02-26', TRUE),
(27, 9, '2024-03-05', TRUE), (27, 9, '2024-03-12', TRUE), (27, 9, '2024-03-19', TRUE), (27, 9, '2024-03-26', TRUE),
(27, 9, '2024-04-02', FALSE), (27, 9, '2024-04-09', TRUE),

-- Bruno Henrique (28) - 7 presenças, 3 faltas
(28, 9, '2024-02-05', TRUE), (28, 9, '2024-02-12', FALSE), (28, 9, '2024-02-19', TRUE), (28, 9, '2024-02-26', TRUE),
(28, 9, '2024-03-05', FALSE), (28, 9, '2024-03-12', TRUE), (28, 9, '2024-03-19', FALSE), (28, 9, '2024-03-26', TRUE),
(28, 9, '2024-04-02', TRUE), (28, 9, '2024-04-09', TRUE),

-- Carla Eduarda (29) - 10 presenças, 0 faltas
(29, 9, '2024-02-05', TRUE), (29, 9, '2024-02-12', TRUE), (29, 9, '2024-02-19', TRUE), (29, 9, '2024-02-26', TRUE),
(29, 9, '2024-03-05', TRUE), (29, 9, '2024-03-12', TRUE), (29, 9, '2024-03-19', TRUE), (29, 9, '2024-03-26', TRUE),
(29, 9, '2024-04-02', TRUE), (29, 9, '2024-04-09', TRUE),

-- Diego Henrique (30) - 5 presenças, 5 faltas
(30, 9, '2024-02-05', FALSE), (30, 9, '2024-02-12', FALSE), (30, 9, '2024-02-19', TRUE), (30, 9, '2024-02-26', FALSE),
(30, 9, '2024-03-05', TRUE), (30, 9, '2024-03-12', FALSE), (30, 9, '2024-03-19', TRUE), (30, 9, '2024-03-26', FALSE),
(30, 9, '2024-04-02', TRUE), (30, 9, '2024-04-09', FALSE);

-- Notas para 2º Ano A - História (3 avaliações)
INSERT INTO notas (id_aluno, id_avaliacao, nota) VALUES
-- Ursula (21)
(21, 25, 8.0), (21, 29, 7.5), (21, 33, 8.5),
-- Vitor (22)
(22, 25, 8.5), (22, 29, 8.0), (22, 33, 9.0),
-- Wanda (23)
(23, 25, 6.0), (23, 29, 7.0), (23, 33, 6.5),
-- Xavier (24)
(24, 25, 9.0), (24, 29, 9.5), (24, 33, 10.0),
-- Yasmin (25)
(25, 25, 5.5), (25, 29, 6.0), (25, 33, 5.0),
-- Zeca (26)
(26, 25, 7.5), (26, 29, 8.0), (26, 33, 7.0),
-- Ana Clara (27)
(27, 25, 8.5), (27, 29, 8.0), (27, 33, 9.0),
-- Bruno Henrique (28)
(28, 25, 6.5), (28, 29, 7.0), (28, 33, 6.0),
-- Carla Eduarda (29)
(29, 25, 9.5), (29, 29, 10.0), (29, 33, 9.5),
-- Diego Henrique (30)
(30, 25, 4.5), (30, 29, 5.0), (30, 33, 4.0);

-- =============================================
-- VERIFICAÇÃO FINAL
-- =============================================

SELECT 'Dados para todas as turmas inseridos com sucesso!' as Status;
SELECT COUNT(*) as Total_Presencas FROM presencas;
SELECT COUNT(*) as Total_Notas FROM notas;

-- Verificar presenças por turma
SELECT 
    t.nome as turma,
    COUNT(DISTINCT p.id_aluno) as alunos_com_presenca,
    COUNT(p.id_presenca) as total_presencas
FROM turmas t
LEFT JOIN turma_disciplinas td ON t.id_turma = td.id_turma
LEFT JOIN presencas p ON td.id_turma_disciplina = p.id_turma_disciplina
GROUP BY t.id_turma, t.nome
ORDER BY t.nome;

-- Verificar notas por turma
SELECT 
    t.nome as turma,
    COUNT(DISTINCT n.id_aluno) as alunos_com_nota,
    COUNT(n.id_nota) as total_notas
FROM turmas t
LEFT JOIN turma_disciplinas td ON t.id_turma = td.id_turma
LEFT JOIN avaliacoes av ON td.id_turma_disciplina = av.id_turma_disciplina
LEFT JOIN notas n ON av.id_avaliacao = n.id_avaliacao
GROUP BY t.id_turma, t.nome
ORDER BY t.nome;
