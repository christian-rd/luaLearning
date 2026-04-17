-- repete uma ação até uma ação não precisar mais ser repetida
-- -> se repete enquando a ação for falsa <-
-- Diferença WHILE  e REPET
--  WHILE: realiza o comando enquanto a setença for verdadeira, quando for falso ele para
--  REPET: realiza o comando enquanto a setença for falsa, quando for verdadeira ele para

local numero = 0

repeat -- repete
    numero = math.random(0, 5)
    print(numero)
until numero == 5 -- se repete até isso ser verdadeiro