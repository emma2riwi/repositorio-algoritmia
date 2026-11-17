SubProceso subtotal <- CalcularSubtotal(platos)
	subtotal <- 0
	Para i <- 1 Hasta platos Hacer
		Escribir "Precio del plato ", i, ":"
		Leer precio
		Escribir "Cantidad:"
		Leer cantidad
		subtotal <- subtotal + precio * cantidad
	FinPara
FinSubProceso

SubProceso propina <- CalcularPropina(subtotal, respuesta)
	Si respuesta = "S" Entonces
		propina <- subtotal * 0.10
	SiNo
		propina <- 0
	FinSi
FinSubProceso

SubProceso porPersona <- DividirCuenta(total, comensales)
	porPersona <- total / comensales
FinSubProceso

SubProceso redondeado <- RedondearMil(valor)
	redondeado <- redon(valor / 1000) * 1000
	Si redondeado < valor Entonces
		redondeado <- redondeado + 1000
	FinSi
FinSubProceso

Algoritmo FacturaRestaurante
	Escribir "¿Cuántos platos distintos se pidieron?"
	Leer platos
	Escribir "¿Cuántos comensales?"
	Leer comensales
	Escribir "¿Incluir propina del 10 %? (S/N)"
	Leer respuesta

	Si platos <= 0 O comensales <= 0 Entonces
		Escribir "Error: platos y comensales deben ser mayores que 0"
	SiNo
		subtotal <- CalcularSubtotal(platos)
		propina <- CalcularPropina(subtotal, respuesta)
		total <- subtotal + propina
		porPersona <- RedondearMil(DividirCuenta(total, comensales))

		Escribir "Subtotal: $", subtotal
		Escribir "Propina: $", propina
		Escribir "Total: $", total
		Escribir "Cada comensal paga (redondeado a $1.000): $", porPersona
	FinSi
FinAlgoritmo
