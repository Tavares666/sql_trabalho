-- =============================================
-- SISTEMA ESCOLA - DADOS COMPLETOS
-- =============================================

USE escola_db;

-- =============================================
-- 1. INSERIR PROFESSORES
-- =============================================

INSERT INTO professores (nome, especialidade) VALUES
('Ana Silva', 'Matemática'),
('Carlos Lima', 'Física'),
('Maria Costa', 'Química'),
('João Oliveira', 'Biologia'),
('Patricia Mendes', 'História'),
('Roberto Alves', 'Geografia'),
('Lucia Souza', 'Português'),
('Fernando Rodrigues', 'Inglês');

-- =============================================
-- 2. INSERIR DISCIPLINAS
-- =============================================

INSERT INTO disciplinas (nome, codigo) VALUES
('Matemática', 'MAT001'),
('Física', 'FIS001'),
('Química', 'QUI001'),
('Biologia', 'BIO001'),
('História', 'HIS001'),
('Geografia', 'GEO001'),
('Português', 'POR001'),
('Inglês', 'ING001');

-- =============================================
-- 3. INSERIR TURMAS (6 turmas)
-- =============================================

INSERT INTO turmas (nome, ano_letivo, semestre, turno) VALUES
('1º Ano A', 2024, 1, 'Matutino'),
('1º Ano B', 2024, 1, 'Vespertino'),
('2º Ano A', 2024, 1, 'Matutino'),
('2º Ano B', 2024, 1, 'Vespertino'),
('3º Ano A', 2024, 1, 'Matutino'),
('3º Ano B', 2024, 1, 'Vespertino');

-- =============================================
-- 4. INSERIR ALUNOS (60 alunos - 10 por turma)
-- =============================================

-- Alunos para 1º Ano A
INSERT INTO alunos (nome, cpf) VALUES
('Alice Santos', '111.111.111-01'), ('Bruno Oliveira', '111.111.111-02'), ('Carla Mendes', '111.111.111-03'),
('Diego Alves', '111.111.111-04'), ('Elena Rodrigues', '111.111.111-05'), ('Felipe Barbosa', '111.111.111-06'),
('Gabriela Martins', '111.111.111-07'), ('Henrique Costa', '111.111.111-08'), ('Isabela Souza', '111.111.111-09'),
('João Pedro Lima', '111.111.111-10');

-- Alunos para 1º Ano B
INSERT INTO alunos (nome, cpf) VALUES
('Karla Silva', '111.111.111-11'), ('Lucas Oliveira', '111.111.111-12'), ('Mariana Lima', '111.111.111-13'),
('Nicolas Souza', '111.111.111-14'), ('Olivia Rodrigues', '111.111.111-15'), ('Pedro Santos', '111.111.111-16'),
('Quiteria Lima', '111.111.111-17'), ('Rafael Oliveira', '111.111.111-18'), ('Sofia Costa', '111.111.111-19'),
('Thiago Souza', '111.111.111-20');

-- Alunos para 2º Ano A
INSERT INTO alunos (nome, cpf) VALUES
('Ursula Martins', '111.111.111-21'), ('Vitor Santos', '111.111.111-22'), ('Wanda Lima', '111.111.111-23'),
('Xavier Souza', '111.111.111-24'), ('Yasmin Rodrigues', '111.111.111-25'), ('Zeca Barbosa', '111.111.111-26'),
('Ana Clara Martins', '111.111.111-27'), ('Bruno Henrique Lima', '111.111.111-28'), ('Carla Eduarda Souza', '111.111.111-29'),
('Diego Henrique Rodrigues', '111.111.111-30');

-- Alunos para 2º Ano B
INSERT INTO alunos (nome, cpf) VALUES
('Elena Beatriz Alves', '111.111.111-31'), ('Felipe Augusto Mendes', '111.111.111-32'), ('Gabriela Fernanda Santos', '111.111.111-33'),
('Henrique Gabriel Costa', '111.111.111-34'), ('Isabela Cristina Oliveira', '111.111.111-35'), ('João Vitor Silva', '111.111.111-36'),
('Karla Beatriz Lima', '111.111.111-37'), ('Lucas Gabriel Souza', '111.111.111-38'), ('Mariana Eduarda Rodrigues', '111.111.111-39'),
('Nicolas Augusto Barbosa', '111.111.111-40');

-- Alunos para 3º Ano A
INSERT INTO alunos (nome, cpf) VALUES
('Olivia Fernanda Martins', '111.111.111-41'), ('Pedro Henrique Santos', '111.111.111-42'), ('Quiteria Beatriz Costa', '111.111.111-43'),
('Rafael Gabriel Oliveira', '111.111.111-44'), ('Sofia Eduarda Lima', '111.111.111-45'), ('Thiago Augusto Souza', '111.111.111-46'),
('Ursula Cristina Rodrigues', '111.111.111-47'), ('Vitor Gabriel Barbosa', '111.111.111-48'), ('Wanda Beatriz Martins', '111.111.111-49'),
('Xavier Henrique Santos', '111.111.111-50');

-- Alunos para 3º Ano B
INSERT INTO alunos (nome, cpf) VALUES
('Yasmin Eduarda Lima', '111.111.111-51'), ('Zeca Gabriel Souza', '111.111.111-52'), ('Ana Clara Beatriz Rodrigues', '111.111.111-53'),
('Bruno Henrique Barbosa', '111.111.111-54'), ('Carla Eduarda Martins', '111.111.111-55'), ('Diego Augusto Santos', '111.111.111-56'),
('Elena Fernanda Lima', '111.111.111-57'), ('Felipe Gabriel Souza', '111.111.111-58'), ('Gabriela Beatriz Rodrigues', '111.111.111-59'),
('Henrique Augusto Barbosa', '111.111.111-60');

-- =============================================
-- 5. MATRICULAR ALUNOS NAS TURMAS
-- =============================================

-- Matrículas 1º Ano A (alunos 1-10)
INSERT INTO matriculas (id_aluno, id_turma, data_matricula) VALUES
(1, 1, '2024-02-01'), (2, 1, '2024-02-01'), (3, 1, '2024-02-01'), (4, 1, '2024-02-01'), (5, 1, '2024-02-01'),
(6, 1, '2024-02-01'), (7, 1, '2024-02-01'), (8, 1, '2024-02-01'), (9, 1, '2024-02-01'), (10, 1, '2024-02-01');

-- Matrículas 1º Ano B (alunos 11-20)
INSERT INTO matriculas (id_aluno, id_turma, data_matricula) VALUES
(11, 2, '2024-02-01'), (12, 2, '2024-02-01'), (13, 2, '2024-02-01'), (14, 2, '2024-02-01'), (15, 2, '2024-02-01'),
(16, 2, '2024-02-01'), (17, 2, '2024-02-01'), (18, 2, '2024-02-01'), (19, 2, '2024-02-01'), (20, 2, '2024-02-01');

-- Matrículas 2º Ano A (alunos 21-30)
INSERT INTO matriculas (id_aluno, id_turma, data_matricula) VALUES
(21, 3, '2024-02-01'), (22, 3, '2024-02-01'), (23, 3, '2024-02-01'), (24, 3, '2024-02-01'), (25, 3, '2024-02-01'),
(26, 3, '2024-02-01'), (27, 3, '2024-02-01'), (28, 3, '2024-02-01'), (29, 3, '2024-02-01'), (30, 3, '2024-02-01');

-- Matrículas 2º Ano B (alunos 31-40)
INSERT INTO matriculas (id_aluno, id_turma, data_matricula) VALUES
(31, 4, '2024-02-01'), (32, 4, '2024-02-01'), (33, 4, '2024-02-01'), (34, 4, '2024-02-01'), (35, 4, '2024-02-01'),
(36, 4, '2024-02-01'), (37, 4, '2024-02-01'), (38, 4, '2024-02-01'), (39, 4, '2024-02-01'), (40, 4, '2024-02-01');

-- Matrículas 3º Ano A (alunos 41-50)
INSERT INTO matriculas (id_aluno, id_turma, data_matricula) VALUES
(41, 5, '2024-02-01'), (42, 5, '2024-02-01'), (43, 5, '2024-02-01'), (44, 5, '2024-02-01'), (45, 5, '2024-02-01'),
(46, 5, '2024-02-01'), (47, 5, '2024-02-01'), (48, 5, '2024-02-01'), (49, 5, '2024-02-01'), (50, 5, '2024-02-01');

-- Matrículas 3º Ano B (alunos 51-60)
INSERT INTO matriculas (id_aluno, id_turma, data_matricula) VALUES
(51, 6, '2024-02-01'), (52, 6, '2024-02-01'), (53, 6, '2024-02-01'), (54, 6, '2024-02-01'), (55, 6, '2024-02-01'),
(56, 6, '2024-02-01'), (57, 6, '2024-02-01'), (58, 6, '2024-02-01'), (59, 6, '2024-02-01'), (60, 6, '2024-02-01');

-- =============================================
-- 6. ASSOCIAR DISCIPLINAS COM TURMAS E PROFESSORES
-- =============================================

-- Disciplinas para 1º Ano A
INSERT INTO turma_disciplinas (id_turma, id_disciplina, id_professor) VALUES
(1, 1, 1), (1, 2, 2), (1, 3, 3), (1, 4, 4);

-- Disciplinas para 1º Ano B
INSERT INTO turma_disciplinas (id_turma, id_disciplina, id_professor) VALUES
(2, 1, 1), (2, 2, 2), (2, 3, 3), (2, 4, 4);

-- Disciplinas para 2º Ano A
INSERT INTO turma_disciplinas (id_turma, id_disciplina, id_professor) VALUES
(3, 5, 5), (3, 6, 6), (3, 7, 7), (3, 8, 8);

-- Disciplinas para 2º Ano B
INSERT INTO turma_disciplinas (id_turma, id_disciplina, id_professor) VALUES
(4, 5, 5), (4, 6, 6), (4, 7, 7), (4, 8, 8);

-- Disciplinas para 3º Ano A
INSERT INTO turma_disciplinas (id_turma, id_disciplina, id_professor) VALUES
(5, 1, 1), (5, 2, 2), (5, 3, 3), (5, 4, 4);

-- Disciplinas para 3º Ano B
INSERT INTO turma_disciplinas (id_turma, id_disciplina, id_professor) VALUES
(6, 5, 5), (6, 6, 6), (6, 7, 7), (6, 8, 8);

-- =============================================
-- 7. CRIAR AVALIAÇÕES (3 por turma)
-- =============================================

-- Avaliações para 1º Ano A
INSERT INTO avaliacoes (id_turma_disciplina, nome, data_avaliacao) VALUES
(1, 'Avaliação 1 - Matemática', '2024-03-15'), (2, 'Avaliação 1 - Física', '2024-03-20'),
(3, 'Avaliação 1 - Química', '2024-03-25'), (4, 'Avaliação 1 - Biologia', '2024-03-30'),
(1, 'Avaliação 2 - Matemática', '2024-04-20'), (2, 'Avaliação 2 - Física', '2024-04-25'),
(3, 'Avaliação 2 - Química', '2024-04-30'), (4, 'Avaliação 2 - Biologia', '2024-05-05'),
(1, 'Avaliação 3 - Matemática', '2024-05-20'), (2, 'Avaliação 3 - Física', '2024-05-25'),
(3, 'Avaliação 3 - Química', '2024-05-30'), (4, 'Avaliação 3 - Biologia', '2024-06-05');

-- Avaliações para 1º Ano B
INSERT INTO avaliacoes (id_turma_disciplina, nome, data_avaliacao) VALUES
(5, 'Avaliação 1 - Matemática', '2024-03-15'), (6, 'Avaliação 1 - Física', '2024-03-20'),
(7, 'Avaliação 1 - Química', '2024-03-25'), (8, 'Avaliação 1 - Biologia', '2024-03-30'),
(5, 'Avaliação 2 - Matemática', '2024-04-20'), (6, 'Avaliação 2 - Física', '2024-04-25'),
(7, 'Avaliação 2 - Química', '2024-04-30'), (8, 'Avaliação 2 - Biologia', '2024-05-05'),
(5, 'Avaliação 3 - Matemática', '2024-05-20'), (6, 'Avaliação 3 - Física', '2024-05-25'),
(7, 'Avaliação 3 - Química', '2024-05-30'), (8, 'Avaliação 3 - Biologia', '2024-06-05');

-- Avaliações para 2º Ano A
INSERT INTO avaliacoes (id_turma_disciplina, nome, data_avaliacao) VALUES
(9, 'Avaliação 1 - História', '2024-03-15'), (10, 'Avaliação 1 - Geografia', '2024-03-20'),
(11, 'Avaliação 1 - Português', '2024-03-25'), (12, 'Avaliação 1 - Inglês', '2024-03-30'),
(9, 'Avaliação 2 - História', '2024-04-20'), (10, 'Avaliação 2 - Geografia', '2024-04-25'),
(11, 'Avaliação 2 - Português', '2024-04-30'), (12, 'Avaliação 2 - Inglês', '2024-05-05'),
(9, 'Avaliação 3 - História', '2024-05-20'), (10, 'Avaliação 3 - Geografia', '2024-05-25'),
(11, 'Avaliação 3 - Português', '2024-05-30'), (12, 'Avaliação 3 - Inglês', '2024-06-05');

-- Avaliações para 2º Ano B
INSERT INTO avaliacoes (id_turma_disciplina, nome, data_avaliacao) VALUES
(13, 'Avaliação 1 - História', '2024-03-15'), (14, 'Avaliação 1 - Geografia', '2024-03-20'),
(15, 'Avaliação 1 - Português', '2024-03-25'), (16, 'Avaliação 1 - Inglês', '2024-03-30'),
(13, 'Avaliação 2 - História', '2024-04-20'), (14, 'Avaliação 2 - Geografia', '2024-04-25'),
(15, 'Avaliação 2 - Português', '2024-04-30'), (16, 'Avaliação 2 - Inglês', '2024-05-05'),
(13, 'Avaliação 3 - História', '2024-05-20'), (14, 'Avaliação 3 - Geografia', '2024-05-25'),
(15, 'Avaliação 3 - Português', '2024-05-30'), (16, 'Avaliação 3 - Inglês', '2024-06-05');

-- Avaliações para 3º Ano A
INSERT INTO avaliacoes (id_turma_disciplina, nome, data_avaliacao) VALUES
(17, 'Avaliação 1 - Matemática', '2024-03-15'), (18, 'Avaliação 1 - Física', '2024-03-20'),
(19, 'Avaliação 1 - Química', '2024-03-25'), (20, 'Avaliação 1 - Biologia', '2024-03-30'),
(17, 'Avaliação 2 - Matemática', '2024-04-20'), (18, 'Avaliação 2 - Física', '2024-04-25'),
(19, 'Avaliação 2 - Química', '2024-04-30'), (20, 'Avaliação 2 - Biologia', '2024-05-05'),
(17, 'Avaliação 3 - Matemática', '2024-05-20'), (18, 'Avaliação 3 - Física', '2024-05-25'),
(19, 'Avaliação 3 - Química', '2024-05-30'), (20, 'Avaliação 3 - Biologia', '2024-06-05');

-- Avaliações para 3º Ano B
INSERT INTO avaliacoes (id_turma_disciplina, nome, data_avaliacao) VALUES
(21, 'Avaliação 1 - História', '2024-03-15'), (22, 'Avaliação 1 - Geografia', '2024-03-20'),
(23, 'Avaliação 1 - Português', '2024-03-25'), (24, 'Avaliação 1 - Inglês', '2024-03-30'),
(21, 'Avaliação 2 - História', '2024-04-20'), (22, 'Avaliação 2 - Geografia', '2024-04-25'),
(23, 'Avaliação 2 - Português', '2024-04-30'), (24, 'Avaliação 2 - Inglês', '2024-05-05'),
(21, 'Avaliação 3 - História', '2024-05-20'), (22, 'Avaliação 3 - Geografia', '2024-05-25'),
(23, 'Avaliação 3 - Português', '2024-05-30'), (24, 'Avaliação 3 - Inglês', '2024-06-05');

-- =============================================
-- 8. INSERIR PRESENÇAS (10 dias por aluno/disciplina)
-- =============================================

-- Presenças para 1º Ano A - Matemática (alunos 1-10) - 10 dias
INSERT INTO presencas (id_aluno, id_turma_disciplina, data_aula, presente) VALUES
-- Alice (1) - 8 presenças, 2 faltas
(1, 1, '2024-02-05', TRUE), (1, 1, '2024-02-12', TRUE), (1, 1, '2024-02-19', FALSE), (1, 1, '2024-02-26', TRUE),
(1, 1, '2024-03-05', TRUE), (1, 1, '2024-03-12', TRUE), (1, 1, '2024-03-19', FALSE), (1, 1, '2024-03-26', TRUE),
(1, 1, '2024-04-02', TRUE), (1, 1, '2024-04-09', TRUE),

-- Bruno (2) - 9 presenças, 1 falta
(2, 1, '2024-02-05', TRUE), (2, 1, '2024-02-12', TRUE), (2, 1, '2024-02-19', TRUE), (2, 1, '2024-02-26', TRUE),
(2, 1, '2024-03-05', TRUE), (2, 1, '2024-03-12', TRUE), (2, 1, '2024-03-19', TRUE), (2, 1, '2024-03-26', TRUE),
(2, 1, '2024-04-02', FALSE), (2, 1, '2024-04-09', TRUE),

-- Diego (4) - 10 presenças, 0 faltas
(4, 1, '2024-02-05', TRUE), (4, 1, '2024-02-12', TRUE), (4, 1, '2024-02-19', TRUE), (4, 1, '2024-02-26', TRUE),
(4, 1, '2024-03-05', TRUE), (4, 1, '2024-03-12', TRUE), (4, 1, '2024-03-19', TRUE), (4, 1, '2024-03-26', TRUE),
(4, 1, '2024-04-02', TRUE), (4, 1, '2024-04-09', TRUE),

-- João Pedro (10) - 5 presenças, 5 faltas
(10, 1, '2024-02-05', FALSE), (10, 1, '2024-02-12', FALSE), (10, 1, '2024-02-19', TRUE), (10, 1, '2024-02-26', FALSE),
(10, 1, '2024-03-05', TRUE), (10, 1, '2024-03-12', FALSE), (10, 1, '2024-03-19', TRUE), (10, 1, '2024-03-26', FALSE),
(10, 1, '2024-04-02', TRUE), (10, 1, '2024-04-09', FALSE);

-- =============================================
-- 9. INSERIR NOTAS (para todos os alunos)
-- =============================================

-- Notas para 1º Ano A - Matemática (3 avaliações)
INSERT INTO notas (id_aluno, id_avaliacao, nota) VALUES
-- Alice (1)
(1, 1, 8.5), (1, 5, 7.0), (1, 9, 8.0),
-- Bruno (2)
(2, 1, 9.0), (2, 5, 8.5), (2, 9, 9.5),
-- Diego (4)
(4, 1, 9.5), (4, 5, 9.0), (4, 9, 10.0),
-- João Pedro (10)
(10, 1, 4.0), (10, 5, 5.0), (10, 9, 4.5);

-- =============================================
-- VERIFICAÇÃO DOS DADOS
-- =============================================

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