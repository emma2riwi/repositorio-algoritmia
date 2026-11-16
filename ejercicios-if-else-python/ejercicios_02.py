#Solicita dos números, calcula su suma y resta. Indica si la suma es mayor que 10.
num1 = int(input("dame numero 1: "))
num2 =int(input("dame numero 2: "))

suma = num1 + num2 
resta = num1 - num2

if suma >10:
    print("la suma es mayor es 10")
else: 
    print("numero menor a 10")
print("suma: ", suma, "resta: ", resta)