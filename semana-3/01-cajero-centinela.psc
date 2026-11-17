Algoritmo CajeroCentinela
	total <- 0
	retiros <- 0

	Escribir "Monto a retirar (0 para terminar):"
	Leer monto

	Mientras monto <> 0 Hacer
		Si monto < 0 Entonces
			Escribir "Monto inválido, no se registra"
		SiNo
			total <- total + monto
			retiros <- retiros + 1
		FinSi
		Escribir "Monto a retirar (0 para terminar):"
		Leer monto
	FinMientras

	Escribir "Total retirado: $", total
	Escribir "Cantidad de retiros: ", retiros
FinAlgoritmo
