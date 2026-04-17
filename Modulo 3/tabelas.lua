-- Tabelas: estruturas de dados {}
-- Informações da tabela que não seja o valor:
-- Índice (index), Chave (Key), Referência
-- Índice nunca se repete
-- Índice é numérico começando do um

local umaTabela = {
    1,
    7,
    [500] = 99, -- indice de número 500 é 99
    'oi',
    nome = 'arroz' -- chave nome é a string arroz
}

print(umaTabela[500])

local identidade ={
    nome = 'Cleiton',
    idade = 99,
    peso = 120
}

print(identidade.nome)
print(identidade.idade)
print(identidade.peso)

-- Tabelas são estruturas de dados
-- tabelas dentro de tabelas
-- funções dentro de tabelas

local tabelaP = {
    tabelaDois = {
        tabelaTres = {1}
    }
}

print(tabelaP.tabelaDois.tabelaTres[1])

bopeFeminino = {
    _config = {
        permiossions = {"policia.permissao"}
    },
    Uniforme = {
        [2] = {10,0,0},
        [3] = {23,0,0},
        [4] = {32,0,0},
        [5] = {10,0,2},
        [6] = {66,0,9},
        [7] = {89,0,8},
        [8] = {13,0,5},
        [9] = {18,0,0},
        [11] = {42,0,2},
        p0 = {-10,0},
    }
}

print(bopeFeminino._config.permiossions[1])
print(bopeFeminino.Uniforme.p0[1])
print(bopeFeminino.Uniforme[6][3])

-- Funções dentro de tabelas

local tabletFunction = {
    [1] = function ()
        return 'funcao na tabela'
    end,
    exemplo2 = function (mensagem)
        print(mensagem)
    end
}

print(tabletFunction[1]())
tabletFunction.exemplo2('parametro qualquer')

-- # Inserir dados na tabelas
-- 2 formas de inserir dados (de forma simples)
-- 1) Inserir seguindo a ordem índice númerica; 1 2 3 etc.
    -- tablet.insert(nomeDaTabela, dado)

local tableOne = {}

table.insert(tableOne, 'panela')
table.insert(tableOne, 'cao')
table.insert(tableOne, 'vento')

print(tableOne[1])
print(tableOne[2])
print(tableOne[3])

table.remove(tableOne, 1)

print(tableOne[1])
print(tableOne[2])
print(tableOne[3])

-- 2) Inserir um valor determinando a chave/indice   
    -- adicionando valor igual se declara variavel

local tableTwo = {}

tableTwo[1] = 'testando'
tableTwo[25] = 'texto qualquer'
tableTwo[10] = 157
tableTwo[10] = 565 -- podendo alterar o valor tbm
tableTwo.nome = 'Fulano'

print(tableTwo[1])
print(tableTwo[25])
print(tableTwo[10])
print(tableTwo.nome)

tableTwo[1] = nil
print(tableTwo[1])