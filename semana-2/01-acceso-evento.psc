Algoritmo AccesoEvento
	Escribir "Edad:"
	Leer edad

	Si edad < 0 Entonces
		Escribir "Error: edad inválida"
	SiNo
		Escribir "¿Tiene boleta? (S/N)"
		Leer respBoleta
		Escribir "¿Va acompañado de un adulto? (S/N)"
		Leer respAcompanado

		esMayor <- edad >= 18
		tieneBoleta <- respBoleta = "S"
		vaAcompanado <- respAcompanado = "S"

		puedeEntrar <- tieneBoleta Y (esMayor O vaAcompanado)

		Si puedeEntrar Entonces
			Escribir "Puede entrar"
		SiNo
			Si No tieneBoleta Entonces
				Escribir "No puede entrar: necesita boleta"
			SiNo
				Escribir "No puede entrar: es menor y debe venir con un adulto"
			FinSi
		FinSi
	FinSi
FinAlgoritmo
