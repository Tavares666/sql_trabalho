-- =============================================
-- SCRIPT DE CARGA DE DADOS - SISTEMA ESCOLA
-- =============================================

USE escola_db;

-- =============================================
-- 1. INSERÇÃO DE PROFESSORES (24 professores)
-- =============================================

INSERT INTO professores (nome, cpf, email, telefone, data_nascimento, especialidade, data_contratacao) VALUES
('Ana Silva Santos', '123.456.789-01', 'ana.silva@escola.com', '(11) 99999-0001', '1980-05-15', 'Matemática', '2020-01-15'),
('Carlos Eduardo Lima', '123.456.789-02', 'carlos.lima@escola.com', '(11) 99999-0002', '1975-08-22', 'Física', '2019-03-10'),
('Maria Fernanda Costa', '123.456.789-03', 'maria.costa@escola.com', '(11) 99999-0003', '1982-12-03', 'Química', '2020-02-20'),
('João Pedro Oliveira', '123.456.789-04', 'joao.oliveira@escola.com', '(11) 99999-0004', '1978-07-18', 'Biologia', '2019-08-05'),
('Patricia Mendes', '123.456.789-05', 'patricia.mendes@escola.com', '(11) 99999-0005', '1985-04-12', 'História', '2021-01-10'),
('Roberto Alves', '123.456.789-06', 'roberto.alves@escola.com', '(11) 99999-0006', '1976-11-25', 'Geografia', '2019-06-15'),
('Lucia Helena Souza', '123.456.789-07', 'lucia.souza@escola.com', '(11) 99999-0007', '1983-09-08', 'Português', '2020-03-01'),
('Fernando Rodrigues', '123.456.789-08', 'fernando.rodrigues@escola.com', '(11) 99999-0008', '1979-01-30', 'Inglês', '2020-07-12'),
('Cristina Pereira', '123.456.789-09', 'cristina.pereira@escola.com', '(11) 99999-0009', '1981-06-14', 'Artes', '2021-02-15'),
('Marcos Antonio', '123.456.789-10', 'marcos.antonio@escola.com', '(11) 99999-0010', '1977-03-27', 'Educação Física', '2019-09-20'),
('Silvia Regina', '123.456.789-11', 'silvia.regina@escola.com', '(11) 99999-0011', '1984-10-05', 'Filosofia', '2020-04-08'),
('Paulo Cesar', '123.456.789-12', 'paulo.cesar@escola.com', '(11) 99999-0012', '1974-12-18', 'Sociologia', '2019-11-12'),
('Renata Barbosa', '123.456.789-13', 'renata.barbosa@escola.com', '(11) 99999-0013', '1986-02-22', 'Literatura', '2021-03-05'),
('Antonio Carlos', '123.456.789-14', 'antonio.carlos@escola.com', '(11) 99999-0014', '1973-08-10', 'Redação', '2019-05-18'),
('Juliana Martins', '123.456.789-15', 'juliana.martins@escola.com', '(11) 99999-0015', '1987-07-03', 'Informática', '2021-01-25'),
('Ricardo Silva', '123.456.789-16', 'ricardo.silva@escola.com', '(11) 99999-0016', '1975-04-16', 'Matemática', '2020-08-30'),
('Camila Santos', '123.456.789-17', 'camila.santos@escola.com', '(11) 99999-0017', '1988-11-28', 'Física', '2021-05-10'),
('Eduardo Lima', '123.456.789-18', 'eduardo.lima@escola.com', '(11) 99999-0018', '1976-01-12', 'Química', '2020-09-15'),
('Beatriz Costa', '123.456.789-19', 'beatriz.costa@escola.com', '(11) 99999-0019', '1989-06-07', 'Biologia', '2021-07-20'),
('Felipe Oliveira', '123.456.789-20', 'felipe.oliveira@escola.com', '(11) 99999-0020', '1972-09-25', 'História', '2019-12-01'),
('Gabriela Mendes', '123.456.789-21', 'gabriela.mendes@escola.com', '(11) 99999-0021', '1990-03-14', 'Geografia', '2021-08-12'),
('Thiago Alves', '123.456.789-22', 'thiago.alves@escola.com', '(11) 99999-0022', '1971-05-30', 'Português', '2019-10-08'),
('Larissa Souza', '123.456.789-23', 'larissa.souza@escola.com', '(11) 99999-0023', '1991-12-11', 'Inglês', '2021-09-18'),
('Diego Rodrigues', '123.456.789-24', 'diego.rodrigues@escola.com', '(11) 99999-0024', '1970-08-04', 'Artes', '2019-07-22');

-- =============================================
-- 2. INSERÇÃO DE DISCIPLINAS (30 disciplinas)
-- =============================================

INSERT INTO disciplinas (nome, codigo, carga_horaria, descricao) VALUES
('Matemática I', 'MAT001', 80, 'Álgebra e Geometria Básica'),
('Matemática II', 'MAT002', 80, 'Cálculo e Trigonometria'),
('Matemática III', 'MAT003', 80, 'Estatística e Probabilidade'),
('Física I', 'FIS001', 60, 'Mecânica Clássica'),
('Física II', 'FIS002', 60, 'Eletromagnetismo'),
('Física III', 'FIS003', 60, 'Termodinâmica e Óptica'),
('Química I', 'QUI001', 60, 'Química Geral'),
('Química II', 'QUI002', 60, 'Química Orgânica'),
('Química III', 'QUI003', 60, 'Química Inorgânica'),
('Biologia I', 'BIO001', 60, 'Biologia Celular'),
('Biologia II', 'BIO002', 60, 'Genética e Evolução'),
('Biologia III', 'BIO003', 60, 'Ecologia e Meio Ambiente'),
('História I', 'HIS001', 40, 'História Antiga e Medieval'),
('História II', 'HIS002', 40, 'História Moderna'),
('História III', 'HIS003', 40, 'História Contemporânea'),
('Geografia I', 'GEO001', 40, 'Geografia Física'),
('Geografia II', 'GEO002', 40, 'Geografia Humana'),
('Geografia III', 'GEO003', 40, 'Geografia do Brasil'),
('Português I', 'POR001', 60, 'Gramática e Literatura'),
('Português II', 'POR002', 60, 'Redação e Interpretação'),
('Português III', 'POR003', 60, 'Literatura Brasileira'),
('Inglês I', 'ING001', 40, 'Inglês Básico'),
('Inglês II', 'ING002', 40, 'Inglês Intermediário'),
('Inglês III', 'ING003', 40, 'Inglês Avançado'),
('Artes I', 'ART001', 30, 'História da Arte'),
('Artes II', 'ART002', 30, 'Arte Contemporânea'),
('Educação Física I', 'EDF001', 30, 'Esportes e Atividades'),
('Educação Física II', 'EDF002', 30, 'Fitness e Saúde'),
('Filosofia I', 'FIL001', 30, 'Introdução à Filosofia'),
('Sociologia I', 'SOC001', 30, 'Introdução à Sociologia');

-- =============================================
-- 3. INSERÇÃO DE TURMAS (6 turmas)
-- =============================================

INSERT INTO turmas (nome, ano_letivo, semestre, turno, capacidade_maxima, data_inicio, data_fim) VALUES
('1º Ano A', 2024, 1, 'Matutino', 30, '2024-02-05', '2024-06-30'),
('1º Ano B', 2024, 1, 'Vespertino', 30, '2024-02-05', '2024-06-30'),
('2º Ano A', 2024, 1, 'Matutino', 30, '2024-02-05', '2024-06-30'),
('2º Ano B', 2024, 1, 'Vespertino', 30, '2024-02-05', '2024-06-30'),
('3º Ano A', 2024, 1, 'Matutino', 30, '2024-02-05', '2024-06-30'),
('3º Ano B', 2024, 1, 'Vespertino', 30, '2024-02-05', '2024-06-30');

-- =============================================
-- 4. INSERÇÃO DE ALUNOS (60 alunos - 10 por turma)
-- =============================================

-- Alunos para 1º Ano A
INSERT INTO alunos (nome, cpf, email, telefone, data_nascimento, endereco, nome_responsavel, telefone_responsavel) VALUES
('Alice Santos Silva', '111.111.111-01', 'alice.santos@email.com', '(11) 88888-0001', '2008-03-15', 'Rua A, 123', 'Maria Santos', '(11) 88888-1001'),
('Bruno Oliveira Costa', '111.111.111-02', 'bruno.oliveira@email.com', '(11) 88888-0002', '2008-07-22', 'Rua B, 456', 'João Oliveira', '(11) 88888-1002'),
('Carla Mendes Lima', '111.111.111-03', 'carla.mendes@email.com', '(11) 88888-0003', '2008-11-10', 'Rua C, 789', 'Ana Mendes', '(11) 88888-1003'),
('Diego Alves Souza', '111.111.111-04', 'diego.alves@email.com', '(11) 88888-0004', '2008-05-18', 'Rua D, 321', 'Carlos Alves', '(11) 88888-1004'),
('Elena Rodrigues Pereira', '111.111.111-05', 'elena.rodrigues@email.com', '(11) 88888-0005', '2008-09-03', 'Rua E, 654', 'Patricia Rodrigues', '(11) 88888-1005'),
('Felipe Barbosa Santos', '111.111.111-06', 'felipe.barbosa@email.com', '(11) 88888-0006', '2008-01-25', 'Rua F, 987', 'Roberto Barbosa', '(11) 88888-1006'),
('Gabriela Martins Silva', '111.111.111-07', 'gabriela.martins@email.com', '(11) 88888-0007', '2008-12-08', 'Rua G, 147', 'Lucia Martins', '(11) 88888-1007'),
('Henrique Costa Lima', '111.111.111-08', 'henrique.costa@email.com', '(11) 88888-0008', '2008-04-12', 'Rua H, 258', 'Fernando Costa', '(11) 88888-1008'),
('Isabela Souza Oliveira', '111.111.111-09', 'isabela.souza@email.com', '(11) 88888-0009', '2008-08-30', 'Rua I, 369', 'Cristina Souza', '(11) 88888-1009'),
('João Pedro Mendes', '111.111.111-10', 'joao.mendes@email.com', '(11) 88888-0010', '2008-06-14', 'Rua J, 741', 'Marcos Mendes', '(11) 88888-1010');

-- Alunos para 1º Ano B
INSERT INTO alunos (nome, cpf, email, telefone, data_nascimento, endereco, nome_responsavel, telefone_responsavel) VALUES
('Karla Silva Santos', '111.111.111-11', 'karla.silva@email.com', '(11) 88888-0011', '2008-02-20', 'Rua K, 852', 'Silvia Silva', '(11) 88888-1011'),
('Lucas Oliveira Costa', '111.111.111-12', 'lucas.oliveira@email.com', '(11) 88888-0012', '2008-10-05', 'Rua L, 963', 'Paulo Oliveira', '(11) 88888-1012'),
('Mariana Lima Alves', '111.111.111-13', 'mariana.lima@email.com', '(11) 88888-0013', '2008-12-18', 'Rua M, 159', 'Renata Lima', '(11) 88888-1013'),
('Nicolas Souza Barbosa', '111.111.111-14', 'nicolas.souza@email.com', '(11) 88888-0014', '2008-07-07', 'Rua N, 357', 'Antonio Souza', '(11) 88888-1014'),
('Olivia Rodrigues Martins', '111.111.111-15', 'olivia.rodrigues@email.com', '(11) 88888-0015', '2008-03-29', 'Rua O, 468', 'Juliana Rodrigues', '(11) 88888-1015'),
('Pedro Santos Costa', '111.111.111-16', 'pedro.santos@email.com', '(11) 88888-0016', '2008-11-12', 'Rua P, 579', 'Ricardo Santos', '(11) 88888-1016'),
('Quiteria Lima Silva', '111.111.111-17', 'quiteria.lima@email.com', '(11) 88888-0017', '2008-05-24', 'Rua Q, 680', 'Camila Lima', '(11) 88888-1017'),
('Rafael Oliveira Mendes', '111.111.111-18', 'rafael.oliveira@email.com', '(11) 88888-0018', '2008-09-16', 'Rua R, 791', 'Eduardo Oliveira', '(11) 88888-1018'),
('Sofia Costa Alves', '111.111.111-19', 'sofia.costa@email.com', '(11) 88888-0019', '2008-01-08', 'Rua S, 802', 'Beatriz Costa', '(11) 88888-1019'),
('Thiago Souza Barbosa', '111.111.111-20', 'thiago.souza@email.com', '(11) 88888-0020', '2008-08-31', 'Rua T, 913', 'Felipe Souza', '(11) 88888-1020');

-- Alunos para 2º Ano A
INSERT INTO alunos (nome, cpf, email, telefone, data_nascimento, endereco, nome_responsavel, telefone_responsavel) VALUES
('Ursula Martins Lima', '111.111.111-21', 'ursula.martins@email.com', '(11) 88888-0021', '2007-04-13', 'Rua U, 024', 'Gabriela Martins', '(11) 88888-1021'),
('Vitor Santos Oliveira', '111.111.111-22', 'vitor.santos@email.com', '(11) 88888-0022', '2007-10-26', 'Rua V, 135', 'Thiago Santos', '(11) 88888-1022'),
('Wanda Lima Costa', '111.111.111-23', 'wanda.lima@email.com', '(11) 88888-0023', '2007-06-09', 'Rua W, 246', 'Larissa Lima', '(11) 88888-1023'),
('Xavier Souza Silva', '111.111.111-24', 'xavier.souza@email.com', '(11) 88888-0024', '2007-12-22', 'Rua X, 357', 'Diego Souza', '(11) 88888-1024'),
('Yasmin Rodrigues Alves', '111.111.111-25', 'yasmin.rodrigues@email.com', '(11) 88888-0025', '2007-08-15', 'Rua Y, 468', 'Elena Rodrigues', '(11) 88888-1025'),
('Zeca Barbosa Mendes', '111.111.111-26', 'zeca.barbosa@email.com', '(11) 88888-0026', '2007-02-28', 'Rua Z, 579', 'Felipe Barbosa', '(11) 88888-1026'),
('Ana Clara Martins Santos', '111.111.111-27', 'anaclara.martins@email.com', '(11) 88888-0027', '2007-11-11', 'Rua AC, 680', 'Gabriela Martins', '(11) 88888-1027'),
('Bruno Henrique Lima Costa', '111.111.111-28', 'brunohenrique.lima@email.com', '(11) 88888-0028', '2007-07-04', 'Rua BH, 791', 'Henrique Lima', '(11) 88888-1028'),
('Carla Eduarda Souza Oliveira', '111.111.111-29', 'carlaeduarda.souza@email.com', '(11) 88888-0029', '2007-03-17', 'Rua CE, 802', 'Carla Souza', '(11) 88888-1029'),
('Diego Henrique Rodrigues Silva', '111.111.111-30', 'diegohenrique.rodrigues@email.com', '(11) 88888-0030', '2007-09-30', 'Rua DH, 913', 'Diego Rodrigues', '(11) 88888-1030');

-- Alunos para 2º Ano B
INSERT INTO alunos (nome, cpf, email, telefone, data_nascimento, endereco, nome_responsavel, telefone_responsavel) VALUES
('Elena Beatriz Alves Barbosa', '111.111.111-31', 'elenabeatriz.alves@email.com', '(11) 88888-0031', '2007-05-23', 'Rua EB, 024', 'Elena Alves', '(11) 88888-1031'),
('Felipe Augusto Mendes Martins', '111.111.111-32', 'felipeaugusto.mendes@email.com', '(11) 88888-0032', '2007-01-06', 'Rua FAM, 135', 'Felipe Mendes', '(11) 88888-1032'),
('Gabriela Fernanda Santos Lima', '111.111.111-33', 'gabrielaf.fernanda@email.com', '(11) 88888-0033', '2007-12-19', 'Rua GFS, 246', 'Gabriela Santos', '(11) 88888-1033'),
('Henrique Gabriel Costa Souza', '111.111.111-34', 'henriquegabriel.costa@email.com', '(11) 88888-0034', '2007-08-02', 'Rua HGC, 357', 'Henrique Costa', '(11) 88888-1034'),
('Isabela Cristina Oliveira Rodrigues', '111.111.111-35', 'isabelacristina.oliveira@email.com', '(11) 88888-0035', '2007-04-15', 'Rua ICO, 468', 'Isabela Oliveira', '(11) 88888-1035'),
('João Vitor Silva Alves', '111.111.111-36', 'joaovitor.silva@email.com', '(11) 88888-0036', '2007-10-28', 'Rua JVS, 579', 'João Silva', '(11) 88888-1036'),
('Karla Beatriz Lima Barbosa', '111.111.111-37', 'karlabeatriz.lima@email.com', '(11) 88888-0037', '2007-06-11', 'Rua KBL, 680', 'Karla Lima', '(11) 88888-1037'),
('Lucas Gabriel Souza Mendes', '111.111.111-38', 'lucasgabriel.souza@email.com', '(11) 88888-0038', '2007-02-24', 'Rua LGS, 791', 'Lucas Souza', '(11) 88888-1038'),
('Mariana Eduarda Rodrigues Santos', '111.111.111-39', 'marianaeduarda.rodrigues@email.com', '(11) 88888-0039', '2007-11-07', 'Rua MER, 802', 'Mariana Rodrigues', '(11) 88888-1039'),
('Nicolas Augusto Barbosa Costa', '111.111.111-40', 'nicolasaugusto.barbosa@email.com', '(11) 88888-0040', '2007-07-20', 'Rua NAB, 913', 'Nicolas Barbosa', '(11) 88888-1040');

-- Alunos para 3º Ano A
INSERT INTO alunos (nome, cpf, email, telefone, data_nascimento, endereco, nome_responsavel, telefone_responsavel) VALUES
('Olivia Fernanda Martins Lima', '111.111.111-41', 'oliviafernanda.martins@email.com', '(11) 88888-0041', '2006-03-03', 'Rua OFM, 024', 'Olivia Martins', '(11) 88888-1041'),
('Pedro Henrique Santos Souza', '111.111.111-42', 'pedrohenrique.santos@email.com', '(11) 88888-0042', '2006-09-16', 'Rua PHS, 135', 'Pedro Santos', '(11) 88888-1042'),
('Quiteria Beatriz Costa Alves', '111.111.111-43', 'quiteriabeatriz.costa@email.com', '(11) 88888-0043', '2006-05-29', 'Rua QBC, 246', 'Quiteria Costa', '(11) 88888-1043'),
('Rafael Gabriel Oliveira Barbosa', '111.111.111-44', 'rafaelgabriel.oliveira@email.com', '(11) 88888-0044', '2006-01-12', 'Rua RGO, 357', 'Rafael Oliveira', '(11) 88888-1044'),
('Sofia Eduarda Lima Mendes', '111.111.111-45', 'sofiaeduarda.lima@email.com', '(11) 88888-0045', '2006-12-25', 'Rua SEL, 468', 'Sofia Lima', '(11) 88888-1045'),
('Thiago Augusto Souza Rodrigues', '111.111.111-46', 'thiagoaugusto.souza@email.com', '(11) 88888-0046', '2006-08-08', 'Rua TAS, 579', 'Thiago Souza', '(11) 88888-1046'),
('Ursula Cristina Martins Santos', '111.111.111-47', 'ursulacristina.martins@email.com', '(11) 88888-0047', '2006-04-21', 'Rua UCM, 680', 'Ursula Martins', '(11) 88888-1047'),
('Vitor Gabriel Lima Costa', '111.111.111-48', 'vitorgabriel.lima@email.com', '(11) 88888-0048', '2006-10-04', 'Rua VGL, 791', 'Vitor Lima', '(11) 88888-1048'),
('Wanda Beatriz Souza Oliveira', '111.111.111-49', 'wandabeatriz.souza@email.com', '(11) 88888-0049', '2006-06-17', 'Rua WBS, 802', 'Wanda Souza', '(11) 88888-1049'),
('Xavier Henrique Rodrigues Silva', '111.111.111-50', 'xavierhenrique.rodrigues@email.com', '(11) 88888-0050', '2006-02-28', 'Rua XHR, 913', 'Xavier Rodrigues', '(11) 88888-1050');

-- Alunos para 3º Ano B
INSERT INTO alunos (nome, cpf, email, telefone, data_nascimento, endereco, nome_responsavel, telefone_responsavel) VALUES
('Yasmin Eduarda Barbosa Mendes', '111.111.111-51', 'yasmineduarda.barbosa@email.com', '(11) 88888-0051', '2006-11-11', 'Rua YEB, 024', 'Yasmin Barbosa', '(11) 88888-1051'),
('Zeca Gabriel Martins Lima', '111.111.111-52', 'zecagabriel.martins@email.com', '(11) 88888-0052', '2006-07-24', 'Rua ZGM, 135', 'Zeca Martins', '(11) 88888-1052'),
('Ana Clara Beatriz Santos Souza', '111.111.111-53', 'anaclarabeatriz.santos@email.com', '(11) 88888-0053', '2006-03-07', 'Rua ACBS, 246', 'Ana Clara Santos', '(11) 88888-1053'),
('Bruno Henrique Costa Alves', '111.111.111-54', 'brunohenrique.costa@email.com', '(11) 88888-0054', '2006-09-20', 'Rua BHCA, 357', 'Bruno Costa', '(11) 88888-1054'),
('Carla Eduarda Oliveira Barbosa', '111.111.111-55', 'carlaeduarda.oliveira@email.com', '(11) 88888-0055', '2006-05-13', 'Rua CEOB, 468', 'Carla Oliveira', '(11) 88888-1055'),
('Diego Augusto Lima Mendes', '111.111.111-56', 'diegoaugusto.lima@email.com', '(11) 88888-0056', '2006-01-26', 'Rua DALM, 579', 'Diego Lima', '(11) 88888-1056'),
('Elena Fernanda Souza Rodrigues', '111.111.111-57', 'elenafernanda.souza@email.com', '(11) 88888-0057', '2006-12-09', 'Rua EFSR, 680', 'Elena Souza', '(11) 88888-1057'),
('Felipe Gabriel Martins Santos', '111.111.111-58', 'felipegabriel.martins@email.com', '(11) 88888-0058', '2006-08-22', 'Rua FGMS, 791', 'Felipe Martins', '(11) 88888-1058'),
('Gabriela Beatriz Costa Lima', '111.111.111-59', 'gabrielabeatriz.costa@email.com', '(11) 88888-0059', '2006-04-15', 'Rua GBCL, 802', 'Gabriela Costa', '(11) 88888-1059'),
('Henrique Augusto Oliveira Souza', '111.111.111-60', 'henriqueaugusto.oliveira@email.com', '(11) 88888-0060', '2006-10-28', 'Rua HAOS, 913', 'Henrique Oliveira', '(11) 88888-1060');

-- =============================================
-- 5. MATRÍCULAS DOS ALUNOS NAS TURMAS
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
