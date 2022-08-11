from traceback import print_tb


print("-" *50)
print("Conversor de Dólar a Peso Argentino 08/06/2022")
print("-" *50)
print("Selecciona alguna acción, 1 o 2:")
print("")
print("(1) Dólar a Peso Argentino")
print("(2) Peso Argentino a Dólar")
print("")
print("-" *50)
var = input("Seleccione lo que desee hacer: ")

if var == "1":
    print("-" *50)
    dolares = float(input("Ingrese la cantidad de dolares que quiere pasar a pesos: "))
    respuesta = dolares * 121.46
    respuesta = round(respuesta, 4)
    print("")
    print("$",dolares,"dolares son un total de: $",respuesta, "pesos argentinos. (08/06/2022)")
    print("")
    
if var == "2":
    print("-" *50)
    pesos = float(input("Ingrese la cantidad de pesos que quiere pasar a dolares: "))
    respuesta = pesos * 0.0082
    respuesta = round(respuesta, 4)
    print("")
    print("$",pesos,"pesos son un total de:$",respuesta, "dolar/es. (08/06/2022) ")
    print("")
    print("-" *50)