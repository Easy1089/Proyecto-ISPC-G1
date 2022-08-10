#5)      Crear una tupla en Python con el nombre de “Historial” la cual contenga los siguientes valores:
#  2350, 5960, 23000, 1000, 8900
# Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Puppy”. Calcular el monto total gastado a lo largo del tiempo por atención de “Puppy”. Si el gasto efectuado es menor a 30000, mostrar en pantalla dicho resultado, caso contrario mostrar el mensaje “Gastos por encima de lo presupuestado”.

Historial = ( 2350, 5960, 23000, 1000, 8900)

GastosPuppy = sum (Historial)

if GastosPuppy < 30000:
    print (GastosPuppy)
else:
    print ("Gastos por encima de lo presupuestado")