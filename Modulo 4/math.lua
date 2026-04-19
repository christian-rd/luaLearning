-- math.abs()
    -- utilizado para transformar um negativo em positivo / modulo do numero
print(math.abs(-5))

-- math.floor() (chão) / math.ceil() (teto)
    -- floor arrendonda um número para baixo
    -- ceil arrendonda um número para cima
print(math.floor(1.2))
print(math.ceil(1.2))

-- math.min() (minimo) / math.max() (maximo)
    -- valor minimo e valor maximo de algum dado igualado 

print(math.min(5,9))
print(math.max(5,9))

local numero = 25
local final = 20 - numero
print('Numero: ' ..math.max(final, 0))
print('Numero: ' ..math.min(final, 10))

-- math.random() podendo passar valores de minimo e máximo para randomizar entre eles
    -- se não passar um argumento ele irá mostrar um numero aleatório entre 0 e 1
    -- se passar só um argumento ele irá considerar o 1 como primeiro e o argumento como ultimo

print(math.random()) -- irá mostrar um numero entre 0 e 1
print(math.random(5)) -- irá mostrar um numero entre 1 e 5
print(math.random(5, 50)) -- irá mostrar um numero entre 5 e 50
print(math.random(5, 4)) -- se o primeiro argumento for maior que o segundo ele irá mostrar que é vazio