-- se  repete enquanto for true, quando for false ele para

local numero = 0

while numero ~= 20 do
    numero = math.random(10, 20)
    print(numero)
end

local numero2 = 0 

while numero2 < 9 do
    numero2 = numero2 + 1
    print(numero2)
end
print('--')
local numero3 = 10

while numero3 > 1 do
    numero3 = numero3 - 1
    print(numero3)
end