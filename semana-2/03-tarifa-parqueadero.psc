// Ejercicio 3 · Tarifas del parqueadero: tabla de decisión en PSeInt
// Enunciado: $3.000 por hora o fracción. Más de 6 horas: tarifa plana de $20.000.
// Con factura del centro comercial, las 2 primeras horas son gratis.
// Tiempo <= 0 es inválido.
//
// Proposiciones: tiempoValido (horas > 0), tarifaPlana (horas > 6), tieneFactura.
// Tabla de decisión:
// ¿Válido? | ¿Más de 6 h? | ¿Factura? | Resultado
//   No     |      -       |     -     | Error: tiempo inválido
//   Sí     |      Sí      |     -     | 20000
//   Sí     |      No      |     Sí    | max(0, horasRedondeadas - 2) * 3000
//   Sí     |      No      |     No    | horasRedondeadas * 3000
//
// Retorno temprano: primero se descartan los casos especiales (inválido, plana).

Algoritmo TarifaParqueadero
	Definir horas Como Real
	Definir horasCobradas, valor Como Entero
	Definir respFactura Como Caracter
	Definir tieneFactura Como Logico

	Escribir "Horas que estuvo el vehículo (puede tener decimales):"
	Leer horas
	Escribir "¿Presenta factura? (S/N)"
	Leer respFactura
	tieneFactura <- Mayusculas(respFactura) = "S"

	Si horas <= 0 Entonces
		Escribir "Error: tiempo inválido (horas debe ser mayor que 0)"
	SiNo
		Si horas > 6 Entonces
			valor <- 20000
		SiNo
			// "Hora o fracción": redondear hacia arriba
			horasCobradas <- trunc(horas)
			Si horas > horasCobradas Entonces
				horasCobradas <- horasCobradas + 1
			FinSi

			Si tieneFactura Entonces
				horasCobradas <- horasCobradas - 2
				Si horasCobradas < 0 Entonces
					horasCobradas <- 0      // max(0, horas - 2)
				FinSi
			FinSi
			valor <- horasCobradas * 3000
		FinSi
		Escribir "Valor a pagar: $", valor
	FinSi
FinAlgoritmo

// Prueba de escritorio con casos borde:
// horas | factura | esperado | por qué
//  0    |   N     | Error    | 0 no es mayor que 0
//  0.5  |   N     | 3000     | la fracción se cobra como hora completa
//  2    |   S     | 0        | max(0, 2 - 2) * 3000
//  2.1  |   S     | 3000     | 2.1 -> 3 horas; 3 - 2 = 1 -> 3000
//  6    |   N     | 18000    | 6 NO es "más de 6"
//  6.01 |   N     | 20000    | ya es más de 6: tarifa plana
