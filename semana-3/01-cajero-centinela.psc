// Ejercicio 1 · Cajero con centinela: acumulador y contador
// Pide montos a retirar hasta que el usuario escriba 0 (valor centinela).
// Muestra el total retirado (acumulador) y la cantidad de retiros (contador).
// Los montos negativos se rechazan y no cuentan.
//
// Las cuatro partes del ciclo:
//   Inicialización: total <- 0, retiros <- 0 y la primera lectura de monto
//   Condición:      monto <> 0
//   Cuerpo:         acumular y contar
//   Actualización:  leer el siguiente monto (sin esto el ciclo no termina)

Algoritmo CajeroCentinela

	total <- 0       // acumulador
	retiros <- 0     // contador

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

// Tabla de traza para la entrada 50000, 20000, -5, 100000, 0:
// vuelta | monto  | ¿monto <> 0? | total  | retiros
// inicio |   -    |      -       |      0 |   0
//   1    |  50000 |      Sí      |  50000 |   1
//   2    |  20000 |      Sí      |  70000 |   2
//   3    |     -5 |      Sí      |  70000 |   2   (inválido, no cuenta)
//   4    | 100000 |      Sí      | 170000 |   3
//   -    |      0 |      No      |   fin del ciclo
// Salida: Total retirado: $170000 | Cantidad de retiros: 3
// Caso borde: si el primer monto es 0 -> total 0, retiros 0 (el ciclo no entra).
