-- # string.sub()
    -- utilizado para capturar parte da string de um começo até o final, podendo começar do inicio ou fim da string

local texto = ' um texto qualquer'

local captura = string.sub(texto, 3) -- na variavel -> texto <- a partir do 3 caractere
--print(captura)

local captura2 = string.sub(texto, -5) -- na variavel -> texto <- a partir do 5 caractere da direita pra esquerda
--print(captura2)

local captura3 = string.sub(texto, 3, 6) -- na variavel -> texto <- a partir do 3 caractere até o 6
--print(captura3)

local captura4 = string.sub(texto, -5, -1) -- na variavel -> texto <- a partir do 3 caractere
--print(captura4)

-- # string.lower() e string.upper()
    -- lower() deixar tudo minusculo
    -- upper() deixar tudo maiusculo

local mensagem = 'uM texTO qualQUER'
--print(string.upper(mensagem))
--print(string.lower(mensagem)) 
local aviso = 'feijão' -- caractesres do tipo acento e afins não funcionam o upper() e lower()

-- # string.find() geralmente usado em condicoes

local textoO = 'uma frase qualquer'
--print(string.find(textoO, 'frase')) -- esta verificando se tem 'frase' e retorna a posicao dos caractere, se nao tiver retorna nil
--print(string.find(textoO, 'eu')) -- como não encontrou 'eu' ira retornar nil

local email = 'email@email.com'

function emailValidation(email) -- funcao simples de exemplo para verificar um email validado vendo se tem '@' nos caracteres
    if string.find(email, '@') then
        return true
    else 
        return false
    end
end
--print(emailValidation(email))

-- # string.gsub() utilizado para sobrepor um trecho de string por outro

local textoA = 'Uma mensagem qualquer aqui'
local textoAB = string.gsub(textoA, 'aqui', 'ali')
--print('Antiga: ' ..textoA)
--print('Nova: ' ..textoAB)