// Ejercicio 2 · Calificaciones: cuatro patrones en un solo recorrido
// Dada una lista de notas (0 a 5), calcula en UN solo ciclo:
//   - promedio            -> acumulador (suma) / cantidad
//   - nota más alta       -> máximo (empieza con la primera nota, no con 0)
//   - nota más baja       -> mínimo (empieza con la primera nota)
//   - cuántos reprobaron  -> contador (nota < 3.0)
// Caso borde: lista vacía (n = 0) -> no se divide entre 0.

Algoritmo Calificaciones
	Definir n, i, reprobados Como Entero
	Definir suma, mayor, menor, promedio Como Real

	Escribir "¿Cuántas notas va a ingresar?"
	Leer n

	Si n <= 0 Entonces
		Escribir "No hay notas: promedio 0, sin nota mayor ni menor, 0 reprobados"
	SiNo
		Dimension notas[n]
		Para i <- 1 Hasta n Hacer
			Escribir "Nota ", i, ":"
			Leer notas[i]
		FinPara

		suma <- 0
		reprobados <- 0
		mayor <- notas[1]
		menor <- notas[1]

		// Un solo recorrido con los cuatro patrones
		Para i <- 1 Hasta n Hacer
			suma <- suma + notas[i]
			Si notas[i] < 3.0 Entonces
				reprobados <- reprobados + 1
			FinSi
			Si notas[i] > mayor Entonces
				mayor <- notas[i]
			FinSi
			Si notas[i] < menor Entonces
				menor <- notas[i]
			FinSi
		FinPara

		promedio <- suma / n
		Escribir "Promedio: ", promedio
		Escribir "Nota más alta: ", mayor
		Escribir "Nota más baja: ", menor
		Escribir "Reprobados: ", reprobados
	FinSi
FinAlgoritmo

// Tabla de traza para [4.5, 2.8, 3.9, 2.5, 5.0]:
// i | nota | suma | mayor | menor | reprobados
// - |  -   |  0   |  4.5  |  4.5  |    0
// 1 | 4.5  |  4.5 |  4.5  |  4.5  |    0
// 2 | 2.8  |  7.3 |  4.5  |  2.8  |    1
// 3 | 3.9  | 11.2 |  4.5  |  2.8  |    1
// 4 | 2.5  | 13.7 |  4.5  |  2.5  |    2
// 5 | 5.0  | 18.7 |  5.0  |  2.5  |    2
// Salida: promedio 3.74 | más alta 5.0 | más baja 2.5 | reprobados 2
