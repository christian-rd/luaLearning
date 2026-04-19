-- # table.insert() - utilizado para inserir um valor na tabela seguindo a ordem de indice, ou seja no próximo
-- # table.remove() - utilizado para remover um valor informando qual o indice esse valor está

local tabela = {}

table.insert(tabela, 'nome')
table.insert(tabela, 'eu')
--print(tabela[1])
table.remove(tabela, 1) -- vai remover o valor que tem no indice 1, e caso tenha um valor depois passará pra uma casa anterior seguindo a sequencia
--print(tabela[1])

-- # table.concat() - serve para concatenar dados de uma tabela, mas somente dados que tenham indice, dados com chave valor não concatena com ele

local listaPlayers = {4,4545,45454,3232,11,22,34454,7878}
local textoPlayers ='Jogadores acordados sao: '
local jogadoresConnect = table.concat(listaPlayers, ', ')
--print(textoPlayers ..jogadoresConnect) -- a cada valor separa com um espaço

--print('Sem concatenar dados: ' ..table.concat(listaPlayers, '')) -- exemplo sem concatenar
local jogadoresTF = table.concat(listaPlayers, ', ', 1, 5)
--print('Top 5 players: ' ..jogadoresTF) -- mostra do indice 1 ao 5

-- # function para printar uma tabela
function print_table(node)
    -- to make output beautiful
    local function tab(amt)
        local str = ""
        for i=1,amt do
            str = str .. "\t"
        end
        return str
    end
 
    local cache, stack, output = {},{},{}
    local depth = 1
    local output_str = "{\n"
 
    while true do
        local size = 0
        for k,v in pairs(node) do
            size = size + 1
        end
 
        local cur_index = 1
        for k,v in pairs(node) do
            if (cache[node] == nil) or (cur_index >= cache[node]) then
               
                if (string.find(output_str,"}",output_str:len())) then
                    output_str = output_str .. ",\n"
                elseif not (string.find(output_str,"\n",output_str:len())) then
                    output_str = output_str .. "\n"
                end
 
                -- This is necessary for working with HUGE tables otherwise we run out of memory using concat on huge strings
                table.insert(output,output_str)
                output_str = ""
               
                local key
                if (type(k) == "number" or type(k) == "boolean") then
                    key = "["..tostring(k).."]"
                else
                    key = "['"..tostring(k).."']"
                end
 
                if (type(v) == "number" or type(v) == "boolean") then
                    output_str = output_str .. tab(depth) .. key .. " = "..tostring(v)
                elseif (type(v) == "table") then
                    output_str = output_str .. tab(depth) .. key .. " = {\n"
                    table.insert(stack,node)
                    table.insert(stack,v)
                    cache[node] = cur_index+1
                    break
                else
                    output_str = output_str .. tab(depth) .. key .. " = '"..tostring(v).."'"
                end
 
                if (cur_index == size) then
                    output_str = output_str .. "\n" .. tab(depth-1) .. "}"
                else
                    output_str = output_str .. ","
                end
            else
                -- close the table
                if (cur_index == size) then
                    output_str = output_str .. "\n" .. tab(depth-1) .. "}"
                end
            end
 
            cur_index = cur_index + 1
        end
 
        if (#stack > 0) then
            node = stack[#stack]
            stack[#stack] = nil
            depth = cache[node] == nil and depth + 1 or depth - 1
        else
            break
        end
    end
 
    -- This is necessary for working with HUGE tables otherwise we run out of memory using concat on huge strings
    table.insert(output,output_str)
    output_str = table.concat(output)
   
    print(output_str)
end
-- # 

-- # table.sort() - serve para ordenar a tabela

local ordeneN = {5,45,1,7,9,100}
--print_table(ordeneN)
local ordeneT = {'arroz', 'abacaxi', 'camarao', 'bebida', 'chao', 'zero', 'tombo'}
    -- as letras representao numero internamente, quanto mais perto do 'a' menor e o numero, quanto mais proximo do 'z' maior e o numero

print(ordeneT)

table.sort(ordeneN, function (a,b)
        return a < b -- ordem crescente / do menor para o maior
    end
)
--print_table(ordeneN)

table.sort(ordeneN, function (a,b)
        return a > b -- ordem descrescente / do maior para o menor
    end
)
--print_table(ordeneN)

table.sort(ordeneT, function (a,b)
        return a < b -- ordem alfabetica a -> z
    end
)
print_table(ordeneT)

table.sort(ordeneT, function (a,b)
        return a > b -- ordem alfabetica z -> a
    end
)
print_table(ordeneT)