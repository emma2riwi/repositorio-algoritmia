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
| Validación de usuario | intentos limitados + bandera | [`05-validacion-usuario.psc`](05-validacion-usuario.psc) |
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
