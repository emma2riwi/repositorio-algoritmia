# Ejercicio 1 · Instrucciones sin ambigüedad (reto desconectado)

**Idea:** un computador no adivina. Cada paso tiene que ser **preciso** (sin interpretación), **finito**, **ordenado**, **determinista** y **efectivo**.

## Reescribir instrucciones ambiguas

| Instrucción ambigua | ¿Qué falla? | Versión precisa |
|---|---|---|
| Agrega un poco de sal | «Un poco» no es una medida | Agrega 5 g de sal |
| Camina un rato | No dice cuánto ni hacia dónde | Camina 20 pasos hacia la puerta |
| Si el número es grande, escribe algo | «Grande» y «algo» no están definidos | Si el número es mayor que 100, escribe «Grande» |
| Repite hasta que quede bien | «Bien» no se puede verificar | Repite 3 veces |
| Haz un tinto | No dice los pasos | Ver el algoritmo de abajo |

## Algoritmo preciso: preparar un tinto

1. Inicio.
2. Llenar la olla con 250 ml de agua.
3. Poner la olla en el fogón y encenderlo a fuego alto.
4. Esperar hasta que el agua hierva (aparecen burbujas grandes).
5. Apagar el fogón.
6. Poner 10 g de café molido en el filtro, sobre la taza.
7. Verter el agua caliente sobre el café en el filtro.
8. Esperar a que termine de filtrar (unos 3 minutos).
9. Retirar el filtro.
10. Servir la taza.
11. Fin.

**Por qué cumple las cinco características:**
- **Precisión:** da cantidades (250 ml, 10 g) y acciones concretas.
- **Finitud:** son 11 pasos y termina.
- **Orden:** si se cambia el orden (por ejemplo, servir antes de filtrar) deja de tener sentido.
- **Determinismo:** con los mismos ingredientes siempre sale el mismo tinto.
- **Efectividad:** cada paso se puede hacer en una cocina normal.
