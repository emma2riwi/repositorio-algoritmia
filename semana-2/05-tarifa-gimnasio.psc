Algoritmo TarifaGimnasio
	Escribir "Tarifa mensual base:"
	Leer tarifa
	Escribir "Edad:"
	Leer edad
	Escribir "¿Es estudiante? (S/N)"
	Leer respEstudiante

	Si tarifa < 0 O edad < 0 Entonces
		Escribir "Error: datos inválidos"
	SiNo
		esEstudiante <- respEstudiante = "S"
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
