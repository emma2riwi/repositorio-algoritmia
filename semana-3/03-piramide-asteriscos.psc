Algoritmo PiramideAsteriscos
	Escribir "Número de niveles:"
	Leer n

	Si n <= 0 Entonces
		Escribir "Error: los niveles deben ser mayores que 0"
	SiNo
		Para f <- 1 Hasta n Hacer
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
