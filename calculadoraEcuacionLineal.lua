-- EJERCICIO UNO:
-- Conbino los siguientes datos:
-- X + Y + Z = 500
-- Z = X + Y - 60
-- 1.06X + 1.12Y + 1.3Z = 592.4
-- Resultado:
-- X + Y + X + Y - 60 = 500
-- 1.06X + 1.12Y + 1.3(X + Y - 60) = 592.4

-- Despejo:
-- 2X + 2Y = 500  ---> AX + BY = C
-- Resultado:
-- Y = 280 - Y

-- Reemplazo:
-- 2.36X + 2.42Y = 670.4
-- Resultado:
-- 2.36X + 2.42(280-X) = 670.4
-- 2.36X + 677.6 - 2.42X = 670.4
-- -0.06X = -7.2
-- X = 120

-- Y = 280 - 120 = 160
-- Z = 120 + 160 - 60 = 220

------------------------------------------------------------------------------------------------------------------------------
-- Ecuaciones Lineales
-- 1. Se despeja una incognita en una ecuacion (la que te parezca mas facil despejar).
-- 2. Se sustituye en la otra ecuacion, quedando una ecuacion de primer grado.
-- 3. Se resuelve la ecuacion de primer grado.
-- 4. El valor obtenido para la incognita lo sustituimos en una de las ecuaciones y operando sacas la otra.

-- PARA EL PASO 3:
-- SI LLEGAS A 0 = 0 ENTONCES HAY INFINITAS SOLUCIONES
-- SI LLEGAS A O = k (K DISTINTO DE 0) NO HAY SOLUCION
-- SI LLEGAS A UN VALOR ENTONCES HAY UNA SOLUCION UNICA Y HACES EL PASO 4

-- DATOS A USAR:
-- 2X + 2Y = 560
-- 2.36X + 2.42Y = 670.4

-- ax + by = c
-- dx + ey = f

-- FUNCION PARA RESOLVER ECUACION
function solucion_sistema_ecuaciones(a,b,c,d,e,f)
    -- x = (c*e - f*b)/(a*e - b*d)
    -- y = (a*f - c*d)/(a*e - b*d)
    determinante = a*e - b*d
    if determinante ~= 0 then
        x = (c*e - f*b)/determinante
        y = (a*f - c*d)/determinante
        print("\nResultado:")
        print("x = "..x.." y = "..y)
    else
        print("No hay solucion")
    end
end

-- CONTROL DE INGRESO DE NUMERO
function inputInt(numero)
    repeat
        if tonumber(numero) then
        else
            print('Error debe ingresar un numero entero.')
            return valoresFuncionLineal()
        end
    until tonumber(numero)
    return tonumber(numero)
end

-- FUNCION PARA QUE LA CALCULADORA FUNCIONE
function valoresFuncionLineal()
    repeat
        print("\nIngrese los valores de la ecuacion en la forma: \nax + by = c \ndx + ey = f\n")
        print("Ingrese valor 'a': ")
        a = tonumber(io.read())
        inputInt(a)
        print("Ingrese valor 'b': ")
        b = tonumber(io.read())
        inputInt(b)
        print("Ingrese valor 'c': ")
        c = tonumber(io.read())
        inputInt(c)
        print("Ingrese valor 'd': ")
        d = tonumber(io.read())
        inputInt(d)
        print("Ingrese valor 'e': ")
        e = tonumber(io.read())
        inputInt(e)
        print("Ingrese valor 'f': ")
        f = tonumber(io.read())
        inputInt(f)
    until tonumber(a) and tonumber(b) and tonumber(c) and tonumber(d) and tonumber(e) and tonumber(f)

    solucion_sistema_ecuaciones(a,b,c,d,e,f)
    
    print("\nOtra consulta? Si/No")
    resp = io.read()
    print("\n")
    if string.lower(resp) == "si" then
        return valoresFuncionLineal()
    elseif string.lower(resp) == "no" then
        os.exit()
    end 
end

valoresFuncionLineal()