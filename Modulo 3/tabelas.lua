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