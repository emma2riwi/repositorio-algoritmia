Algoritmo AreaPerimetroRectangulo
	Escribir "Ingrese la base del rectángulo (m):"
	Leer base
	Escribir "Ingrese la altura del rectángulo (m):"
	Leer altura

	area <- base * altura
	perimetro <- 2 * (base + altura)

	Escribir "Área: ", area, " m2"
	Escribir "Perímetro: ", perimetro, " m"
FinAlgoritmo
