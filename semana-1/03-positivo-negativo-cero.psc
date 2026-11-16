// Ejercicio 3 · Del pseudocódigo al diagrama de flujo
// Problema: determinar si un número es positivo, negativo o cero
// (ejemplo integral del soporte temático).
// Entrada: un número.
// Proceso: dos decisiones encadenadas. Primero se pregunta si es mayor que 0;
//          si no, se pregunta si es menor que 0; si tampoco, solo puede ser 0.
// Salida: la clasificación.
// El diagrama de flujo está en el README de la semana (y PSeInt lo genera
// con el botón "Dibujar diagrama de flujo").

Algoritmo ClasificarNumero
	Definir numero Como Real

	Escribir "Ingrese un número:"
	Leer numero

	Si numero > 0 Entonces
		Escribir "Positivo"
	SiNo
		Si numero < 0 Entonces
			Escribir "Negativo"
		SiNo
			Escribir "Cero"
		FinSi
	FinSi
FinAlgoritmo

// Pruebas:
// numero = 7    -> Positivo
// numero = -3.5 -> Negativo
// numero = 0    -> Cero   (caso borde)
