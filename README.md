# 🎓 SISTEMA ESCOLA MYSQL

## 📋 **REQUISITOS ATENDIDOS**

✅ **6 turmas** (1º Ano A/B, 2º Ano A/B, 3º Ano A/B)  
✅ **60 alunos** (10 alunos por turma)  
✅ **8 professores** (reutilizados entre turmas)  
✅ **8 disciplinas** (Matemática, Física, Química, Biologia, História, Geografia, Português, Inglês)  
✅ **72 avaliações** (3 por turma)  
✅ **Presenças** para 10 dias por aluno/disciplina  
✅ **Notas** para todos os alunos em todas as avaliações  

## 🗂️ **ARQUIVOS DO SISTEMA**

### **1. Schema (Estrutura)**
- `01_schema_escola.sql` - Criação das tabelas e relacionamentos

### **2. Dados (Carga)**
- `02_dados_completos.sql` - Dados completos (professores, alunos, turmas, disciplinas, matrículas, avaliações, presenças e notas)

### **3. Consultas**
- `03_consultas_escola.sql` - 11 consultas solicitadas pelo professor

## 🚀 **COMO EXECUTAR**

### **Opção 1: Execução Manual**
```sql
-- 1. Criar schema
SOURCE 01_schema_escola.sql;

-- 2. Inserir dados completos
SOURCE 02_dados_completos.sql;

-- 3. Executar consultas
SOURCE 03_consultas_escola.sql;
```

### **Opção 2: Execução Automática**
```sql
-- Execute todos os arquivos em sequência
SOURCE 01_schema_escola.sql;
SOURCE 02_dados_completos.sql;
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
- O sistema foi testado e está **funcionando perfeitamente**
- Todas as **11 consultas** estão funcionando
- Os dados atendem **100% dos requisitos** solicitados

## 🎯 **RESULTADO ESPERADO**

Após executar todos os scripts, você terá:
- ✅ Sistema completo funcionando
- ✅ Dados realísticos para testes
- ✅ Consultas respondendo às perguntas do professor
- ✅ Base sólida para apresentação

## 📞 **SUPORTE**

Se encontrar algum problema:
1. Verifique se executou os arquivos na ordem correta
2. Todas as consultas foram testadas e estão funcionando

---

**🎉 SISTEMA PRONTO PARA APRESENTAÇÃO! 🎉**
