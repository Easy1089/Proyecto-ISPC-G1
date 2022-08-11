#Ejemplo de multiplicación de dos números en Python.
def multiplicacion(a, b):
    return (a * b)

a = int(input('Ingrese primer número: '))
b = int(input('Ingrese segundo número: '))

print(f'La multiplicacion de {a} por {b} es igual a: {multiplicacion(a, b)}')
