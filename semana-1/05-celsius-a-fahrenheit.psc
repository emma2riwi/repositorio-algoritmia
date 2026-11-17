// Algoritmo secuencial extra (evidencia: cuatro algoritmos secuenciales)
// Problema: convertir una temperatura de grados Celsius a Fahrenheit.
// Entrada: grados Celsius.
// Proceso: F = C * 9 / 5 + 32
// Salida: grados Fahrenheit.

Algoritmo CelsiusAFahrenheit

	Escribir "Temperatura en °C:"
	Leer celsius

	fahrenheit <- celsius * 9 / 5 + 32

	Escribir celsius, " °C equivalen a ", fahrenheit, " °F"
FinAlgoritmo

// Pruebas:
// celsius = 0   -> 32 °F
// celsius = 100 -> 212 °F
// celsius = -40 -> -40 °F
