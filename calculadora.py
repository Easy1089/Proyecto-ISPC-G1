from decimal import DivisionByZero

def sumar(valor1, valor2):
    total = int(valor1) + int(valor2)
    return total

def restar(valor1, valor2):
    total = int(valor1) - int(valor2)
    return total

def multiplicar(valor1, valor2):
    total = int(valor1) * int(valor2)
    return total

def exponencial(valor1, valor2):
    total = int(valor1) ** int(valor2)
    return total

def division(valor1, valor2):
    total = int(valor1) / int(valor2)
    return float(total)

print('Calculadora')
operacion = 0
while operacion != 6:
    print('--------------------------------------')
    print('1.Sumar')
    print('2.Restar')
    print('3.Multiplicacion')
    print('4.Division')
    print('5.Exponencial')
    print('6.Salir')
    print('---------------------')

    try:
        operacion = int(input('Ingrese una operación: '))
    except ValueError:
        print("¡Debe ingresar sólo números!")

    if operacion < 1 or operacion > 6:
        print()
        print("***********************")
        print("ATENCIÓN: Operación inexistente. Intente nuevamente.")
        print("***********************")
    else:  
        try:
            valor1 = int(input('Ingrese una nro: '))
        except ValueError:
            print()
            print("--->¡Debe ingresar sólo números!")

        try:  
            valor2 = int(input('Ingrese otro nro: '))
        except ValueError:
            print("¡Debe ingresar sólo números!")

        resultadoOperacion = 0

        try:
            if operacion == 1: #suma
                resultadoOperacion = sumar(valor1, valor2)
            elif operacion == 2: #suma
                resultadoOperacion = restar(valor1, valor2)
            elif operacion == 3: #Multiplicacion
                resultadoOperacion = multiplicar(valor1, valor2)       
            elif operacion == 4: #División
                resultadoOperacion = division(valor1, valor2)      
            else: #Exponencial
                resultadoOperacion = exponencial(valor1, valor2)
        except ValueError:
            print("Error de value error")
        except DivisionByZero:
            print("División por cero")
        except:
            print()
            print("***********************")
            print("ERROR: Comuniquese con soporte")
            print("***********************")
            break

        print()
        print("El resultado de la operación es: " , resultadoOperacion)

#Prueba de tocar calculadora en Master para bajar a branch local
#Prueba para investigar comando fetch
#Esto es una pruebaaaaaaaaaaaaaaaaaaaaaaa!!!
#Aprendiendo tirar comandos desde GitBash!!!