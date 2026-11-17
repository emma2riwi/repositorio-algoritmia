# Semana 2 · Lógica proposicional y estructuras de decisión

**Evidencia pedida:** algoritmos de decisión en PSeInt con su tabla de verdad o de decisión y una prueba de escritorio que incluya los casos borde. Cada `.psc` trae ambas en sus comentarios.

## Retos

| # | Ejercicio | Archivos |
|---|---|---|
| 1 | De la regla a la condición: tablas de verdad | [`01-tablas-de-verdad.md`](01-tablas-de-verdad.md), [`01-acceso-evento.psc`](01-acceso-evento.psc) |
| 2 | Negar sin equivocarse: De Morgan en validaciones | [`02-de-morgan-validaciones.md`](02-de-morgan-validaciones.md), [`02-formulario-de-morgan.psc`](02-formulario-de-morgan.psc) |
| 3 | Tarifas del parqueadero: tabla de decisión en PSeInt | [`03-tarifa-parqueadero.psc`](03-tarifa-parqueadero.psc) |
| 4 | Semáforo de inventario y año bisiesto: casos borde | [`04-semaforo-inventario.psc`](04-semaforo-inventario.psc), [`04-anio-bisiesto.psc`](04-anio-bisiesto.psc) |

## Ejercicios propuestos del soporte temático (los cinco)

| Ejercicio | Archivo | Casos borde probados |
|---|---|---|
| Año bisiesto | `04-anio-bisiesto.psc` | 1900, 2000, 2024, 2026 |
| Acceso a un evento | `01-acceso-evento.psc` | edad 17/18, sin boleta, edad negativa |
| Tarifa de un gimnasio | [`05-tarifa-gimnasio.psc`](05-tarifa-gimnasio.psc) | estudiante y mayor de 60 a la vez, edad 60/61 |
| Validador de contraseña | `02-de-morgan-validaciones.md` (tabla, pseudocódigo y prueba) | 7/8 caracteres, sin número, "Password1" |
| Semáforo de inventario | `04-semaforo-inventario.psc` | -1, 0, 1, 10, 11 |

## Laboratorios de Moodle

**Prueba de escritorio del parqueadero** (también está en `03-tarifa-parqueadero.psc`):

| Horas | Factura | Paga |
|---|---|---|
| 0 | No | Error |
| 0.5 | No | 3 000 |
| 2 | Sí | 0 |
| 2.1 | Sí | 3 000 |
| 6 | No | 18 000 |
| 6.01 | No | 20 000 |

**Año bisiesto y semáforo en JavaScript:** [`laboratorios/bisiesto-semaforo.js`](laboratorios/bisiesto-semaforo.js). Se ejecuta con `node laboratorios/bisiesto-semaforo.js`. Usa `===` y `!==`, nunca `==`.

**Del lenguaje natural a la condición:** la tabla está al final de [`01-tablas-de-verdad.md`](01-tablas-de-verdad.md).

## Ideas clave
- En una decisión múltiple se ejecuta **la primera condición verdadera**, así que el orden importa: primero los casos especiales (retorno temprano).
- Precedencia: `!` → `&&` → `||`. Por ejemplo, `true || false && false` da `true`.
- Siempre se prueban **los límites** (17/18, 6/6.01, 10/11).
