-- Crear algoritmia en lua que resuelva ejercicio UNO en guía de ecuaciones Lineales. 
-- De tal forma que si el usuario le carga otros valores se resuelva automáticamente la ecuación.
-- El usuario debe ingresar los valores de la ecuación en la forma: (2,4) y (-3,-1)
-- CÁLCULO DE LA PENDIENTE: Encuentre la pendiente de la recta que pasa por los puntos dados en
-- cada caso. Graficar
-- a. (-1,0) y (2,6)     
-- b. (3,-5) y (4,-6)
-- c. (0,4) y (-4,-2)

-- PENDIENTE (m): Encuentre la pendiente de la recta que pasa por los puntos dados en cada caso.
-- m = (y2 - y1) / (x2 - x1)
--(a,b) y (c,d)
function pendiente(a,b,c,d)
    pendiente = (d-b)/(c-a)
    return pendiente
end

-- INTERSECCIÓN CON Y (b): (a,b)
function interseccion_con_y(a,b,m)
    lado_uno = (m*a) -- + b incognita
    lado_dos = b - lado_uno
    return lado_dos
end

-- ESCRIBIR ECUACION: y = mx + b
function escribirEcuacion(m,b)
    texto = "Ecuacion: y = "
    texto = texto..m.."x + "..b
    return texto
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
        print("\nIngrese los valores de la ecuacion en la forma: (a,b) y (c,d)\n")
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
    until tonumber(a) and tonumber(b) and tonumber(c) and tonumber(d)

    --calculadora(a,b,c)
    m = pendiente(a,b,c,d)
    b_intersect = interseccion_con_y(a,b,m)
    print("\nLa pendiente de la recta es: "..m)
    print("\nLa interseccion con el eje Y es: "..b_intersect)
    print(escribirEcuacion(m,b_intersect))
    
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

