-- =============================================
-- TERCEIRA PARTE - PRESENÇAS E NOTAS
-- =============================================

USE escola_db;

-- =============================================
-- 8. PRESENÇAS (10 dias por aluno/disciplina/turma)
-- =============================================

-- Função para gerar presenças aleatórias
-- Vamos criar presenças para 10 dias de aula por disciplina
-- Considerando que alguns alunos faltam ocasionalmente

-- Presenças para 1º Ano A - Matemática I (10 dias)
INSERT INTO presencas (id_aluno, id_turma_disciplina, data_aula, presente) VALUES
-- Aluno 1 (Alice) - 8 presenças, 2 faltas
(1, 1, '2024-02-05', TRUE), (1, 1, '2024-02-12', TRUE), (1, 1, '2024-02-19', FALSE), (1, 1, '2024-02-26', TRUE),
(1, 1, '2024-03-05', TRUE), (1, 1, '2024-03-12', TRUE), (1, 1, '2024-03-19', TRUE), (1, 1, '2024-03-26', FALSE),
(1, 1, '2024-04-02', TRUE), (1, 1, '2024-04-09', TRUE),

-- Aluno 2 (Bruno) - 9 presenças, 1 falta
(2, 1, '2024-02-05', TRUE), (2, 1, '2024-02-12', TRUE), (2, 1, '2024-02-19', TRUE), (2, 1, '2024-02-26', TRUE),
(2, 1, '2024-03-05', TRUE), (2, 1, '2024-03-12', TRUE), (2, 1, '2024-03-19', TRUE), (2, 1, '2024-03-26', TRUE),
(2, 1, '2024-04-02', FALSE), (2, 1, '2024-04-09', TRUE),

-- Aluno 3 (Carla) - 7 presenças, 3 faltas
(3, 1, '2024-02-05', TRUE), (3, 1, '2024-02-12', FALSE), (3, 1, '2024-02-19', TRUE), (3, 1, '2024-02-26', FALSE),
(3, 1, '2024-03-05', TRUE), (3, 1, '2024-03-12', TRUE), (3, 1, '2024-03-19', FALSE), (3, 1, '2024-03-26', TRUE),
(3, 1, '2024-04-02', TRUE), (3, 1, '2024-04-09', TRUE),

-- Aluno 4 (Diego) - 10 presenças, 0 faltas
(4, 1, '2024-02-05', TRUE), (4, 1, '2024-02-12', TRUE), (4, 1, '2024-02-19', TRUE), (4, 1, '2024-02-26', TRUE),
(4, 1, '2024-03-05', TRUE), (4, 1, '2024-03-12', TRUE), (4, 1, '2024-03-19', TRUE), (4, 1, '2024-03-26', TRUE),
(4, 1, '2024-04-02', TRUE), (4, 1, '2024-04-09', TRUE),

-- Aluno 5 (Elena) - 6 presenças, 4 faltas
(5, 1, '2024-02-05', FALSE), (5, 1, '2024-02-12', TRUE), (5, 1, '2024-02-19', FALSE), (5, 1, '2024-02-26', TRUE),
(5, 1, '2024-03-05', FALSE), (5, 1, '2024-03-12', TRUE), (5, 1, '2024-03-19', TRUE), (5, 1, '2024-03-26', FALSE),
(5, 1, '2024-04-02', TRUE), (5, 1, '2024-04-09', TRUE),

-- Aluno 6 (Felipe) - 8 presenças, 2 faltas
(6, 1, '2024-02-05', TRUE), (6, 1, '2024-02-12', TRUE), (6, 1, '2024-02-19', TRUE), (6, 1, '2024-02-26', FALSE),
(6, 1, '2024-03-05', TRUE), (6, 1, '2024-03-12', FALSE), (6, 1, '2024-03-19', TRUE), (6, 1, '2024-03-26', TRUE),
(6, 1, '2024-04-02', TRUE), (6, 1, '2024-04-09', TRUE),

-- Aluno 7 (Gabriela) - 9 presenças, 1 falta
(7, 1, '2024-02-05', TRUE), (7, 1, '2024-02-12', TRUE), (7, 1, '2024-02-19', TRUE), (7, 1, '2024-02-26', TRUE),
(7, 1, '2024-03-05', TRUE), (7, 1, '2024-03-12', TRUE), (7, 1, '2024-03-19', TRUE), (7, 1, '2024-03-26', TRUE),
(7, 1, '2024-04-02', FALSE), (7, 1, '2024-04-09', TRUE),

-- Aluno 8 (Henrique) - 7 presenças, 3 faltas
(8, 1, '2024-02-05', TRUE), (8, 1, '2024-02-12', FALSE), (8, 1, '2024-02-19', TRUE), (8, 1, '2024-02-26', TRUE),
(8, 1, '2024-03-05', FALSE), (8, 1, '2024-03-12', TRUE), (8, 1, '2024-03-19', FALSE), (8, 1, '2024-03-26', TRUE),
(8, 1, '2024-04-02', TRUE), (8, 1, '2024-04-09', TRUE),

-- Aluno 9 (Isabela) - 10 presenças, 0 faltas
(9, 1, '2024-02-05', TRUE), (9, 1, '2024-02-12', TRUE), (9, 1, '2024-02-19', TRUE), (9, 1, '2024-02-26', TRUE),
(9, 1, '2024-03-05', TRUE), (9, 1, '2024-03-12', TRUE), (9, 1, '2024-03-19', TRUE), (9, 1, '2024-03-26', TRUE),
(9, 1, '2024-04-02', TRUE), (9, 1, '2024-04-09', TRUE),

-- Aluno 10 (João Pedro) - 5 presenças, 5 faltas
(10, 1, '2024-02-05', FALSE), (10, 1, '2024-02-12', FALSE), (10, 1, '2024-02-19', TRUE), (10, 1, '2024-02-26', FALSE),
(10, 1, '2024-03-05', TRUE), (10, 1, '2024-03-12', FALSE), (10, 1, '2024-03-19', TRUE), (10, 1, '2024-03-26', FALSE),
(10, 1, '2024-04-02', TRUE), (10, 1, '2024-04-09', FALSE);

-- Presenças para 1º Ano A - Física I (10 dias)
INSERT INTO presencas (id_aluno, id_turma_disciplina, data_aula, presente) VALUES
-- Aluno 1 (Alice) - 8 presenças, 2 faltas
(1, 2, '2024-02-06', TRUE), (1, 2, '2024-02-13', TRUE), (1, 2, '2024-02-20', FALSE), (1, 2, '2024-02-27', TRUE),
(1, 2, '2024-03-06', TRUE), (1, 2, '2024-03-13', TRUE), (1, 2, '2024-03-20', TRUE), (1, 2, '2024-03-27', FALSE),
(1, 2, '2024-04-03', TRUE), (1, 2, '2024-04-10', TRUE),

-- Aluno 2 (Bruno) - 9 presenças, 1 falta
(2, 2, '2024-02-06', TRUE), (2, 2, '2024-02-13', TRUE), (2, 2, '2024-02-20', TRUE), (2, 2, '2024-02-27', TRUE),
(2, 2, '2024-03-06', TRUE), (2, 2, '2024-03-13', TRUE), (2, 2, '2024-03-20', TRUE), (2, 2, '2024-03-27', TRUE),
(2, 2, '2024-04-03', FALSE), (2, 2, '2024-04-10', TRUE),

-- Aluno 3 (Carla) - 7 presenças, 3 faltas
(3, 2, '2024-02-06', TRUE), (3, 2, '2024-02-13', FALSE), (3, 2, '2024-02-20', TRUE), (3, 2, '2024-02-27', FALSE),
(3, 2, '2024-03-06', TRUE), (3, 2, '2024-03-13', TRUE), (3, 2, '2024-03-20', FALSE), (3, 2, '2024-03-27', TRUE),
(3, 2, '2024-04-03', TRUE), (3, 2, '2024-04-10', TRUE),

-- Aluno 4 (Diego) - 10 presenças, 0 faltas
(4, 2, '2024-02-06', TRUE), (4, 2, '2024-02-13', TRUE), (4, 2, '2024-02-20', TRUE), (4, 2, '2024-02-27', TRUE),
(4, 2, '2024-03-06', TRUE), (4, 2, '2024-03-13', TRUE), (4, 2, '2024-03-20', TRUE), (4, 2, '2024-03-27', TRUE),
(4, 2, '2024-04-03', TRUE), (4, 2, '2024-04-10', TRUE),

-- Aluno 5 (Elena) - 6 presenças, 4 faltas
(5, 2, '2024-02-06', FALSE), (5, 2, '2024-02-13', TRUE), (5, 2, '2024-02-20', FALSE), (5, 2, '2024-02-27', TRUE),
(5, 2, '2024-03-06', FALSE), (5, 2, '2024-03-13', TRUE), (5, 2, '2024-03-20', TRUE), (5, 2, '2024-03-27', FALSE),
(5, 2, '2024-04-03', TRUE), (5, 2, '2024-04-10', TRUE),

-- Aluno 6 (Felipe) - 8 presenças, 2 faltas
(6, 2, '2024-02-06', TRUE), (6, 2, '2024-02-13', TRUE), (6, 2, '2024-02-20', TRUE), (6, 2, '2024-02-27', FALSE),
(6, 2, '2024-03-06', TRUE), (6, 2, '2024-03-13', FALSE), (6, 2, '2024-03-20', TRUE), (6, 2, '2024-03-27', TRUE),
(6, 2, '2024-04-03', TRUE), (6, 2, '2024-04-10', TRUE),

-- Aluno 7 (Gabriela) - 9 presenças, 1 falta
(7, 2, '2024-02-06', TRUE), (7, 2, '2024-02-13', TRUE), (7, 2, '2024-02-20', TRUE), (7, 2, '2024-02-27', TRUE),
(7, 2, '2024-03-06', TRUE), (7, 2, '2024-03-13', TRUE), (7, 2, '2024-03-20', TRUE), (7, 2, '2024-03-27', TRUE),
(7, 2, '2024-04-03', FALSE), (7, 2, '2024-04-10', TRUE),

-- Aluno 8 (Henrique) - 7 presenças, 3 faltas
(8, 2, '2024-02-06', TRUE), (8, 2, '2024-02-13', FALSE), (8, 2, '2024-02-20', TRUE), (8, 2, '2024-02-27', TRUE),
(8, 2, '2024-03-06', FALSE), (8, 2, '2024-03-13', TRUE), (8, 2, '2024-03-20', FALSE), (8, 2, '2024-03-27', TRUE),
(8, 2, '2024-04-03', TRUE), (8, 2, '2024-04-10', TRUE),

-- Aluno 9 (Isabela) - 10 presenças, 0 faltas
(9, 2, '2024-02-06', TRUE), (9, 2, '2024-02-13', TRUE), (9, 2, '2024-02-20', TRUE), (9, 2, '2024-02-27', TRUE),
(9, 2, '2024-03-06', TRUE), (9, 2, '2024-03-13', TRUE), (9, 2, '2024-03-20', TRUE), (9, 2, '2024-03-27', TRUE),
(9, 2, '2024-04-03', TRUE), (9, 2, '2024-04-10', TRUE),

-- Aluno 10 (João Pedro) - 5 presenças, 5 faltas
(10, 2, '2024-02-06', FALSE), (10, 2, '2024-02-13', FALSE), (10, 2, '2024-02-20', TRUE), (10, 2, '2024-02-27', FALSE),
(10, 2, '2024-03-06', TRUE), (10, 2, '2024-03-13', FALSE), (10, 2, '2024-03-20', TRUE), (10, 2, '2024-03-27', FALSE),
(10, 2, '2024-04-03', TRUE), (10, 2, '2024-04-10', FALSE);

-- =============================================
-- 9. NOTAS (para cada aluno/disciplina/turma)
-- =============================================

-- Notas para 1º Ano A - Matemática I
INSERT INTO notas (id_aluno, id_avaliacao, nota) VALUES
-- Aluno 1 (Alice) - Avaliações 1, 2, 3
(1, 1, 8.5), (1, 2, 7.0), (1, 3, 8.0),
-- Aluno 2 (Bruno) - Avaliações 1, 2, 3
(2, 1, 9.0), (2, 2, 8.5), (2, 3, 9.5),
-- Aluno 3 (Carla) - Avaliações 1, 2, 3
(3, 1, 6.5), (3, 2, 7.5), (3, 3, 7.0),
-- Aluno 4 (Diego) - Avaliações 1, 2, 3
(4, 1, 9.5), (4, 2, 9.0), (4, 3, 10.0),
-- Aluno 5 (Elena) - Avaliações 1, 2, 3
(5, 1, 5.0), (5, 2, 6.0), (5, 3, 5.5),
-- Aluno 6 (Felipe) - Avaliações 1, 2, 3
(6, 1, 8.0), (6, 2, 7.5), (6, 3, 8.5),
-- Aluno 7 (Gabriela) - Avaliações 1, 2, 3
(7, 1, 9.0), (7, 2, 8.0), (7, 3, 9.0),
-- Aluno 8 (Henrique) - Avaliações 1, 2, 3
(8, 1, 7.0), (8, 2, 6.5), (8, 3, 7.5),
-- Aluno 9 (Isabela) - Avaliações 1, 2, 3
(9, 1, 10.0), (9, 2, 9.5), (9, 3, 10.0),
-- Aluno 10 (João Pedro) - Avaliações 1, 2, 3
(10, 1, 4.0), (10, 2, 5.0), (10, 3, 4.5);

-- Notas para 1º Ano A - Física I
INSERT INTO notas (id_aluno, id_avaliacao, nota) VALUES
-- Aluno 1 (Alice) - Avaliações 4, 5, 6
(1, 4, 7.5), (1, 5, 8.0), (1, 6, 7.0),
-- Aluno 2 (Bruno) - Avaliações 4, 5, 6
(2, 4, 8.5), (2, 5, 9.0), (2, 6, 8.5),
-- Aluno 3 (Carla) - Avaliações 4, 5, 6
(3, 4, 6.0), (3, 5, 7.0), (3, 6, 6.5),
-- Aluno 4 (Diego) - Avaliações 4, 5, 6
(4, 4, 9.0), (4, 5, 9.5), (4, 6, 10.0),
-- Aluno 5 (Elena) - Avaliações 4, 5, 6
(5, 4, 4.5), (5, 5, 5.5), (5, 6, 5.0),
-- Aluno 6 (Felipe) - Avaliações 4, 5, 6
(6, 4, 7.0), (6, 5, 8.0), (6, 6, 7.5),
-- Aluno 7 (Gabriela) - Avaliações 4, 5, 6
(7, 4, 8.0), (7, 5, 8.5), (7, 6, 8.0),
-- Aluno 8 (Henrique) - Avaliações 4, 5, 6
(8, 4, 6.5), (8, 5, 7.0), (8, 6, 6.0),
-- Aluno 9 (Isabela) - Avaliações 4, 5, 6
(9, 4, 9.5), (9, 5, 10.0), (9, 6, 9.5),
-- Aluno 10 (João Pedro) - Avaliações 4, 5, 6
(10, 4, 3.5), (10, 5, 4.0), (10, 6, 3.0);

-- Notas para 1º Ano A - Química I
INSERT INTO notas (id_aluno, id_avaliacao, nota) VALUES
-- Aluno 1 (Alice) - Avaliações 7, 8, 9
(1, 7, 8.0), (1, 8, 7.5), (1, 9, 8.5),
-- Aluno 2 (Bruno) - Avaliações 7, 8, 9
(2, 7, 8.5), (2, 8, 9.0), (2, 9, 8.0),
-- Aluno 3 (Carla) - Avaliações 7, 8, 9
(3, 7, 6.5), (3, 8, 7.0), (3, 9, 6.0),
-- Aluno 4 (Diego) - Avaliações 7, 8, 9
(4, 7, 9.0), (4, 8, 9.5), (4, 9, 10.0),
-- Aluno 5 (Elena) - Avaliações 7, 8, 9
(5, 7, 5.0), (5, 8, 5.5), (5, 9, 4.5),
-- Aluno 6 (Felipe) - Avaliações 7, 8, 9
(6, 7, 7.5), (6, 8, 8.0), (6, 9, 7.0),
-- Aluno 7 (Gabriela) - Avaliações 7, 8, 9
(7, 7, 8.5), (7, 8, 8.0), (7, 9, 8.5),
-- Aluno 8 (Henrique) - Avaliações 7, 8, 9
(8, 7, 6.0), (8, 8, 6.5), (8, 9, 7.0),
-- Aluno 9 (Isabela) - Avaliações 7, 8, 9
(9, 7, 9.5), (9, 8, 10.0), (9, 9, 9.0),
-- Aluno 10 (João Pedro) - Avaliações 7, 8, 9
(10, 7, 4.0), (10, 8, 3.5), (10, 9, 4.0);

-- Notas para 1º Ano A - Biologia I
INSERT INTO notas (id_aluno, id_avaliacao, nota) VALUES
-- Aluno 1 (Alice) - Avaliações 10, 11, 12
(1, 10, 7.0), (1, 11, 8.0), (1, 12, 7.5),
-- Aluno 2 (Bruno) - Avaliações 10, 11, 12
(2, 10, 8.0), (2, 11, 8.5), (2, 12, 9.0),
-- Aluno 3 (Carla) - Avaliações 10, 11, 12
(3, 10, 6.0), (3, 11, 7.0), (3, 12, 6.5),
-- Aluno 4 (Diego) - Avaliações 10, 11, 12
(4, 10, 9.0), (4, 11, 9.5), (4, 12, 10.0),
-- Aluno 5 (Elena) - Avaliações 10, 11, 12
(5, 10, 4.5), (5, 11, 5.0), (5, 12, 4.0),
-- Aluno 6 (Felipe) - Avaliações 10, 11, 12
(6, 10, 7.5), (6, 11, 8.0), (6, 12, 7.0),
-- Aluno 7 (Gabriela) - Avaliações 10, 11, 12
(7, 10, 8.0), (7, 11, 8.5), (7, 12, 8.0),
-- Aluno 8 (Henrique) - Avaliações 10, 11, 12
(8, 10, 6.5), (8, 11, 7.0), (8, 12, 6.0),
-- Aluno 9 (Isabela) - Avaliações 10, 11, 12
(9, 10, 9.5), (9, 11, 10.0), (9, 12, 9.0),
-- Aluno 10 (João Pedro) - Avaliações 10, 11, 12
(10, 10, 3.5), (10, 11, 4.0), (10, 12, 3.0);

-- Notas para 1º Ano A - Português I
INSERT INTO notas (id_aluno, id_avaliacao, nota) VALUES
-- Aluno 1 (Alice) - Avaliações 13, 14, 15
(1, 13, 8.5), (1, 14, 8.0), (1, 15, 8.5),
-- Aluno 2 (Bruno) - Avaliações 13, 14, 15
(2, 13, 9.0), (2, 14, 8.5), (2, 15, 9.0),
-- Aluno 3 (Carla) - Avaliações 13, 14, 15
(3, 13, 7.0), (3, 14, 7.5), (3, 15, 7.0),
-- Aluno 4 (Diego) - Avaliações 13, 14, 15
(4, 13, 9.5), (4, 14, 9.0), (4, 15, 10.0),
-- Aluno 5 (Elena) - Avaliações 13, 14, 15
(5, 13, 5.5), (5, 14, 6.0), (5, 15, 5.0),
-- Aluno 6 (Felipe) - Avaliações 13, 14, 15
(6, 13, 8.0), (6, 14, 7.5), (6, 15, 8.0),
-- Aluno 7 (Gabriela) - Avaliações 13, 14, 15
(7, 13, 8.5), (7, 14, 8.0), (7, 15, 8.5),
-- Aluno 8 (Henrique) - Avaliações 13, 14, 15
(8, 13, 6.5), (8, 14, 7.0), (8, 15, 6.0),
-- Aluno 9 (Isabela) - Avaliações 13, 14, 15
(9, 13, 10.0), (9, 14, 9.5), (9, 15, 10.0),
-- Aluno 10 (João Pedro) - Avaliações 13, 14, 15
(10, 13, 4.0), (10, 14, 4.5), (10, 15, 3.5);

-- =============================================
-- NOTAS PARA OUTRAS TURMAS (amostra)
-- =============================================

-- Notas para 1º Ano B - Matemática I (Avaliações 16, 17, 18)
INSERT INTO notas (id_aluno, id_avaliacao, nota) VALUES
-- Alunos 11-20
(11, 16, 8.0), (11, 17, 7.5), (11, 18, 8.5),
(12, 16, 9.5), (12, 17, 9.0), (12, 18, 9.5),
(13, 16, 6.0), (13, 17, 7.0), (13, 18, 6.5),
(14, 16, 8.5), (14, 17, 8.0), (14, 18, 8.5),
(15, 16, 5.5), (15, 17, 6.0), (15, 18, 5.0),
(16, 16, 7.5), (16, 17, 8.0), (16, 18, 7.0),
(17, 16, 9.0), (17, 17, 8.5), (17, 18, 9.0),
(18, 16, 6.5), (18, 17, 7.0), (18, 18, 6.0),
(19, 16, 10.0), (19, 17, 9.5), (19, 18, 10.0),
(20, 16, 4.5), (20, 17, 5.0), (20, 18, 4.0);

-- Notas para 2º Ano A - Matemática II (Avaliações 21, 22, 23)
INSERT INTO notas (id_aluno, id_avaliacao, nota) VALUES
-- Alunos 21-30
(21, 21, 7.5), (21, 22, 8.0), (21, 23, 7.0),
(22, 21, 8.5), (22, 22, 9.0), (22, 23, 8.5),
(23, 21, 6.5), (23, 22, 7.0), (23, 23, 6.0),
(24, 21, 9.0), (24, 22, 9.5), (24, 23, 10.0),
(25, 21, 5.0), (25, 22, 5.5), (25, 23, 4.5),
(26, 21, 8.0), (26, 22, 7.5), (26, 23, 8.0),
(27, 21, 8.5), (27, 22, 8.0), (27, 23, 8.5),
(28, 21, 6.0), (28, 22, 6.5), (28, 23, 7.0),
(29, 21, 9.5), (29, 22, 10.0), (29, 23, 9.0),
(30, 21, 4.0), (30, 22, 4.5), (30, 23, 3.5);

-- Notas para 3º Ano A - Matemática III (Avaliações 31, 32, 33)
INSERT INTO notas (id_aluno, id_avaliacao, nota) VALUES
-- Alunos 41-50
(41, 31, 8.0), (41, 32, 7.5), (41, 33, 8.5),
(42, 31, 9.0), (42, 32, 8.5), (42, 33, 9.5),
(43, 31, 6.5), (43, 32, 7.0), (43, 33, 6.0),
(44, 31, 9.5), (44, 32, 9.0), (44, 33, 10.0),
(45, 31, 5.5), (45, 32, 6.0), (45, 33, 5.0),
(46, 31, 7.5), (46, 32, 8.0), (46, 33, 7.0),
(47, 31, 8.5), (47, 32, 8.0), (47, 33, 8.5),
(48, 31, 6.0), (48, 32, 6.5), (48, 33, 7.0),
(49, 31, 10.0), (49, 32, 9.5), (49, 33, 10.0),
(50, 31, 4.5), (50, 32, 5.0), (50, 33, 4.0);

-- =============================================
-- FINALIZAÇÃO
-- =============================================

-- Verificar dados inseridos
SELECT 'Dados inseridos com sucesso!' as Status;
SELECT COUNT(*) as Total_Professores FROM professores;
SELECT COUNT(*) as Total_Alunos FROM alunos;
SELECT COUNT(*) as Total_Turmas FROM turmas;
SELECT COUNT(*) as Total_Disciplinas FROM disciplinas;
SELECT COUNT(*) as Total_Matriculas FROM matriculas;
SELECT COUNT(*) as Total_Turma_Disciplinas FROM turma_disciplinas;
SELECT COUNT(*) as Total_Avaliacoes FROM avaliacoes;
SELECT COUNT(*) as Total_Presencas FROM presencas;
SELECT COUNT(*) as Total_Notas FROM notas;
