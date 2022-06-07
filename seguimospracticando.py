pre=float(input("Ingrese el precio del articulo: "))
pag=float(input("'¿cuanto ha pagado el cliente? "))

cambio=pag-pre
faltante=pre-pag


if (cambio<0) :
    print ("Falta dinero en el pago. El dinero faltante es ",faltante)

    elif (cambio==0) :
        print ("Se ah pagado exacto. No es necesario dar cambio.")

if (cambio>0) :
    print ("El cambio a dar es ",cambio)
