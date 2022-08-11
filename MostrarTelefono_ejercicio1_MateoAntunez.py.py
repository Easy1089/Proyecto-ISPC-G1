#Enzo Mateo Antunez

print("\033[4;35m"+"Bienvenido al super programa")

print("──▒▒▒▒▒▒───▄████▄")
print("─▒─▄▒─▄▒──███▄█▀")
print("─▒▒▒▒▒▒▒─▐████──█─█")
print("─▒▒▒▒▒▒▒──█████▄")
print("─▒─▒─▒─▒───▀████▀")

print("\x1b[1;36m"+"Ejercicio numero 1 ") 
print("\x1b[1;34m"+"Muestre en pantalla el teléfono del dueño si el DNI es mayor a 26000000. ") 

telefono = 4789689
nombre = "Juan"
apellido = "Perez"
dni = 28957346
direccion = "Belgrano 101"

dueno = [dni, nombre, apellido, telefono,direccion]

if dni > 26000000:
    print("\x1b[1;33m"+"Su numero de telefono es: ",telefono) 
else:
    print("\033[5;34;47m"+"El Programa ha finalizado, el dni no supera la cantidad de 26000000"+'\033[0;m') 