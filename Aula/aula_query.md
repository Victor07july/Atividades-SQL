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

---

## 🚀 **5 EXEMPLOS PRÁTICOS PARA DEMONSTRAÇÃO**

### 📋 **Exemplo 1: Consulta Básica - Todos os Funcionários**

```sql
-- Mostrar todos os dados de todos os funcionários
SELECT * FROM funcionarios;
```

```sql
-- Mostrar somente determinadas colunas
SELECT nome, departamento FROM funcionarios;
```

**💡 Ensinar:** Estrutura básica do SELECT, uso do asterisco (\*)

---

### 👥 **Exemplo 2: Filtro Simples - Funcionários de Vendas**

```sql
-- Mostrar apenas funcionários do departamento de TI
SELECT nome, cargo, salario, departamento
FROM funcionarios
WHERE departamento = 'Vendas';
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

### 🔍 **Exemplo 4: Filtros Combinados**

```sql
-- Funcionários ativos do departamento de Vendas
SELECT nome, departamento, cargo, status_ativo
FROM funcionarios
WHERE status_ativo = 1 AND departamento = 'Vendas';

-- AND -> precisa atender todos os critérios
```

```sql
-- Funcionários inativos OU com salário acima de 5000
SELECT nome, departamento, cargo, status_ativo, salario
FROM funcionarios
WHERE status_ativo = 0 OR salario > 5000;
-- OR -> precisa atender somente um dos critérios
```

```sql
-- E se eu quiser verificar funcionários ativos onde departamento seja ou de TI ou de Vendas?
SELECT nome, departamento, cargo, status_ativo
FROM funcionarios
WHERE status_ativo = 1 AND (departamento = 'TI' OR departamento = 'Vendas');
```

O AND tem procedência sobre o OR, então, caso queira que ele priorize o OR, é necessário colocar a operação em seu redor entre parênteses

**💡 Ensinar:** Operadores lógicos AND/OR, uso de parênteses

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

### 🔍 **Exemplo 6: DISTINCT - Valores Únicos**

```sql
-- Quais departamentos únicos existem na empresa?
SELECT DISTINCT departamento
FROM funcionarios
ORDER BY departamento;
```

```sql
-- Quantos departamentos únicos temos?
SELECT COUNT(DISTINCT departamento) as total_departamentos
FROM funcionarios;
```

**🎯 Resultado esperado:** 6 departamentos únicos  
**💡 Ensinar:** Combinação de COUNT com DISTINCT

---

### 📈 **Exemplo 7: GROUP BY e HAVING - Análise por Departamento**

GROUP BY agrupa as colunas de mesmo valor, criando um grupo para cada

```sql
SELECT departamento
FROM funcionarios
GROUP BY departamento;
```


```sql
-- Departamentos com mais de  um funcionário
SELECT
    departamento,
    COUNT(*) as total_funcionarios
FROM funcionarios
GROUP BY departamento -- Agrupa as linhas com o mesmo valor
HAVING COUNT(*) > 1;  -- HAVING filtra grupos (depois do GROUP BY)
```

**🎯 Resultado esperado:** TI e Vendas (únicos departamentos com mais de 1 funcionário)  
**💡 Ensinar:** GROUP BY agrupa dados, HAVING filtra grupos (diferente do WHERE)
