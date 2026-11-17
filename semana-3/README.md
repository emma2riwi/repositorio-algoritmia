# Semana 3 · Patrones de repetición y descomposición de problemas

**Evidencia pedida:** algoritmos con ciclos en PSeInt con su tabla de traza, y la factura descompuesta en SubProcesos con su árbol de componentes. Cada `.psc` trae su traza en los comentarios.

## Retos

| # | Ejercicio | Archivos |
|---|---|---|
| 1 | Cajero con centinela: acumulador y contador | [`01-cajero-centinela.psc`](01-cajero-centinela.psc) |
| 2 | Calificaciones: cuatro patrones en un solo recorrido | [`02-calificaciones.psc`](02-calificaciones.psc) |
| 3 | Pirámide de asteriscos: ciclos anidados y traza | [`03-piramide-asteriscos.psc`](03-piramide-asteriscos.psc) |
| 4 | Factura de restaurante con SubProcesos y árbol de componentes de una página | [`04-factura-restaurante.psc`](04-factura-restaurante.psc), [`04-arbol-componentes-perfil.md`](04-arbol-componentes-perfil.md) |

## Ejercicios propuestos del soporte temático (los seis)

| Ejercicio | Patrón | Archivo |
|---|---|---|
| Cajero | centinela + acumulador + contador | `01-cajero-centinela.psc` |
| Calificaciones | acumulador, máximo, mínimo, contador | `02-calificaciones.psc` |
| Validación de usuario | intentos limitados + bandera | [`laboratorios/validacion-usuario.js`](laboratorios/validacion-usuario.js) |
| Pirámide | ciclos anidados | `03-piramide-asteriscos.psc` |
| Factura de restaurante | descomposición en SubProcesos (tabla de firmas) | `04-factura-restaurante.psc` |
| Página de perfil | árbol de componentes | `04-arbol-componentes-perfil.md` |

## Laboratorios de Moodle

**Las cuatro partes de todo ciclo:**
1. Inicialización: el valor con el que empiezan las variables de control.
2. Condición: la pregunta que decide si se repite.
3. Cuerpo: las instrucciones que se repiten.
4. Actualización: el cambio que acerca el ciclo a su final. Si se olvida, el ciclo nunca termina.

**Traza de variables: la venta más grande** de `[12, 45, 7, 45, 60]` (mayor empieza en 12):

| Vuelta | t | ¿t > mayor? | mayor |
|---|---|---|---|
| 1 | 12 | No | 12 |
| 2 | 45 | Sí | 45 |
| 3 | 7 | No | 45 |
| 4 | 45 | No (empate) | 45 |
| 5 | 60 | Sí | **60** |

**Calificaciones en JavaScript:** [`laboratorios/calificaciones.js`](laboratorios/calificaciones.js), que da promedio 3.74, mayor 5, menor 2.5 y 2 reprobados. Con la lista vacía el promedio es 0, no NaN.

**Total del carrito con funciones:** [`laboratorios/carrito.js`](laboratorios/carrito.js). Con cupón da $147.230 y sin cupón con envío gratis da $190.400.

**¿Qué patrón necesito?**

| Problema | Patrón |
|---|---|
| Cuántos productos están agotados | Contador |
| El total vendido en el día | Acumulador |
| ¿Hubo alguna venta mayor a $1.000.000? | Bandera |
| La venta más pequeña del mes | Máximo y mínimo |
| Pedir montos hasta que el usuario escriba 0 | Centinela |
| 3 oportunidades para escribir el PIN | Intentos limitados |
| Una lista nueva solo con los nombres en mayúsculas | Construcción de resultados |

Los `.js` se ejecutan con `node laboratorios/<archivo>.js`.

## Lógica de cada algoritmo

Los `.psc` van sin comentarios; aquí está la explicación de cada uno, con su tabla y su prueba de escritorio.

### `01-cajero-centinela.psc`

```text
Ejercicio 1 · Cajero con centinela: acumulador y contador
Pide montos a retirar hasta que el usuario escriba 0 (valor centinela).
Muestra el total retirado (acumulador) y la cantidad de retiros (contador).
Los montos negativos se rechazan y no cuentan.

Las cuatro partes del ciclo:
  Inicialización: total <- 0, retiros <- 0 y la primera lectura de monto
  Condición:      monto <> 0
  Cuerpo:         acumular y contar
  Actualización:  leer el siguiente monto (sin esto el ciclo no termina)
acumulador
contador
Tabla de traza para la entrada 50000, 20000, -5, 100000, 0:
vuelta | monto  | ¿monto <> 0? | total  | retiros
inicio |   -    |      -       |      0 |   0
  1    |  50000 |      Sí      |  50000 |   1
  2    |  20000 |      Sí      |  70000 |   2
  3    |     -5 |      Sí      |  70000 |   2   (inválido, no cuenta)
  4    | 100000 |      Sí      | 170000 |   3
  -    |      0 |      No      |   fin del ciclo
Salida: Total retirado: $170000 | Cantidad de retiros: 3
Caso borde: si el primer monto es 0 -> total 0, retiros 0 (el ciclo no entra).
```

### `02-calificaciones.psc`

```text
Ejercicio 2 · Calificaciones: cuatro patrones en un solo recorrido
Se leen n notas (0 a 5) una por una y, en el MISMO ciclo, se calcula:
  - promedio            -> acumulador (suma) / n
  - nota más alta       -> máximo (empieza con la primera nota, no con 0)
  - nota más baja       -> mínimo (empieza con la primera nota)
  - cuántos reprobaron  -> contador (nota < 3.0)
Caso borde: si n = 0 no hay notas y no se divide entre 0.
acumulador
contador
La primera nota es el punto de partida del máximo y del mínimo
Tabla de traza para n = 5 y las notas 4.5, 2.8, 3.9, 2.5, 5.0:
i | nota | suma | mayor | menor | reprobados
1 | 4.5  |  4.5 |  4.5  |  4.5  |    0
2 | 2.8  |  7.3 |  4.5  |  2.8  |    1
3 | 3.9  | 11.2 |  4.5  |  2.8  |    1
4 | 2.5  | 13.7 |  4.5  |  2.5  |    2
5 | 5.0  | 18.7 |  5.0  |  2.5  |    2
Salida: promedio 3.74 | más alta 5 | más baja 2.5 | reprobados 2
```

### `03-piramide-asteriscos.psc`

```text
Ejercicio 3 · Pirámide de asteriscos: ciclos anidados y traza
Imprime una pirámide centrada de n niveles.
En el nivel f (de 1 a n):
  espacios   = n - f
  asteriscos = 2 * f - 1
El ciclo externo recorre los niveles; los dos internos escriben cada línea.
"Escribir Sin Saltar" escribe sin bajar de línea; el Escribir "" final baja.
Espacios: en el último nivel son 0. "Con Paso 1" evita que PSeInt
cuente hacia atrás (de 1 a 0) cuando no hay espacios que escribir.
Traza para n = 3:
f | espacios (n - f) | asteriscos (2f - 1) | línea
1 |        2         |          1          | "  *"
2 |        1         |          3          | " ***"
3 |        0         |          5          | "*****"
Caso borde: n = 1 imprime "*"; n = 0 da error.
```

### `04-factura-restaurante.psc`

```text
Ejercicio 4 · Factura de restaurante con SubProcesos
Descomposición top-down: un SubProceso por subproblema; el algoritmo principal
se lee como el plan de solución.

Tabla de firmas (se define antes de programar):
SubProceso         | Recibe                 | Devuelve
CalcularSubtotal   | cantidad de platos     | subtotal (lee precio y cantidad de cada plato)
CalcularPropina    | subtotal, respuesta    | propina (10 % si la respuesta es "S", si no 0)
DividirCuenta      | total, comensales      | valor por persona
RedondearMil       | valor                  | valor redondeado hacia arriba a múltiplo de $1.000
acumulador
redon() redondea al entero más cercano; si quedó por debajo, se suben 1.000
El plan, en el orden en que se resuelve:
Prueba de escritorio:
2 platos: 32000 x 2 y 18500 x 1 -> subtotal 82500
con propina -> propina 8250 -> total 90750
3 comensales -> 30250 cada uno -> redondeado 31000
sin propina, 2 comensales -> 82500 / 2 = 41250 -> 42000
Caso borde: comensales = 0 -> Error (evita dividir entre 0)
```
