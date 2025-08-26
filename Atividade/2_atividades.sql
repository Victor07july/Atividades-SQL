USE exercicio_sql;

# Ao terminar a atividade, adicione este arquivo em seu repositório GitHub criado na última aula.

#########################################
## **Atividade 1: Consultas Básicas**
#########################################
-- 1. Liste todos os dados de todos os clientes

-- 2. Exiba apenas os nomes e emails de todos os clientes

-- 3. Mostre os campos: nome, sobrenome, cidade e estado

-- 4. Liste apenas os campos: email, telefone e renda_mensal

#########################################
## **Atividade 2: Filtros Simples com WHERE**
#########################################
-- 1. Liste todos os clientes do estado de São Paulo (SP)

-- 2. Exiba clientes com renda mensal maior que R$ 4.000,00

-- 3. Mostre apenas clientes com status 'Ativo'

-- 4. Liste clientes do gênero 'Female'

-- 5. Encontre o cliente com ID = 3

#########################################
## **Atividade 3: Operadores de Comparação**
#########################################

-- 1. Clientes com renda mensal entre R$ 3.000,00 e R$ 7.000,00

-- 2. Clientes nascidos antes de 1990-01-01

-- 3. Clientes nascidos depois de 1985-12-31

-- 4. Clientes que NÃO são do estado de New York


-- 5. Clientes com renda maior ou igual a R$ 5.000,00

-- 6. Clientes com status diferente de 'Inativo'

#########################################
## **Atividade 4: Filtros Combinados (AND/OR)**
#########################################

-- 1. Clientes do gênero 'Masculino' E do estado 'RJ'

-- 2. Clientes com renda maior que R$ 4.000 E status 'Ativo'

-- 3. Clientes do estado 'SP' OU 'RJ'


-- 4. Clientes com renda menor que R$ 3.000 OU maior que R$ 8.000

-- 5. Clientes mulheres OU com renda acima de R$ 6.000

-- 6. Clientes ativos E (do Rio de Janeiro OU São Paulo)


#########################################
## **Atividade 5: Ordenação com ORDER BY**
#########################################
-- 1. Clientes ordenados por nome (A-Z)

-- 2. Clientes ordenados por renda mensal (maior para menor)

-- 3. Clientes ordenados por data de nascimento (mais novo primeiro)

-- 4. Clientes ordenados por estado e depois por cidade

-- 5. Clientes ativos ordenados por renda (menor para maior)

-- 6. Lista completa ordenada por: estado, cidade, nome


#########################################
## **Atividade 6: Funções estatísticas**
#########################################

-- 1. Média salarial dos funcionários inativos em ordem decrescente

-- 2. Maior salário dos funcionários ativos

-- 3. Menor salário dos funcionários inativos que moram em New York e são do gênero feminino

-- 4. Conte quantos funcionários estão inativos, são do gênero feminino e moram em Louisiana