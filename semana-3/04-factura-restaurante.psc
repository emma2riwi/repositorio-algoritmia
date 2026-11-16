// Ejercicio 4 · Factura de restaurante con SubProcesos
// Descomposición top-down: un SubProceso por subproblema; el algoritmo principal
// se lee como el plan de solución.
//
// Tabla de firmas (se define antes de programar):
// SubProceso            | Entrada                          | Salida
// CalcularSubtotal      | cantidad de platos (los lee)     | subtotal
// CalcularPropina       | subtotal, quierePropina          | propina (10 % o 0)
// DividirCuenta         | total, comensales                | valor por persona
// RedondearMil          | valor                            | valor redondeado hacia arriba a múltiplo de $1.000
//
// Reglas:
//   - propina opcional del 10 % sobre el subtotal
//   - el total se divide entre los comensales
//   - cada persona paga un valor redondeado HACIA ARRIBA al múltiplo de $1.000

Funcion subtotal <- CalcularSubtotal(platos)
	Definir subtotal, precio Como Real
	Definir i, cantidad Como Entero
	subtotal <- 0
	Para i <- 1 Hasta platos Hacer
		Escribir "Precio del plato ", i, ":"
		Leer precio
		Escribir "Cantidad:"
		Leer cantidad
		subtotal <- subtotal + precio * cantidad     // acumulador
	FinPara
FinFuncion

Funcion propina <- CalcularPropina(subtotal, quierePropina)
	Definir propina Como Real
	Si quierePropina Entonces
		propina <- subtotal * 0.10
	SiNo
		propina <- 0
	FinSi
FinFuncion

Funcion porPersona <- DividirCuenta(total, comensales)
	Definir porPersona Como Real
	porPersona <- total / comensales
FinFuncion

Funcion redondeado <- RedondearMil(valor)
	Definir redondeado Como Real
	redondeado <- trunc(valor / 1000) * 1000
	Si redondeado < valor Entonces
		redondeado <- redondeado + 1000
	FinSi
FinFuncion

Algoritmo FacturaRestaurante
	Definir platos, comensales Como Entero
	Definir subtotal, propina, total, porPersona Como Real
	Definir resp Como Caracter

	Escribir "¿Cuántos platos distintos se pidieron?"
	Leer platos
	Escribir "¿Cuántos comensales?"
	Leer comensales
	Escribir "¿Incluir propina del 10 %? (S/N)"
	Leer resp

	Si platos <= 0 O comensales <= 0 Entonces
		Escribir "Error: platos y comensales deben ser mayores que 0"
	SiNo
		// El plan, en el orden en que se resuelve:
		subtotal <- CalcularSubtotal(platos)
		propina <- CalcularPropina(subtotal, Mayusculas(resp) = "S")
		total <- subtotal + propina
		porPersona <- RedondearMil(DividirCuenta(total, comensales))

		Escribir "Subtotal: $", subtotal
		Escribir "Propina: $", propina
		Escribir "Total: $", total
		Escribir "Cada comensal paga (redondeado a $1.000): $", porPersona
	FinSi
FinAlgoritmo

// Prueba de escritorio:
// 2 platos: 32000 x 2 y 18500 x 1 -> subtotal 82500
// con propina -> propina 8250 -> total 90750
// 3 comensales -> 30250 cada uno -> redondeado 31000
// sin propina, 2 comensales -> 82500 / 2 = 41250 -> 42000
// Caso borde: comensales = 0 -> Error (evita dividir entre 0)
