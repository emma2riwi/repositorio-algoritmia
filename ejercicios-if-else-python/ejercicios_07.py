#Solicita la edad de una persona e indica si puede ingresar a un evento para mayores de 18 años. Valida que la edad no sea negativa.
edad = int(input("ingresa tu edad: "))

if edad < 0:
    print("edad no valida")
elif edad > 18:
    print("es mayor de 18")
elif edad < 18:
    print("es menor de 18")