#Solicita una nota de 0 a 100 e indica si el estudiante está aprobado (70 o más) o reprobado. Valida la nota.
nota = float(input("ingresa la nota (0 a 100): "))

# Validación primero: la nota solo puede estar entre 0 y 100
if nota < 0 or nota > 100:
    print("nota no valida")
elif nota >= 70:
    print("aprobado")
else:
    print("reprobado")

# Pruebas: -1 -> no valida | 69.9 -> reprobado | 70 -> aprobado | 100 -> aprobado | 101 -> no valida
