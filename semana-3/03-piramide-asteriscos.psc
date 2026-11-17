// Ejercicio 3 · Pirámide de asteriscos: ciclos anidados y traza
// Imprime una pirámide centrada de n niveles.
// En el nivel f (de 1 a n):
//   espacios   = n - f
//   asteriscos = 2 * f - 1
// El ciclo externo recorre los niveles; los dos internos escriben cada línea.
// "Escribir Sin Saltar" escribe sin bajar de línea; el Escribir "" final baja.

Algoritmo PiramideAsteriscos

	Escribir "Número de niveles:"
	Leer n

	Si n <= 0 Entonces
		Escribir "Error: los niveles deben ser mayores que 0"
	SiNo
		Para f <- 1 Hasta n Hacer
			// Espacios: en el último nivel son 0. "Con Paso 1" evita que PSeInt
			// cuente hacia atrás (de 1 a 0) cuando no hay espacios que escribir.
			Para j <- 1 Hasta n - f Con Paso 1 Hacer
				Escribir Sin Saltar " "
			FinPara
			Para j <- 1 Hasta 2 * f - 1 Hacer
				Escribir Sin Saltar "*"
			FinPara
			Escribir ""
		FinPara
	FinSi
FinAlgoritmo

// Traza para n = 3:
// f | espacios (n - f) | asteriscos (2f - 1) | línea
// 1 |        2         |          1          | "  *"
// 2 |        1         |          3          | " ***"
// 3 |        0         |          5          | "*****"
// Caso borde: n = 1 imprime "*"; n = 0 da error.
