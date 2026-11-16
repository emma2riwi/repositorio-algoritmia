#Solicita dos números y una operación (+, -, *, /). Muestra el resultado y evita la división entre cero.
#sugerencias de la ia ponerla en vez de int float
num1 = float(input("ingresa número que quieras operar: "))
num2 = float(input("ingresa número que quieras operar: "))
print("selecciona un operador entre: +, -, *, /")
operador = input("ingresa operador")
if operador == "+": 
    print(num1 + num2)
elif operador == "-":
    print(num1 - num2)
elif operador == "*":
    print(num1 * num2)
elif operador == "/": 
    if num2 != 0:
        print(num1 / num2)
    else:
        print("no se puede dividir por 0")
else:
    print("corre de nuevo y agrefa un operador entre: +, -, *, /")
