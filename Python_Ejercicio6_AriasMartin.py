#Crea la tupla
historial2 = (23500, 5960, 2300, 10200, 8900)

monto_total = sum(historial2)

print(f"Monto total gastado a lo largo del tiempo por atención de “Frida” -> ${monto_total}.")

def recuentoDeGastos(unaTuple):
    contador = 0
    for elem in historial2:
        if elem > 5000:
            contador = contador + 1
    return contador

print("Cantidad de consumos superiores a $5000 para la mascota: “Frida” ->",recuentoDeGastos(historial2))