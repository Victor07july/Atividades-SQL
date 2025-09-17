USE exercicio_sql;

# Ao terminar a atividade, adicione este arquivo em seu repositório GitHub.

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
-- 1. Liste todos os clientes do estado de Arizona

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

-- 1. Clientes do gênero 'Masculino' E do estado 'Texas'

-- 2. Clientes com renda maior que R$ 4.000 E status 'Ativo'

-- 3. Clientes do estado 'Arizona' OU 'New York'


-- 4. Clientes com renda menor que R$ 3.000 OU maior que R$ 8.000

-- 5. Clientes mulheres OU com renda acima de R$ 6.000

-- 6. Clientes ativos E (do estado de Texas OU New York)


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


#########################################
## **Atividade 7: DISTINCT**
#########################################

-- 1. Liste todos os estados únicos dos clientes (sem repetições)

-- 2. Exiba as cidades únicas dos clientes do estado de Texas

-- 3. Mostre os gêneros únicos presentes na tabela de clientes

-- 4. Liste os status únicos dos clientes

-- 5. Exiba as combinações únicas de estado e cidade dos clientes

-- 6. Mostre os anos únicos de nascimento dos clientes (use YEAR(data_nasc))

#########################################
## **Atividade 8: GROUP BY e HAVING**
#########################################


-- 1. Mostre os estados que têm mais de 10 clientes (use HAVING)

-- 2. Exiba a renda média por estado dos clientes, apenas para estados com mais de 5 clientes

-- 3. Liste os gêneros e a quantidade de clientes por gênero, mas apenas gêneros com mais de 30 clientes

-- 4. Mostre as cidades e o número de clientes por cidade, ordenado pela quantidade (maior para menor)

-- 5. Encontre os estados com renda média dos clientes superior a R$ 8.000,00

-- 6. Conte quantos clientes ativos e inativos existem por gênero

-- 7. Exiba os anos de nascimento com mais de 15 clientes nascidos naquele ano
