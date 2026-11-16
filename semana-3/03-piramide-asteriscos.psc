// Ejercicio 3 · Pirámide de asteriscos: ciclos anidados y traza
// Imprime una pirámide centrada de n niveles.
// En el nivel f (de 1 a n):
//   espacios   = n - f
//   asteriscos = 2 * f - 1
// El ciclo externo recorre los niveles; los dos internos construyen cada línea.
// "Con Paso 1" evita que PSeInt cuente hacia atrás cuando n - f = 0 (último nivel).

Algoritmo PiramideAsteriscos
	Definir n, f, j Como Entero
	Definir linea Como Caracter

	Escribir "Número de niveles:"
	Leer n

	Si n <= 0 Entonces
		Escribir "Error: los niveles deben ser mayores que 0"
	SiNo
		Para f <- 1 Hasta n Hacer
			linea <- ""
			Para j <- 1 Hasta n - f Con Paso 1 Hacer
				linea <- Concatenar(linea, " ")
			FinPara
			Para j <- 1 Hasta 2 * f - 1 Hacer
				linea <- Concatenar(linea, "*")
			FinPara
			Escribir linea
		FinPara
	FinSi
FinAlgoritmo

// Traza para n = 3:
// f | espacios (n - f) | asteriscos (2f - 1) | línea
// 1 |        2         |          1          | "  *"
// 2 |        1         |          3          | " ***"
// 3 |        0         |          5          | "*****"
// Salida:
//   *
//  ***
// *****
// Caso borde: n = 1 imprime "*"; n = 0 da error.
