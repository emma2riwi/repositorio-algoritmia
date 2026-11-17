# Semana 3 - Ciclos y SubProcesos

Esta semana vimos ciclos (Para y Mientras), los patrones de acumulador, contador, máximo, mínimo, bandera y centinela, y cómo partir un problema en SubProcesos. Cada algoritmo tiene su tabla de traza.

## Reto 1 - Cajero con centinela

[01-cajero-centinela.psc](01-cajero-centinela.psc)

Pide montos hasta que escriban 0, que es el centinela. Uso `total` como acumulador y `retiros` como contador. Si meten un monto negativo no lo cuento. Lo importante es leer el siguiente monto al final del ciclo, porque si no el ciclo nunca termina.

Traza con 50000, 20000, -5, 100000 y 0:

| Vuelta | Monto | Total | Retiros |
|---|---|---|---|
| inicio | | 0 | 0 |
| 1 | 50000 | 50000 | 1 |
| 2 | 20000 | 70000 | 2 |
| 3 | -5 | 70000 | 2 (no cuenta) |
| 4 | 100000 | 170000 | 3 |
| | 0 | se acaba el ciclo | |

Si el primer monto es 0, no entra al ciclo y muestra total 0 y 0 retiros.

## Reto 2 - Calificaciones

[02-calificaciones.psc](02-calificaciones.psc)

Pido cuántas notas son y las leo una por una. En el mismo ciclo saco la suma, la nota más alta, la más baja y cuántos reprobaron (menos de 3.0). El máximo y el mínimo arrancan con la primera nota y no con 0, porque si arrancan en 0 el mínimo siempre daría 0. Si dicen que son 0 notas no divido, para no dividir entre 0.

Traza con 4.5, 2.8, 3.9, 2.5 y 5.0:

| i | Nota | Suma | Mayor | Menor | Reprobados |
|---|---|---|---|---|---|
| 1 | 4.5 | 4.5 | 4.5 | 4.5 | 0 |
| 2 | 2.8 | 7.3 | 4.5 | 2.8 | 1 |
| 3 | 3.9 | 11.2 | 4.5 | 2.8 | 1 |
| 4 | 2.5 | 13.7 | 4.5 | 2.5 | 2 |
| 5 | 5.0 | 18.7 | 5.0 | 2.5 | 2 |

Resultado: promedio 3.74, más alta 5, más baja 2.5 y 2 reprobados.

## Reto 3 - Pirámide de asteriscos

[03-piramide-asteriscos.psc](03-piramide-asteriscos.psc)

Son ciclos anidados. El de afuera recorre los niveles y adentro hay dos ciclos: uno escribe los espacios (n - f) y otro los asteriscos (2f - 1). Uso `Escribir Sin Saltar` para que queden en la misma línea. En el primer ciclo puse `Con Paso 1` porque en el último nivel hay 0 espacios, y sin eso PSeInt cuenta de 1 hacia 0 y mete espacios de más.

Traza para n = 3:

| Nivel | Espacios | Asteriscos | Línea |
|---|---|---|---|
| 1 | 2 | 1 | `  *` |
| 2 | 1 | 3 | ` ***` |
| 3 | 0 | 5 | `*****` |

## Reto 4 - Factura de restaurante

[04-factura-restaurante.psc](04-factura-restaurante.psc)

La partí en SubProcesos y antes de programar hice la tabla de qué recibe y qué devuelve cada uno:

| SubProceso | Recibe | Devuelve |
|---|---|---|
| CalcularSubtotal | cuántos platos | el subtotal (pide precio y cantidad de cada plato) |
| CalcularPropina | subtotal y si quiere propina | 10 % del subtotal o 0 |
| DividirCuenta | total y comensales | lo que paga cada uno |
| RedondearMil | un valor | ese valor redondeado hacia arriba a miles |

Así el algoritmo principal queda corto y se lee como el plan: subtotal, propina, total, dividir y redondear. Valido que platos y comensales sean mayores que 0.

Prueba: 2 platos (32000 x 2 y 18500 x 1) dan subtotal 82500. Con propina son 8250 y el total queda en 90750. Entre 3 da 30250, que redondeado queda en 31000 por persona. Sin propina y entre 2 da 41250, que queda en 42000.

## Validación de correo (ejercicio propuesto)

[laboratorios/validacion-usuario.js](laboratorios/validacion-usuario.js)

Lo hice en JavaScript porque ahí vimos `.includes()`. Tiene 3 intentos (contador) y una bandera `valido` que cambia a true cuando el correo tiene "@" y ".". El ciclo para si acierta o si se acaban los intentos.

| Intento | Correo | ¿Tiene @? | ¿Tiene .? | valido |
|---|---|---|---|---|
| 1 | emma | No | No | false |
| 2 | emma@riwi | Sí | No | false |
| 3 | emma@riwi.io | Sí | Sí | true |

Si falla los tres, sale "Cuenta bloqueada".

## Laboratorios de Moodle

Las cuatro partes de un ciclo son inicialización, condición, cuerpo y actualización. Si se me olvida la actualización, el ciclo no termina.

Traza de la venta más grande en [12, 45, 7, 45, 60]: mayor empieza en 12, pasa a 45, sigue en 45 con el 7, sigue en 45 con el otro 45 (porque es igual, no mayor) y termina en 60.

Qué patrón usar:
- cuántos productos están agotados: contador
- el total vendido en el día: acumulador
- si hubo alguna venta de más de un millón: bandera
- la venta más pequeña del mes: mínimo
- pedir montos hasta que escriban 0: centinela
- 3 oportunidades para el PIN: intentos limitados
- una lista nueva con los nombres en mayúscula: construcción de resultados

En [laboratorios/](laboratorios/) están calificaciones.js (da promedio 3.74, y con la lista vacía da 0 en vez de NaN) y carrito.js (con cupón da 147230 y sin cupón con envío gratis da 190400).
