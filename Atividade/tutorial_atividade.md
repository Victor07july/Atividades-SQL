# 📋 Instruções para Atividades SQL

## 🎯 Objetivo

Praticar consultas SQL básicas utilizando a linguagem de consulta em um banco de dados MySQL.

## ⏰ Prazo de Entrega

**Data limite: 3 de setembro de 2024 (próxima semana)**

---

## 🚀 Passo a Passo para Realizar as Atividades

### 📝 **Passo 1: Configuração do Banco de Dados**

1. Abra o **MySQL Workbench**
2. Abra o arquivo `1_preconfiguracao.sql` no Workbench **OU** copie e colo todo seu conteúdo no Workbench
3. **Execute todo o conteúdo** (Ctrl + Shift + Enter ou clique no ⚡ "Execute All")
   - Isso criará o banco `exercicio_sql` e a tabela `clientes` com dados de exemplo

### ✍️ **Passo 2: Resolver as Atividades**

1. Abra o arquivo `2_atividades.sql` no Workbench **OU** copie todo seu conteúdo no Workbench
2. **Resolva cada atividade** escrevendo as consultas SQL abaixo de cada comentário

### 📤 **Passo 3: Entrega no GitHub**

1. Salve o arquivo `2_atividades.sql` com suas respostas
2. Adicione o arquivo na pasta seu repositório GitHub clonado em seu computador (criado anteriormente na Tarefa 1)
3. Faça o commit com a mensagem:
   ```
   Entrega da atividade 3: query de dados sql
   ```
4. Envie (push) para o GitHub

---

## 📚 Explicação das 6 Atividades

### 🔹 **Atividade 1: Consultas Básicas (4 exercícios)**

**Objetivo:** Aprender a usar `SELECT` e `FROM` para buscar dados

- Listar todos os dados da tabela
- Selecionar campos específicos
- Escolher combinações de campos

**Conceitos:** `SELECT`, `FROM`, seleção de colunas

---

### 🔹 **Atividade 2: Filtros Simples com WHERE (5 exercícios)**

**Objetivo:** Aprender a filtrar dados com condições simples

- Filtrar por estado, status, gênero
- Buscar por ID específico
- Filtrar por valores numéricos

**Conceitos:** `WHERE`, comparações básicas (`=`, `>`)

---

### 🔹 **Atividade 3: Operadores de Comparação (6 exercícios)**

**Objetivo:** Usar operadores avançados de comparação

- Intervalos de valores (`BETWEEN`)
- Comparações de datas (`<`, `>`)
- Negações (`!=`, `NOT`)
- Comparações numéricas (`>=`, `<=`)

**Conceitos:** `BETWEEN`, `>`, `<`, `!=`, `>=`, `<=`

---

### 🔹 **Atividade 4: Filtros Combinados (6 exercícios)**

**Objetivo:** Combinar múltiplas condições

- Usar `AND` para condições que devem ser verdadeiras simultaneamente
- Usar `OR` para condições alternativas
- Combinar `AND` e `OR` com parênteses

**Conceitos:** `AND`, `OR`, precedência de operadores, uso de parênteses

---

### 🔹 **Atividade 5: Ordenação com ORDER BY (6 exercícios)**

**Objetivo:** Ordenar resultados de consultas

- Ordenação alfabética (A-Z, Z-A)
- Ordenação numérica (crescente, decrescente)
- Ordenação por múltiplos campos
- Combinação de filtros com ordenação

**Conceitos:** `ORDER BY`, `ASC`, `DESC`, ordenação múltipla

---

### 🔹 **Atividade 6: Funções Estatísticas (3 exercícios)**

**Objetivo:** Usar funções agregadas para análise de dados

- Calcular médias (`AVG`)
- Encontrar valores máximos (`MAX`)
- Encontrar valores mínimos (`MIN`)
- Combinar funções com filtros complexos

**Conceitos:** `AVG()`, `MAX()`, `MIN()`, funções agregadas

---

## 💡 Dicas Importantes

### ✅ **Para ter sucesso:**

- Execute uma query por vez para testar
- Leia atentamente cada comentário
- Use os dados da tabela `clientes` criada na pré-configuração
- Teste suas queries antes de finalizar

### ⚠️ **Erros comuns a evitar:**

- Esquecer de executar a pré-configuração primeiro
- Não usar o nome correto da tabela (`clientes`)
- Esquecer aspas simples em textos: `'New York'`, `'Ativo'`
- Não testar as queries antes de entregar

### 🔍 **Campos disponíveis na tabela `clientes`:**

- `id` - Identificador único
- `nome` - Nome do cliente
- `sobrenome` - Sobrenome do cliente
- `email` - Email do cliente
- `telefone` - Telefone do cliente
- `data_nascimento` - Data de nascimento
- `genero` - Gênero (Male/Female)
- `cidade` - Cidade onde mora
- `estado` - Estado onde mora
- `renda_mensal` - Renda mensal em reais
- `status` - Status (Ativo/Inativo)

---

## 📊 Total de Exercícios

**28 exercícios** distribuídos em 6 atividades progressivas, do básico ao avançado.

**Boa sorte! 🍀**
