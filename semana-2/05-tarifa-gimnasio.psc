// Ejercicio propuesto · Tarifa de un gimnasio
// Regla: estudiantes pagan 50 % (descuento del 50 %); mayores de 60 años pagan 40 %
// menos (descuento del 40 %). Si cumple ambas, aplica el MAYOR descuento (50 %).
//
// Tabla de decisión: la columna "ambos" revela el caso que se repite.
// ¿Estudiante? | ¿Mayor de 60? | Descuento
//      Sí      |      Sí       |   50 %   <- mismo resultado que solo estudiante
//      Sí      |      No       |   50 %
//      No      |      Sí       |   40 %
//      No      |      No       |    0 %
// Como "estudiante" ya da el mayor descuento, se pregunta primero por él.

Algoritmo TarifaGimnasio
	Definir tarifa, descuento, total Como Real
	Definir edad Como Entero
	Definir respEstudiante Como Caracter
	Definir esEstudiante, esMayor60 Como Logico

	Escribir "Tarifa mensual base:"
	Leer tarifa
	Escribir "Edad:"
	Leer edad
	Escribir "¿Es estudiante? (S/N)"
	Leer respEstudiante

	Si tarifa < 0 O edad < 0 Entonces
		Escribir "Error: datos inválidos"
	SiNo
		esEstudiante <- Mayusculas(respEstudiante) = "S"
		esMayor60 <- edad > 60

		Si esEstudiante Entonces
			descuento <- 0.50
		SiNo
			Si esMayor60 Entonces
				descuento <- 0.40
			SiNo
				descuento <- 0
			FinSi
		FinSi

		total <- tarifa * (1 - descuento)
		Escribir "Descuento: ", descuento * 100, " %"
		Escribir "Total a pagar: $", total
	FinSi
FinAlgoritmo

// Prueba de escritorio (tarifa base 100000):
// edad 20, estudiante S -> 50 % -> 50000
// edad 65, estudiante N -> 40 % -> 60000
// edad 65, estudiante S -> 50 % -> 50000  (ambos: el mayor descuento)
// edad 60, estudiante N -> 0 %  -> 100000 (límite: 60 no es "mayor de 60")
// edad 61, estudiante N -> 40 % -> 60000
