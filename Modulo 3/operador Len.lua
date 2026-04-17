-- serve para medir o comprimento de informações
-- simbolo #
-- consegue medir: tabelas, strings

local tableTamanho = {
    45454,
    454,
    8989,
    1212,
    34343,
    112,
    99,
    nome = 'aa' -- não irá contar pois não é índice
}
-- print(#tableTamanho)

local nome = 'arroz'
-- print(#nome) -- irá medir o tamanho de caracteres dessa string / se tiver espaço também irá contar

local tabela = {20, 50, 60}

for key, value in ipairs(tabela) do
    print(key, value)
end

-- jeito de evitar fazer
for i = 1, #tabela do
    print(tabela[i])
end
--