// Ejercicio 2 · Mi primer algoritmo en PSeInt: entrada, proceso y salida
// Problema: calcular el área y el perímetro de un rectángulo.
// Entrada: base y altura (en metros).
// Proceso: area = base * altura; perimetro = 2 * (base + altura).
// Salida: el área y el perímetro.
// Es secuencial: no hay decisiones, las instrucciones se ejecutan una tras otra.

Algoritmo AreaPerimetroRectangulo

	// ENTRADA
	Escribir "Ingrese la base del rectángulo (m):"
	Leer base
	Escribir "Ingrese la altura del rectángulo (m):"
	Leer altura

	// PROCESO
	area <- base * altura
	perimetro <- 2 * (base + altura)

	// SALIDA
	Escribir "Área: ", area, " m2"
	Escribir "Perímetro: ", perimetro, " m"
FinAlgoritmo

// Pruebas (al menos dos entradas):
// base = 4,  altura = 3   -> Área: 12 m2   | Perímetro: 14 m
// base = 2.5, altura = 10 -> Área: 25 m2   | Perímetro: 25 m
