Algoritmo CalculadoraPropinas
	Escribir "Valor de la cuenta:"
	Leer cuenta
	Escribir "Porcentaje de propina (por ejemplo 10):"
	Leer porcentaje
	Escribir "¿Entre cuántas personas se divide?"
	Leer personas

	Si personas <= 0 O cuenta < 0 O porcentaje < 0 Entonces
		Escribir "Error: la cuenta y la propina no pueden ser negativas y debe haber al menos 1 persona"
	SiNo
		propina <- cuenta * porcentaje / 100
		total <- cuenta + propina
		porPersona <- total / personas

		Escribir "Propina: $", propina
		Escribir "Total con propina: $", total
		Escribir "Cada persona paga: $", porPersona
	FinSi
FinAlgoritmo
