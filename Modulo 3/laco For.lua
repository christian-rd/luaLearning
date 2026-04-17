-- for cria laço
-- percorre a setença de código como um laço voltando ao começo até que finalize e pare
-- 1) for númerico
-- 2) for genérico

-- # for númerico
    -- utiliza encrementação na sentença númerica

for i = 1, 5, 4 do -- começa com 1 / vai até o 5 / encrementando +1 / quando chegar ao 5 para ou quando chegar até o anterior mais próximo
    print(i)
end

for i = 50, 45, -1 do -- diminuindo
    print(i)
end

for i = 2, 10, 2 do
    print(i)
    if i == 6 then
        break -- serve para parar o laço antes do previsto
    end
end

-- 2) for genérico
    -- utilizado para tabelas
-- pairs() - utilizado para percorrer toda a tabela
-- ipairs() - utilizado para percorrer toda a tabela para indices somente

local tableFor = {
    10,
    20,
    30,
    40,
    50
}

for indice, valor in ipairs(tableFor) do -- percorrendo indice e valor EM tableFor
    -- ipairs() -- utilizando somente com tabelas de indices
    print(indice, valor)
end

print('-')

local tableFv = {
    34,
    nome = 'exemplo',
    idade = 14,
    69,
    qualquer = 'num sei'
}

for key, value in pairs(tableFv) do -- pairs() utilizado para percorrer indices e chaves
    print(key, value)
end