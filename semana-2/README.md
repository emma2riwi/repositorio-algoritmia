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

## Lógica de cada algoritmo

Los `.psc` van sin comentarios; aquí está la explicación de cada uno, con su tabla y su prueba de escritorio.

### `01-acceso-evento.psc`

```text
Ejercicio propuesto · Acceso a un evento
Regla: entran los mayores de 18 años con boleta, o los menores
acompañados de un adulto (también con boleta).
Proposiciones: esMayor (edad >= 18), tieneBoleta, vaAcompanado.
Condición simplificada (ver tabla de verdad en 01-tablas-de-verdad.md):
  puedeEntrar = tieneBoleta Y (esMayor O vaAcompanado)
Se descarta primero la edad inválida (caso borde).
Proposiciones con nombre: la regla se lee casi como prosa
Prueba de escritorio (casos borde en la edad 17/18):
edad | boleta | acompañado | resultado
 25  |   S    |     N      | Puede entrar
 18  |   S    |     N      | Puede entrar            (límite: 18 ya es mayor)
 17  |   S    |     N      | No: debe venir con un adulto
 17  |   S    |     S      | Puede entrar
 30  |   N    |     S      | No: necesita boleta
 -1  |   -    |     -      | Error: edad inválida
```

### `02-formulario-de-morgan.psc`

```text
Ejercicio 2 · Negar sin equivocarse: De Morgan en validaciones
Regla: el formulario es válido si tiene correo Y tiene contraseña.
  formularioValido   = correoLleno Y passwordLleno
Negación con De Morgan (se niega cada parte y Y cambia a O):
  formularioInvalido = NO correoLleno O NO passwordLleno
El error clásico es escribir NO correoLleno Y NO passwordLleno,
que solo detecta cuando faltan los dos.
Negación correcta: basta con que falte uno
Tabla de verdad / prueba de escritorio:
correo | password | NO c O NO p (correcta) | NO c Y NO p (error clásico)
  S    |    S     | Falso  -> válido        | Falso
  S    |    N     | Verdad -> revisa        | Falso  <- no detecta el error
  N    |    S     | Verdad -> revisa        | Falso  <- no detecta el error
  N    |    N     | Verdad -> revisa        | Verdad
```

### `03-tarifa-parqueadero.psc`

```text
Ejercicio 3 · Tarifas del parqueadero: tabla de decisión en PSeInt
Enunciado: $3.000 por hora o fracción. Más de 6 horas: tarifa plana de $20.000.
Con factura del centro comercial, las 2 primeras horas son gratis.
Tiempo <= 0 es inválido.

Proposiciones: tiempoValido (horas > 0), tarifaPlana (horas > 6), tieneFactura.
Tabla de decisión:
¿Válido? | ¿Más de 6 h? | ¿Factura? | Resultado
  No     |      -       |     -     | Error: tiempo inválido
  Sí     |      Sí      |     -     | 20000
  Sí     |      No      |     Sí    | max(0, horasRedondeadas - 2) * 3000
  Sí     |      No      |     No    | horasRedondeadas * 3000

Retorno temprano: primero se descartan los casos especiales (inválido, plana).
"Hora o fracción": redondear hacia arriba.
redon() redondea al entero más cercano; si quedó por debajo, se suma 1.
max(0, horas - 2)
Prueba de escritorio con casos borde:
horas | factura | esperado | por qué
 0    |   N     | Error    | 0 no es mayor que 0
 0.5  |   N     | 3000     | la fracción se cobra como hora completa
 2    |   S     | 0        | max(0, 2 - 2) * 3000
 2.1  |   S     | 3000     | 2.1 -> 3 horas; 3 - 2 = 1 -> 3000
 6    |   N     | 18000    | 6 NO es "más de 6"
 6.01 |   N     | 20000    | ya es más de 6: tarifa plana
```

### `04-anio-bisiesto.psc`

```text
Ejercicio 4 · Año bisiesto (casos borde)
Regla: es bisiesto si es divisible entre 4 y NO entre 100, o si es divisible entre 400.
  esBisiesto = (anio MOD 4 = 0 Y anio MOD 100 <> 0) O anio MOD 400 = 0
MOD da el residuo de la división (es el % de JavaScript): anio MOD 4 = 0 significa
"divisible entre 4". Los paréntesis dejan claro qué se evalúa primero.

Tabla de decisión:
div 4 | div 100 | div 400 | Bisiesto | Ejemplo
 No   |    -    |    -    |   No     | 2026
 Sí   |   No    |    -    |   Sí     | 2024
 Sí   |   Sí    |   No    |   No     | 1900
 Sí   |   Sí    |   Sí    |   Sí     | 2000
Prueba de escritorio:
1900 -> no (divisible entre 100 pero no entre 400)
2000 -> sí (divisible entre 400)
2024 -> sí
2026 -> no
```

### `04-semaforo-inventario.psc`

```text
Ejercicio 4 · Semáforo de inventario (casos borde)
Regla: stock negativo -> "Error"; 0 -> "Agotado"; 1 a 10 -> "Bajo"; más de 10 -> "Disponible".
El orden de las condiciones importa: se descartan primero los casos especiales
(negativo y cero) y lo que queda al final es "Disponible".

Tabla de decisión:
stock < 0 | stock = 0 | stock <= 10 | Resultado
   Sí     |     -     |      -      | Error
   No     |    Sí     |      -      | Agotado
   No     |    No     |     Sí      | Bajo
   No     |    No     |     No      | Disponible
Prueba de escritorio (límites):
-1 -> Error | 0 -> Agotado | 1 -> Bajo | 10 -> Bajo | 11 -> Disponible
```

### `05-tarifa-gimnasio.psc`

```text
Ejercicio propuesto · Tarifa de un gimnasio
Regla: estudiantes pagan 50 % (descuento del 50 %); mayores de 60 años pagan 40 %
menos (descuento del 40 %). Si cumple ambas, aplica el MAYOR descuento (50 %).

Tabla de decisión: la columna "ambos" revela el caso que se repite.
¿Estudiante? | ¿Mayor de 60? | Descuento
     Sí      |      Sí       |   50 %   <- mismo resultado que solo estudiante
     Sí      |      No       |   50 %
     No      |      Sí       |   40 %
     No      |      No       |    0 %
Como "estudiante" ya da el mayor descuento, se pregunta primero por él.
Prueba de escritorio (tarifa base 100000):
edad 20, estudiante S -> 50 % -> 50000
edad 65, estudiante N -> 40 % -> 60000
edad 65, estudiante S -> 50 % -> 50000  (ambos: el mayor descuento)
edad 60, estudiante N -> 0 %  -> 100000 (límite: 60 no es "mayor de 60")
edad 61, estudiante N -> 40 % -> 60000
```
