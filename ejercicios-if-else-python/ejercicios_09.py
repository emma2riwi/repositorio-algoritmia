"""
Solicita el precio de una compra:
$200.000 o más: 20 % de descuento.
$100.000 o más: 10 % de descuento.
Menos de $100.000: sin descuento.
Muestra el total a pagar.
"""
precio = float(input("ingresa el valor de la compra: "))

# El orden importa: se pregunta primero por el descuento más alto.
# Si se preguntara primero ">= 100000", una compra de 250.000 recibiría solo el 10 %.
if precio < 0:
    print("valor no valido")
else:
    if precio >= 200000:
        descuento = 0.20
    elif precio >= 100000:
        descuento = 0.10
    else:
        descuento = 0

    total = precio * (1 - descuento)
    print("descuento:", int(descuento * 100), "%")
    print("total a pagar:", total)

# Pruebas: 99999 -> 0 % -> 99999 | 100000 -> 10 % -> 90000 | 200000 -> 20 % -> 160000
