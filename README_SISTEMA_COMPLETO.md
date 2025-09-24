# 🎓 SISTEMA ESCOLA COMPLETO

## 📋 **REQUISITOS ATENDIDOS**

✅ **6 turmas** (1º Ano A/B, 2º Ano A/B, 3º Ano A/B)  
✅ **60 alunos** (10 alunos por turma)  
✅ **8 professores** (reutilizados entre turmas)  
✅ **8 disciplinas** (Matemática, Física, Química, Biologia, História, Geografia, Português, Inglês)  
✅ **18 avaliações** (3 por turma)  
✅ **Presenças** para 10 dias por aluno/disciplina  
✅ **Notas** para todos os alunos em todas as avaliações  

## 🗂️ **ARQUIVOS DO SISTEMA**

### **1. Schema (Estrutura)**
- `01_schema_escola_simples.sql` - Criação das tabelas e relacionamentos

### **2. Dados (Carga)**
- `02_dados_simples.sql` - Dados básicos (professores, alunos, turmas, disciplinas, matrículas)
- `02_dados_completos.sql` - Presenças e notas para 1º Ano A
- `02_dados_todas_turmas.sql` - Presenças e notas para demais turmas

### **3. Consultas**
- `03_consultas_escola.sql` - 11 consultas solicitadas pelo professor

### **4. Execução**
- `EXECUTAR_SISTEMA_COMPLETO.sql` - Script para executar tudo na ordem correta

## 🚀 **COMO EXECUTAR**

### **Opção 1: Execução Automática**
```sql
SOURCE EXECUTAR_SISTEMA_COMPLETO.sql;
```

### **Opção 2: Execução Manual**
```sql
-- 1. Criar schema
SOURCE 01_schema_escola_simples.sql;

-- 2. Inserir dados básicos
SOURCE 02_dados_simples.sql;

-- 3. Completar presenças e notas
SOURCE 02_dados_completos.sql;

-- 4. Completar dados para todas as turmas
SOURCE 02_dados_todas_turmas.sql;

-- 5. Executar consultas
SOURCE 03_consultas_escola.sql;
```

## 📊 **ESTRUTURA DO BANCO**

### **Tabelas Principais:**
- `professores` - Dados dos professores
- `alunos` - Dados dos alunos
- `disciplinas` - Disciplinas oferecidas
- `turmas` - Turmas da escola

### **Tabelas de Relacionamento:**
- `matriculas` - Alunos matriculados nas turmas
- `turma_disciplinas` - Disciplinas por turma com professores
- `avaliacoes` - Avaliações de cada disciplina/turma
- `presencas` - Presenças dos alunos
- `notas` - Notas dos alunos

## 🔍 **CONSULTAS DISPONÍVEIS**

1. **Total de faltas** por aluno, turma e disciplina
2. **Taxa de presença** (%) por aluno
3. **Média final** do aluno na disciplina
4. **Aluno com maior média** em cada turma
5. **Ranking de alunos** por turma
6. **Disciplinas com maior taxa de faltas**
7. **Professor com maior carga** (número de turmas)
8. **Turmas com média abaixo de 6,0** (alerta)
9. **Alunos em risco de reprovação** (presença < 75%)
10. **Distribuição de notas** por avaliação
11. **Top 3 alunos** da escola

## 📈 **DADOS DE EXEMPLO**

### **Presenças:**
- **10 dias** de aula por aluno/disciplina
- **Distribuição realística** de faltas (0-5 faltas por aluno)
- **Taxa de presença** variando de 50% a 100%

### **Notas:**
- **3 avaliações** por turma
- **Notas de 0 a 10**
- **Distribuição realística** (alguns alunos com notas baixas, outros com notas altas)

### **Turmas:**
- **1º Ano A/B** - Matemática, Física, Química, Biologia
- **2º Ano A/B** - História, Geografia, Português, Inglês
- **3º Ano A/B** - Matemática, Física, Química, Biologia

## ⚠️ **IMPORTANTE**

- Execute os arquivos **na ordem correta**
- O sistema foi testado e está **funcionando perfeitamente de acordo com aulas do youtube ksksksksk**
- Todas as **11 consultas** estão funcionando

## 🎯 **RESULTADO ESPERADO**

Após executar todos os scripts, você terá:
- ✅ Sistema completo funcionando
- ✅ Nota 1000


Se encontrar algum problema:
1. Verifique se executou os arquivos na ordem correta
2. Execute o arquivo `EXECUTAR_SISTEMA_COMPLETO.sql` para verificação
3. Todas as consultas foram testadas e estão funcionando

