# Semana 2 - Lógica y decisiones

Esta semana fue de proposiciones, tablas de verdad y decisiones con Si / SiNo. Lo que pedían era cada algoritmo con su tabla de verdad o de decisión y una prueba de escritorio con los casos borde.

## Reto 1 - Tablas de verdad

El algoritmo del evento es [01-acceso-evento.psc](01-acceso-evento.psc).

En el evento primero reviso que la edad no sea negativa. Después guardo cada proposición con nombre (esMayor, tieneBoleta, vaAcompanado) y la regla queda `tieneBoleta Y (esMayor O vaAcompanado)`. Si no entra, le digo por qué: si es por la boleta o porque es menor y va solo.

| Edad | Boleta | Acompañado | Resultado |
|---|---|---|---|
| 25 | S | N | entra |
| 18 | S | N | entra (18 ya cuenta como mayor) |
| 17 | S | N | no entra, necesita un adulto |
| 17 | S | S | entra |
| 30 | N | S | no entra, necesita boleta |
| -1 | | | error |

## Reto 2 - De Morgan

[02-formulario-de-morgan.psc](02-formulario-de-morgan.psc)

Un formulario es válido si tiene correo y contraseña. Para saber cuándo no es válido uso De Morgan: `No correoLleno O No passwordLleno`, porque basta con que falte uno. Si lo escribiera con Y, solo avisaría cuando faltan los dos.

| Correo | Contraseña | Resultado |
|---|---|---|
| S | S | válido |
| S | N | revisa los campos |
| N | S | revisa los campos |
| N | N | revisa los campos |

## Reto 3 - Parqueadero

[03-tarifa-parqueadero.psc](03-tarifa-parqueadero.psc)

Cobran 3000 por hora o fracción. Si pasa de 6 horas es tarifa plana de 20000, con factura las 2 primeras horas son gratis, y 0 horas o menos es error.

Primero descarto el error y la tarifa plana. Para "hora o fracción" tenía que redondear hacia arriba: uso `redon` y si quedó por debajo de las horas reales le sumo 1. Con factura le resto 2 horas, sin dejar que quede negativo.

| ¿Válido? | ¿Más de 6 h? | ¿Factura? | Cobro |
|---|---|---|---|
| No | | | Error |
| Sí | Sí | | 20000 |
| Sí | No | Sí | (horas redondeadas - 2) × 3000, mínimo 0 |
| Sí | No | No | horas redondeadas × 3000 |

| Horas | Factura | Paga |
|---|---|---|
| 0 | N | Error |
| 0.5 | N | 3000 |
| 2 | S | 0 |
| 2.1 | S | 3000 |
| 6 | N | 18000 (6 no es "más de 6") |
| 6.01 | N | 20000 |

## Reto 4 - Semáforo de inventario y año bisiesto

En el semáforo ([04-semaforo-inventario.psc](04-semaforo-inventario.psc)) el orden importa. Pregunto primero si es negativo (Error), luego si es 0 (Agotado), luego si es 10 o menos (Bajo), y lo que queda es Disponible. Probé los límites: -1 Error, 0 Agotado, 1 Bajo, 10 Bajo y 11 Disponible.

En el bisiesto ([04-anio-bisiesto.psc](04-anio-bisiesto.psc)) la regla es divisible entre 4 y no entre 100, o divisible entre 400. Para "divisible" uso MOD, que es el residuo (como el % de JavaScript).

| Año | Resultado |
|---|---|
| 1900 | no (divisible entre 100 pero no entre 400) |
| 2000 | sí (divisible entre 400) |
| 2024 | sí |
| 2026 | no |

## Gimnasio (ejercicio propuesto)

[05-tarifa-gimnasio.psc](05-tarifa-gimnasio.psc)

Estudiantes tienen 50 % de descuento y mayores de 60 tienen 40 %. Si cumple las dos, le doy el mayor, o sea 50 %. Haciendo la tabla vi que "estudiante" siempre gana, así que pregunto eso primero.

| Estudiante | Mayor de 60 | Descuento |
|---|---|---|
| Sí | Sí | 50 % |
| Sí | No | 50 % |
| No | Sí | 40 % |
| No | No | 0 % |

Con tarifa de 100000 probé: 20 años estudiante paga 50000, 65 años no estudiante paga 60000, 65 años estudiante paga 50000, 60 años paga 100000 (60 no es mayor de 60) y 61 años paga 60000.

## Laboratorio en JavaScript

[laboratorios/bisiesto-semaforo.js](laboratorios/bisiesto-semaforo.js) tiene el bisiesto y el semáforo en JS, usando `===` como recomiendan. Se corre con `node laboratorios/bisiesto-semaforo.js`.
