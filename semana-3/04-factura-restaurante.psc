// Ejercicio 4 · Factura de restaurante con SubProcesos
// Descomposición top-down: un SubProceso por subproblema; el algoritmo principal
// se lee como el plan de solución.
//
// Tabla de firmas (se define antes de programar):
// SubProceso         | Recibe                 | Devuelve
// CalcularSubtotal   | cantidad de platos     | subtotal (lee precio y cantidad de cada plato)
// CalcularPropina    | subtotal, respuesta    | propina (10 % si la respuesta es "S", si no 0)
// DividirCuenta      | total, comensales      | valor por persona
// RedondearMil       | valor                  | valor redondeado hacia arriba a múltiplo de $1.000

SubProceso subtotal <- CalcularSubtotal(platos)
	subtotal <- 0
	Para i <- 1 Hasta platos Hacer
		Escribir "Precio del plato ", i, ":"
		Leer precio
		Escribir "Cantidad:"
		Leer cantidad
		subtotal <- subtotal + precio * cantidad     // acumulador
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
	// redon() redondea al entero más cercano; si quedó por debajo, se suben 1.000
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
		// El plan, en el orden en que se resuelve:
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

// Prueba de escritorio:
// 2 platos: 32000 x 2 y 18500 x 1 -> subtotal 82500
// con propina -> propina 8250 -> total 90750
// 3 comensales -> 30250 cada uno -> redondeado 31000
// sin propina, 2 comensales -> 82500 / 2 = 41250 -> 42000
// Caso borde: comensales = 0 -> Error (evita dividir entre 0)
