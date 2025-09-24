-- =============================================
-- SISTEMA ESCOLA 
-- =============================================

-- Criar banco de dados
CREATE DATABASE IF NOT EXISTS escola_db;
USE escola_db;

-- =============================================
-- TABELAS BÁSICAS
-- =============================================

-- Tabela de Professores
CREATE TABLE professores (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(50)
);

-- Tabela de Alunos
CREATE TABLE alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL
);

-- Tabela de Disciplinas
CREATE TABLE disciplinas (
    id_disciplina INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    codigo VARCHAR(10) UNIQUE NOT NULL
);

-- Tabela de Turmas
CREATE TABLE turmas (
    id_turma INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    ano_letivo YEAR NOT NULL,
    semestre INT NOT NULL CHECK (semestre IN (1, 2)),
    turno ENUM('Matutino', 'Vespertino', 'Noturno') NOT NULL
);

-- =============================================
-- TABELAS DE RELACIONAMENTO ( JOINs) umas da unicas aulas que participei 
-- =============================================

-- Tabela de Matrículas (Aluno + Turma)
CREATE TABLE matriculas (
    id_matricula INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT NOT NULL,
    id_turma INT NOT NULL,
    data_matricula DATE,
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
    FOREIGN KEY (id_turma) REFERENCES turmas(id_turma)
);

-- Tabela de Disciplinas por Turma (Turma + Disciplina + Professor)
CREATE TABLE turma_disciplinas (
    id_turma_disciplina INT AUTO_INCREMENT PRIMARY KEY,
    id_turma INT NOT NULL,
    id_disciplina INT NOT NULL,
    id_professor INT NOT NULL,
    FOREIGN KEY (id_turma) REFERENCES turmas(id_turma),
    FOREIGN KEY (id_disciplina) REFERENCES disciplinas(id_disciplina),
    FOREIGN KEY (id_professor) REFERENCES professores(id_professor)
);

-- Tabela de Avaliações
CREATE TABLE avaliacoes (
    id_avaliacao INT AUTO_INCREMENT PRIMARY KEY,
    id_turma_disciplina INT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    data_avaliacao DATE NOT NULL,
    FOREIGN KEY (id_turma_disciplina) REFERENCES turma_disciplinas(id_turma_disciplina)
);

-- Tabela de Presenças
CREATE TABLE presencas (
    id_presenca INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT NOT NULL,
    id_turma_disciplina INT NOT NULL,
    data_aula DATE NOT NULL,
    presente BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
    FOREIGN KEY (id_turma_disciplina) REFERENCES turma_disciplinas(id_turma_disciplina)
);

-- Tabela de Notas
CREATE TABLE notas (
    id_nota INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT NOT NULL,
    id_avaliacao INT NOT NULL,
    nota DECIMAL(5,2) NOT NULL,
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
    FOREIGN KEY (id_avaliacao) REFERENCES avaliacoes(id_avaliacao)
);


/*
EXPLICAÇÃO DAS TABELAS:

1. TABELAS PRINCIPAIS (sem relacionamentos):
   - professores: dados dos professores
   - alunos: dados dos alunos  
   - disciplinas: disciplinas oferecidas
   - turmas: turmas da escola

2. TABELAS DE RELACIONAMENTO (JOINs):
   - matriculas: conecta alunos com turmas
   - turma_disciplinas: conecta turmas com disciplinas e professores
   - avaliacoes: avaliações de cada disciplina/turma
   - presencas: presenças dos alunos
   - notas: notas dos alunos

3. CHAVES ESTRANGEIRAS (FOREIGN KEY):
   - Conectam as tabelas
   - Garantem que os dados sejam consistentes
   - Exemplo: id_aluno na tabela matriculas deve existir na tabela alunos

4. AUTO_INCREMENT:
   - Cria números automaticamente (1, 2, 3, 4...)
   - Usado nas chaves primárias (PRIMARY KEY)
   ----- confesso que os textos explicativos foi tudo IA porque se não eu esqueço na hora da apresentação
*/
