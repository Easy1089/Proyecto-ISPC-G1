'''8) Crear una tupla en Python con el nombre de “Historial4” la cual contenga los siguientes valores:
7510, 7960, 76180, 800, 4100
Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Olivia”. 
Cree una función para determinar el valor mínimo de atención gastada en “Olivia”  mostrándolo en pantalla.
'''
#Se crea la tupla Historial4
Historial4 = (7510, 7960, 76180, 800, 4100)

#Se crea la función valorMinimo que recibe la tupla Historial4.
#Obtengo el valor mínimo de la tupla y la muestro por pantalla.
def valorMinimo(unaTuple):
    minimo = min(unaTuple)
    print("El valor mínimo de atención gastada en “Olivia” es: ", minimo)

#Llamo a la función
valorMinimo(Historial4)