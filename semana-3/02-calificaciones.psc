Algoritmo Calificaciones
	Escribir "¿Cuántas notas va a ingresar?"
	Leer n

	Si n <= 0 Entonces
		Escribir "No hay notas: promedio 0, sin nota mayor ni menor, 0 reprobados"
	SiNo
		suma <- 0
		reprobados <- 0

		Para i <- 1 Hasta n Hacer
			Escribir "Nota ", i, ":"
			Leer nota

			Si i = 1 Entonces
				mayor <- nota
				menor <- nota
			FinSi

			suma <- suma + nota
			Si nota < 3.0 Entonces
				reprobados <- reprobados + 1
			FinSi
			Si nota > mayor Entonces
				mayor <- nota
			FinSi
			Si nota < menor Entonces
				menor <- nota
			FinSi
		FinPara

		Escribir "Promedio: ", suma / n
		Escribir "Nota más alta: ", mayor
		Escribir "Nota más baja: ", menor
		Escribir "Reprobados: ", reprobados
	FinSi
FinAlgoritmo
