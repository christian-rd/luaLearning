-- ou (or) e (and)
-- or: 1 == 2, 4 < 4, 5 == 5 - ou seja a PRIMEIRA das validações tem que ser verdadeira para continuar, essa ou essa ou essa
-- and: 1 == 2, 4 < 4, 5 == 5 - mais de uma validação tem que ser verdadeira ou todas seram falsas

--
var = nil

if not var then
    var = 10
end

-- Versão Clean Code

var = nil

var = var or 10

print(var)