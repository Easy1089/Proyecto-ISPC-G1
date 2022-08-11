''''
3)  Crear un lista en Python denominado “Perro” que contenga los siguientes valores:

13,  Puppy,  12/12/2012 , Macho, 123

Que se corresponde con los datos de un perro de nuestra base de datos 
(Id_Perro, nombre, fecha de nacimiento, sexo y dni del dueño). 
Modificar la fecha de nacimiento por 13/12/2012 y reemplazar “dni del dueño” por 28957346 .
'''

#Creo la lista
my_list = [13, 'Puppy', '12/12/2012', 'Macho', 123]

#Actualizo la fecha:
my_list[2] = '13/12/2012'

#Actualizo DNI:
my_list[4] = 28957346

print(my_list)  