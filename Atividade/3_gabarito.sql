# Gabarito - Atividades MySQL 📚
#########################################
## **Atividade 1: Consultas Básicas**
#########################################

-- 1. Liste todos os dados de todos os clientes
SELECT * FROM clientes;

-- 2. Exiba apenas os nomes e emails de todos os clientes
SELECT nome, email FROM clientes;

-- 3. Mostre os campos: nome, sobrenome, cidade e estado
SELECT nome, sobrenome, cidade, estado FROM clientes;

-- 4. Liste apenas os campos: email, telefone e renda_mensal
SELECT email, telefone, renda_mensal FROM clientes;

#########################################
## **Atividade 2: Filtros Simples com WHERE**
#########################################

-- 1. Liste todos os clientes do estado de Arizona
SELECT * FROM clientes WHERE estado = 'Arizona';

-- 2. Exiba clientes com renda mensal maior que R$ 4.000,00
SELECT * FROM clientes WHERE renda_mensal > 4000.00;

-- 3. Mostre apenas clientes com status 'Ativo'
SELECT * FROM clientes WHERE status_cliente = 'Ativo';

-- 4. Liste clientes do gênero 'Female'
SELECT * FROM clientes WHERE genero = 'Female';

-- 5. Encontre o cliente com ID = 3
SELECT * FROM clientes WHERE id = 3;

#########################################
## **Atividade 3: Operadores de Comparação**
#########################################

-- 1. Clientes com renda mensal entre R$ 3.000,00 e R$ 7.000,00
SELECT * FROM clientes WHERE renda_mensal BETWEEN 3000.00 AND 7000.00;

-- 2. Clientes nascidos antes de 1990-01-01
SELECT * FROM clientes WHERE data_nasc < '1990-01-01';

-- 3. Clientes nascidos depois de 1985-12-31
SELECT * FROM clientes WHERE data_nasc > '1985-12-31';

-- 4. Clientes que NÃO são do estado de New York
SELECT * FROM clientes WHERE estado != 'New York';
-- ou
SELECT * FROM clientes WHERE estado <> 'New York';

-- 5. Clientes com renda maior ou igual a R$ 5.000,00
SELECT * FROM clientes WHERE renda_mensal >= 5000.00;

-- 6. Clientes com status diferente de 'Inativo'
SELECT * FROM clientes WHERE status_cliente != 'Inativo';

#########################################
## **Atividade 4: Filtros Combinados (AND/OR)**
#########################################

-- 1. Clientes do gênero 'Masculino' E do estado 'Texas'
SELECT * FROM clientes WHERE genero = 'Masculino' AND estado = 'Texas';

-- 2. Clientes com renda maior que R$ 4.000 E status 'Ativo'
SELECT * FROM clientes WHERE renda_mensal > 4000.00 AND status_cliente = 'Ativo';

-- 3. Clientes do estado 'Arizona' OU 'New York'
SELECT * FROM clientes WHERE estado = 'Arizona' OR estado = 'New York';
-- ou usando IN
SELECT * FROM clientes WHERE estado IN ('Arizona', 'New York');

-- 4. Clientes com renda menor que R$ 3.000 OU maior que R$ 8.000
SELECT * FROM clientes WHERE renda_mensal < 3000.00 OR renda_mensal > 8000.00;

-- 5. Clientes mulheres OU com renda acima de R$ 6.000
SELECT * FROM clientes WHERE genero = 'Feminino' OR renda_mensal > 6000.00;

-- 6. Clientes ativos E (do estado de Texas OU New York)
SELECT * FROM clientes WHERE status_cliente = 'Ativo' AND (estado = 'Texas' OR estado = 'New York');

#########################################
## **Atividade 5: Ordenação com ORDER BY**
#########################################

-- 1. Clientes ordenados por nome (A-Z)
SELECT * FROM clientes ORDER BY nome ASC;
-- ou simplesmente
SELECT * FROM clientes ORDER BY nome;

-- 2. Clientes ordenados por renda mensal (maior para menor)
SELECT * FROM clientes ORDER BY renda_mensal DESC;

-- 3. Clientes ordenados por data de nascimento (mais novo primeiro)
SELECT * FROM clientes ORDER BY data_nasc DESC;

-- 4. Clientes ordenados por estado e depois por cidade
SELECT * FROM clientes ORDER BY estado, cidade;

-- 5. Clientes ativos ordenados por renda (menor para maior)
SELECT * FROM clientes WHERE status_cliente = 'Ativo' ORDER BY renda_mensal ASC;

-- 6. Lista completa ordenada por: estado, cidade, nome
SELECT * FROM clientes ORDER BY estado, cidade, nome;


#########################################
## **Atividade 6: Funções estatísticas**
#########################################

-- 1. Média salarial dos funcionários inativos em ordem decrescente
SELECT AVG(salario) AS media_salarial
FROM funcionarios
WHERE status = 'Inativo'
ORDER BY media_salarial DESC;

-- 2. Maior salário dos funcionários ativos
SELECT MAX(salario) AS maior_salario
FROM funcionarios
WHERE status = 'Ativo'

-- 3. Menor salário dos funcionários inativos que moram em New York e são do gênero masculino
SELECT MIN(salario) AS menor_salario
FROM funcionarios
WHERE status = 'Inativo' AND cidade = 'New York' AND genero = 'Feminino';

-- 4. Conte quantos funcionários estão inativos, são do gênero feminino e moram em Louisiana
SELECT COUNT(*) AS total_funcionarios
FROM funcionarios
WHERE status = 'Inativo' AND genero = 'Feminino' AND estado = 'Louisiana';
