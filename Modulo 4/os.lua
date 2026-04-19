-- # os - operando sistema
-- os.date() - serve para mostrar data e horário

print(os.date('%d ' ..'%Y'))
    -- '%x' mostra mes/dia/ano
    -- '%X' mostra hora/segundo/minuto
    -- '%d' mostra dia
    -- '%m' mostra mes
    -- '%y' mostra ano, ultimos dois digitos
    -- '%Y' mostra ano completo

-- # os.time() - segundos sendo contados em tempo real desde 1970
    -- utilizado como por exemplo para calcular a cobranca de algo daqui certo tempo
    -- se o sistema vai fazer a cobranca de um carro a cada 15 dias, se salva o os.time() e soma com a quantidade de segundos que o tempo da cobranca ira acontecer

local taxaV = os.time() + (86400 * 15)
    -- nesse exemplo ele salva os segundos atuais e soma com a quantidade do tempo da taxa que nesse caso sao 15 dias
    -- 86400 representa quantos segundos tem 1 dia

-- # os.clock() - mostra a quanto tempo o programa esta sendo executado
for i = 1, 1000000000 do -- nesse caso vai mostrar quanto tempo levou para fazer isso
end
print(os.clock())