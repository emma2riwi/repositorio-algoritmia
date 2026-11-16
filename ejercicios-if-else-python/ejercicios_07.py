#Solicita la edad de una persona e indica si puede ingresar a un evento para mayores de 18 años. Valida que la edad no sea negativa.
edad = int(input("ingresa tu edad: "))

# Primero se descarta el caso inválido; luego 18 o más puede entrar (18 incluido)
if edad < 0:
    print("edad no valida")
elif edad >= 18:
    print("puede ingresar al evento")
else:
    print("no puede ingresar: es menor de 18")
