-- agrupamento de dados podendo conter passos, condições etc. sendo usados somentes quando chamados

function BomDia()
    print('Ola')
end

--BomDia()

function numerologia()
    if 2 == 2 then
        print('Comeu arroz')
    else
        print('Sei não ein')
    end
end

--numerologia()

-- # Argumentos: dados que podem ser passados nos argumento da função para serem usado - exemplo(dado)
-- 1) recebe o argumento através de uma variavel na criação da função e o dado no chamado da mesma

function soma(numero, numero2)
    print(numero + numero2)
end

--soma(1,7)
--soma(55,89)

function saudacao(comprimento)
    print(comprimento)
end

-- saudacao('oba bom ?')
-- saudacao('iae turubom ?')

-- # Função que retorna: > return < , para mostrar o dado que essa função tem deve printar o chamado dela

function semnome()
    return 'iae'
end

-- print(semnome())
-- semnome() - forma errada caso queira que mostre o que tem na função de return

local fala = 'iae'

function falando(text)
    if fala == 'oi' then
        return 'oi, tudo bom? ' .. text
    elseif fala == 'iae' then
        return 'iae, tudo bom? ' .. text
    end
end

-- print('Escrita qualquer. ' ..falando('flower'))
-- falando() - forma errada caso queira que mostre o que tem na função de return

-- # Funções Callback e High Order Function
-- Calback: Parametro em formato de Função passado para uma Função
-- High Order Function: Função que recebe o Callback

-- # High Order Function - Função que está recebendo o Callback aqui -> (aqui)
function recebe(argumento)
    argumento()
end

-- # Callback: Função que está passando como paramento () uma função para outra função que irá receber
-- I) chama a função: chamadaFuncao(), cria a Funcao dentro do argumento ()
recebe(
    function()
        print('eu d')
    end
)
