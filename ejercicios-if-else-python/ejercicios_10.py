#Solicita un usuario y una contraseña. Compara los datos con valores definidos y permite el acceso si ambos coinciden.

# Valores definidos de ejemplo (en una app real no se escriben en el código)
usuario_correcto = "admin"
clave_correcta = "riwi2026"

usuario = input("usuario: ")
clave = input("contraseña: ")

# Se necesitan las DOS condiciones: and
if usuario == usuario_correcto and clave == clave_correcta:
    print("acceso permitido")
else:
    # No se dice cuál de los dos falló, para no darle pistas a un intruso
    print("usuario o contraseña incorrectos")

# Pruebas: admin/riwi2026 -> permitido | admin/otra -> incorrectos | otro/riwi2026 -> incorrectos
