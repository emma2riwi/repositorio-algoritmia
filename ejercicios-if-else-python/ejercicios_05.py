#Solicita dos números e indica cuál es mayor o si son iguales.

num1 = int(input("ingresa número 1: "))
num2 = int(input("ingresa número 2: "))

if num1 > num2: 
    print(num1, "es mayor que", num2)
elif num2 > num1:
    print(num2, "es mayor que", num1)
else: 
    print("son el mismo numero")