# 📊 SQL - Queries de Exemplo para Demonstração

## 🎯 Objetivo

Este arquivo contém exemplos práticos de consultas SQL que serão demonstrados em aula antes da realização dos exercícios. Use estes exemplos como base para resolver os exercícios (com exceção das partes de criar banco de dados, criar tabela e inserção de dados, que não serão necessários no momento).

---

## 🗂️ Criando Tabela de Demonstração

### Passo 1: Criar tabela simplificada para demonstração

```sql
-- Criar banco de dados para demonstração
CREATE DATABASE demo_sql;
USE demo_sql;

-- Criar tabela simplificada de funcionários
CREATE TABLE funcionarios (
    id INT PRIMARY KEY,
    nome VARCHAR(50),
    cargo VARCHAR(30),
    salario DECIMAL(8,2),
    departamento VARCHAR(20),
    data_admissao DATE,
    status_ativo BOOLEAN
);
```

### Passo 2: Inserir dados de exemplo com 10 registros

```sql
-- Inserir dados de demonstração
INSERT INTO funcionarios VALUES
(1, 'Ana Silva', 'Analista', 4500.00, 'TI', '2022-03-15', 1),
(2, 'Carlos Santos', 'Gerente', 8500.00, 'Vendas', '2021-01-10', 1),
(3, 'Maria Oliveira', 'Assistente', 2800.00, 'RH', '2023-06-20', 1),
(4, 'João Costa', 'Desenvolvedor', 6200.00, 'TI', '2022-09-05', 1),
(5, 'Paula Lima', 'Coordenadora', 5500.00, 'Marketing', '2021-11-12', 0),
(6, 'Roberto Alves', 'Analista', 4200.00, 'Financeiro', '2023-02-28', 1),
(7, 'Fernanda Rocha', 'Gerente', 9200.00, 'TI', '2020-07-18', 1),
(8, 'Lucas Pereira', 'Estagiário', 1200.00, 'Marketing', '2024-01-15', 1),
(9, 'Camila Ferreira', 'Analista', 4800.00, 'Vendas', '2022-05-30', 0),
(10, 'Ricardo Mendes', 'Diretor', 12000.00, 'Geral', '2019-03-01', 1);
```

### Verificar os dados inseridos:

```sql
-- Ver todos os dados da tabela
SELECT * FROM funcionarios;
```

---

## 🚀 **5 EXEMPLOS PRÁTICOS PARA DEMONSTRAÇÃO**

### 📋 **Exemplo 1: Consulta Básica - Todos os Funcionários**

```sql
-- Mostrar todos os dados de todos os funcionários
SELECT * FROM funcionarios;
```

**🎯 Resultado esperado:** 10 registros com todos os campos  
**💡 Ensinar:** Estrutura básica do SELECT, uso do asterisco (\*)

---

### 👥 **Exemplo 2: Filtro Simples - Funcionários de TI**

```sql
-- Mostrar apenas funcionários do departamento de TI
SELECT nome, cargo, salario, departamento
FROM funcionarios
WHERE departamento = 'TI';
```

**🎯 Resultado esperado:** Ana Silva, João Costa e Fernanda Rocha  
**💡 Ensinar:** Uso do WHERE, aspas simples para texto, seleção de campos específicos

---

### 💰 **Exemplo 3: Operadores de Comparação - Salários Altos**

```sql
-- Funcionários com salário superior a R$ 5.000
SELECT nome, cargo, salario
FROM funcionarios
WHERE salario > 5000
ORDER BY salario DESC;
```

**🎯 Resultado esperado:** Ricardo, Fernanda, Carlos, João e Paula  
**💡 Ensinar:** Operadores numéricos (>), ORDER BY DESC

---

### 🔍 **Exemplo 4: Filtros Combinados - Ativos de TI ou Vendas**

```sql
-- Funcionários ativos dos departamentos TI ou Vendas
SELECT nome, departamento, cargo, status_ativo
FROM funcionarios
WHERE status_ativo = 1 AND (departamento = 'TI' OR departamento = 'Vendas');
```

**🎯 Resultado esperado:** Ana Silva, Carlos Santos, João Costa e Fernanda Rocha  
**💡 Ensinar:** Operadores lógicos AND/OR, uso de parênteses, valores booleanos

---

### 📊 **Exemplo 5: Estatísticas - Contagem e Média Salarial**

```sql
-- Quantos funcionários ativos temos e qual a média salarial?
SELECT
    COUNT(*) as total_funcionarios_ativos, -- COUNT conta todas as linhas 
    AVG(salario) as salario_medio, -- AVG calcula a média de todas as linhas da coluna selecionada
    MAX(salario) as maior_salario, -- MAX busca apenas a linha com o maior valor da coluna selecionada
    MIN(salario) as menor_salario  -- MIN busca apenas a linha com o menor valor da coluna selecionada
FROM funcionarios
WHERE status_ativo = 1; -- Limita os resultados para apenas os que tem status_ativo = 1
```

**🎯 Resultado esperado:** 8 funcionários ativos, média, maior salário e menor salário
**💡 Ensinar:** Funções agregadas (COUNT, AVG, MAX, MIN), alias com AS

---
