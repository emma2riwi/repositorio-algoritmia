// Ejercicio 2 · Calificaciones: cuatro patrones en un solo recorrido
// Se leen n notas (0 a 5) una por una y, en el MISMO ciclo, se calcula:
//   - promedio            -> acumulador (suma) / n
//   - nota más alta       -> máximo (empieza con la primera nota, no con 0)
//   - nota más baja       -> mínimo (empieza con la primera nota)
//   - cuántos reprobaron  -> contador (nota < 3.0)
// Caso borde: si n = 0 no hay notas y no se divide entre 0.

Algoritmo Calificaciones

	Escribir "¿Cuántas notas va a ingresar?"
	Leer n

	Si n <= 0 Entonces
		Escribir "No hay notas: promedio 0, sin nota mayor ni menor, 0 reprobados"
	SiNo
		suma <- 0          // acumulador
		reprobados <- 0    // contador

		Para i <- 1 Hasta n Hacer
			Escribir "Nota ", i, ":"
			Leer nota

			// La primera nota es el punto de partida del máximo y del mínimo
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

// Tabla de traza para n = 5 y las notas 4.5, 2.8, 3.9, 2.5, 5.0:
// i | nota | suma | mayor | menor | reprobados
// 1 | 4.5  |  4.5 |  4.5  |  4.5  |    0
// 2 | 2.8  |  7.3 |  4.5  |  2.8  |    1
// 3 | 3.9  | 11.2 |  4.5  |  2.8  |    1
// 4 | 2.5  | 13.7 |  4.5  |  2.5  |    2
// 5 | 5.0  | 18.7 |  5.0  |  2.5  |    2
// Salida: promedio 3.74 | más alta 5 | más baja 2.5 | reprobados 2
