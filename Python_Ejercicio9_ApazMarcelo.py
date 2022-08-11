'''
9) Crear una tupla en Python con el nombre de “Historial5” la cual contenga los siguientes valores:
8520, 9510, 7530, 3570, 1590
Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Toto”. 
Crear una función para determinar el valor máximo de atención gastada en “Toto”.
'''

#Se crea la tupla Historial5
Historial5 = (8520, 9510, 7530, 3570, 1590)
valorMaximoDeAtencion = 0
#Se crea la función valorMinimo que recibe la tupla Historial5.
#Obtengo el valor mínimo de la tupla y la muestro por pantalla.
def valorMaximo(unaTuple):
    valorMaximoDeAtencion = min(unaTuple)
    print("El valor máximo de atención gastada por la mascota “Toto” es: ", valorMaximoDeAtencion)

#Llamo a la función
valorMaximo(Historial5)
