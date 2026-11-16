// Algoritmo secuencial extra (evidencia: cuatro algoritmos secuenciales)
// Problema: calcular el promedio de tres notas de un estudiante.
// Entrada: tres notas (de 0 a 5).
// Proceso: suma de las tres notas dividida entre 3.
// Salida: el promedio.

Algoritmo PromedioTresNotas
	Definir nota1, nota2, nota3, promedio Como Real

	Escribir "Nota 1:"
	Leer nota1
	Escribir "Nota 2:"
	Leer nota2
	Escribir "Nota 3:"
	Leer nota3

	promedio <- (nota1 + nota2 + nota3) / 3

	Escribir "Promedio: ", promedio
FinAlgoritmo

// Pruebas:
// 3, 4, 5       -> Promedio: 4
// 2.5, 3.5, 4.2 -> Promedio: 3.4
