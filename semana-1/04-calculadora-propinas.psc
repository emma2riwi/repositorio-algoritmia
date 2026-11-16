// Ejercicio 4 · Calculadora de propinas y división de la cuenta
// Problema: un grupo sale a comer y quiere saber cuánto paga cada persona.
// Entrada: valor de la cuenta, porcentaje de propina y número de personas.
// Proceso:
//   propina      = cuenta * porcentaje / 100
//   total        = cuenta + propina
//   porPersona   = total / personas
// Salida: propina, total y cuánto paga cada uno.
// Es secuencial: entrada -> proceso -> salida, sin decisiones.

Algoritmo CalculadoraPropinas
	Definir cuenta, porcentaje, propina, total, porPersona Como Real
	Definir personas Como Entero

	// ENTRADA
	Escribir "Valor de la cuenta:"
	Leer cuenta
	Escribir "Porcentaje de propina (por ejemplo 10):"
	Leer porcentaje
	Escribir "¿Entre cuántas personas se divide?"
	Leer personas

	// PROCESO
	propina <- cuenta * porcentaje / 100
	total <- cuenta + propina
	porPersona <- total / personas

	// SALIDA
	Escribir "Propina: $", propina
	Escribir "Total con propina: $", total
	Escribir "Cada persona paga: $", porPersona
FinAlgoritmo

// Pruebas:
// cuenta = 120000, porcentaje = 10, personas = 4
//   -> Propina: 12000 | Total: 132000 | Cada uno: 33000
// cuenta = 85000,  porcentaje = 0,  personas = 2
//   -> Propina: 0     | Total: 85000  | Cada uno: 42500
