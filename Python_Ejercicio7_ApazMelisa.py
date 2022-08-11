'''
7)  Crear una tupla en Python con el nombre de “Historial3” la cual
 contenga los siguientes valores:
9530, 4120, 4580, 1500, 890,7516,426

Que representa montos de atención en pesos por diferentes servicios/consultas 
de la mascota “Lennon”. Calcular el promedio de gasto en pesos por atención de “Lennon” mostrándolo en pantalla. 
Si el promedio es mayor a 4500 indicar con un mensaje “Se ha excedido del gasto promedio para su mascota”.
'''

#Se crea la tupla Historial3
Historial3 = (9530, 4120, 4580, 1500, 890,7516,426)
cantidadElementos = len(Historial3)
total = 0
promedio = 0

#print(cantidadElementos)

for elem in Historial3:
    total = total + elem

promedio = total / cantidadElementos

#print(total)
#print(round(promedio, 2))

if promedio > 4500:
    print("Se ha excedido del gasto promedio para su mascota")
else:
    print("El promedio de gastos es: ", round(promedio, 2))