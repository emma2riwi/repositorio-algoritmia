# Reto 2 - De Morgan en validaciones

De Morgan dice que para negar una condición compuesta hay que negar cada parte y cambiar el conector: `no (A y B)` es `no A o no B`.

## El formulario

Un formulario es válido si tiene correo y contraseña. Para saber cuándo NO es válido, lo correcto es `no correoLleno o no passwordLleno`, porque basta con que falte uno.

El error que dicen en clase que todos cometen es poner `no correoLleno y no passwordLleno`. Eso solo avisa cuando faltan los dos:

| Correo | Contraseña | Negación correcta | Error común |
|---|---|---|---|
| S | S | válido | válido |
| S | N | avisa | no avisa (mal) |
| N | S | avisa | no avisa (mal) |
| N | N | avisa | avisa |

Lo hice en PSeInt en [02-formulario-de-morgan.psc](02-formulario-de-morgan.psc) y probé las cuatro combinaciones.

## Validador de contraseña (ejercicio propuesto)

La contraseña sirve si tiene al menos 8 caracteres, tiene algún número y no tiene la palabra "password". Negando con De Morgan, es inválida si tiene menos de 8, o si no tiene número, o si tiene "password". Cada una de esas partes es un mensaje de error distinto.

Así lo pensé en pseudocódigo:

```
SI NO tieneOchoCaracteres ENTONCES mostrar "Debe tener al menos 8 caracteres"
SI NO tieneNumero ENTONCES mostrar "Debe incluir al menos un número"
SI contienePassword ENTONCES mostrar "No puede contener la palabra password"
SI tieneOchoCaracteres Y tieneNumero Y NO contienePassword ENTONCES mostrar "Contraseña válida"
```

Prueba de escritorio:

| Contraseña | Resultado |
|---|---|
| riwi2026 | válida (tiene 8 justos) |
| riwi202 | error: menos de 8 |
| abcdefgh | error: no tiene número |
| Password1 | error: tiene "password" |
| abc | dos errores: menos de 8 y sin número |
