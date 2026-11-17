// Ejercicio propuesto · Acceso a un evento
// Regla: entran los mayores de 18 años con boleta, o los menores
// acompañados de un adulto (también con boleta).
// Proposiciones: esMayor (edad >= 18), tieneBoleta, vaAcompanado.
// Condición simplificada (ver tabla de verdad en 01-tablas-de-verdad.md):
//   puedeEntrar = tieneBoleta Y (esMayor O vaAcompanado)
// Se descarta primero la edad inválida (caso borde).

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

		// Proposiciones con nombre: la regla se lee casi como prosa
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

// Prueba de escritorio (casos borde en la edad 17/18):
// edad | boleta | acompañado | resultado
//  25  |   S    |     N      | Puede entrar
//  18  |   S    |     N      | Puede entrar            (límite: 18 ya es mayor)
//  17  |   S    |     N      | No: debe venir con un adulto
//  17  |   S    |     S      | Puede entrar
//  30  |   N    |     S      | No: necesita boleta
//  -1  |   -    |     -      | Error: edad inválida
