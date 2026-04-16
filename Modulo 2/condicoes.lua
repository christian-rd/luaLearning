--[[ if ('1' == '1') then
    print('forma com parenteses')
end

if 2 > 1 then
    print('Forma sem parenteses, mais usado')
end

if 1 == 1 then
    print('etapa 1')
    if 2 == 2 then
        print('etapa 2')
    end
end ]]

local horas = 15
if horas > 24 then
    print('Horario invalido')
elseif horas >= 18 then
    print('Boa noite')
elseif horas >= 12 then
    print('Boa tarde')
else
    print('Bom dia')
end