-- function que nao estao em bibliotecas, estao em escopo global
-- # type()
    -- retorna o tipo de dado passado

--print(type(1))
--print(type(function() end))
--print(type('texto qualquer'))

-- # tonumber()
    -- transforma uma string numerica em numero, '1' -> 1
local numero = '1'
local numeroTratado = tonumber(numero)
--print(type(1))
--print(type(numero))
--print(type(numeroTratado))

-- # load()
    -- serve para interpretar um codigo que esta como string

local texto = 'print("interpretando isso")'
local functionInterpretar = load(texto) -- armazenando em uma variavel para conseguir chamar e usar
--functionInterpretar()

-- # tostring()
    -- serve para auxiliar transformar qualquer dado em string, podendo concatenar mesmo sendo nil
    -- bem usado para debugar codigo para ver qual o valor sem retornar nil

local textoT = nil
--print(textoT .. 'a') -- dessa forma ira dar erro pois a variavel e nil
--print(tostring(textoT) .. ' a') -- dessa forma mesmo o valor sendo nulo ira mostralo como string