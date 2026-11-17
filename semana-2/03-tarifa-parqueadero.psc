Algoritmo TarifaParqueadero
	Escribir "Horas que estuvo el vehículo (puede tener decimales):"
	Leer horas
	Escribir "¿Presenta factura? (S/N)"
	Leer respFactura
	tieneFactura <- respFactura = "S"

	Si horas <= 0 Entonces
		Escribir "Error: tiempo inválido (horas debe ser mayor que 0)"
	SiNo
		Si horas > 6 Entonces
			valor <- 20000
		SiNo
			horasCobradas <- redon(horas)
			Si horasCobradas < horas Entonces
				horasCobradas <- horasCobradas + 1
			FinSi

			Si tieneFactura Entonces
				horasCobradas <- horasCobradas - 2
				Si horasCobradas < 0 Entonces
					horasCobradas <- 0
				FinSi
			FinSi
			valor <- horasCobradas * 3000
		FinSi
		Escribir "Valor a pagar: $", valor
	FinSi
FinAlgoritmo
