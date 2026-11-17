# Reto 1 - Instrucciones sin ambigüedad

La idea del reto es que el computador no adivina nada. Si le digo "agrega un poco de sal", no sabe cuánto es "un poco". Entonces cada paso tiene que ser claro.

Estas son las instrucciones ambiguas que encontré y cómo las cambié:

| Ambigua | Cómo la dejé |
|---|---|
| Agrega un poco de sal | Agrega 5 g de sal |
| Camina un rato | Camina 20 pasos hacia la puerta |
| Si el número es grande, escribe algo | Si el número es mayor que 100, escribe "Grande" |
| Repite hasta que quede bien | Repite 3 veces |

## Mi algoritmo para hacer un tinto

1. Inicio
2. Echar 250 ml de agua en la olla
3. Poner la olla en el fogón a fuego alto
4. Esperar a que el agua hierva
5. Apagar el fogón
6. Poner 10 g de café en el filtro, encima de la taza
7. Echar el agua caliente sobre el café
8. Esperar a que termine de filtrar
9. Quitar el filtro y servir
10. Fin

Traté de que cumpliera las características que vimos: cada paso dice cantidades exactas (precisión), tiene un final (finitud), el orden importa porque no puedo servir antes de filtrar, y con los mismos ingredientes siempre sale el mismo tinto.
