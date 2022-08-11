#Valores
Id_Perro = 13
nombre = "Puppy"
nacimiento = "12/12/2012"
sexo = "Macho"
dni = 123

#Lista
Perro = [Id_Perro, nombre, nacimiento, sexo, dni]

#Cambio de valores en la lista
for x in range(len(Perro)):

    if Perro[x] == "12/12/2012":
        Perro[x] = "13/12/2012"

    if Perro[x] == 123:
        Perro[x] = 28957346

print(Perro)