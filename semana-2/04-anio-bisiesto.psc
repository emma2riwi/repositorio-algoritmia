// Ejercicio 4 · Año bisiesto (casos borde)
// Regla: es bisiesto si es divisible entre 4 y NO entre 100, o si es divisible entre 400.
//   esBisiesto = (anio MOD 4 = 0 Y anio MOD 100 <> 0) O anio MOD 400 = 0
// MOD da el residuo de la división (es el % de JavaScript): anio MOD 4 = 0 significa
// "divisible entre 4". Los paréntesis dejan claro qué se evalúa primero.
//
// Tabla de decisión:
// div 4 | div 100 | div 400 | Bisiesto | Ejemplo
//  No   |    -    |    -    |   No     | 2026
//  Sí   |   No    |    -    |   Sí     | 2024
//  Sí   |   Sí    |   No    |   No     | 1900
//  Sí   |   Sí    |   Sí    |   Sí     | 2000

Algoritmo AnioBisiesto

	Escribir "Año:"
	Leer anio

	esBisiesto <- (anio MOD 4 = 0 Y anio MOD 100 <> 0) O (anio MOD 400 = 0)

	Si esBisiesto Entonces
		Escribir anio, " es bisiesto"
	SiNo
		Escribir anio, " no es bisiesto"
	FinSi
FinAlgoritmo

// Prueba de escritorio:
// 1900 -> no (divisible entre 100 pero no entre 400)
// 2000 -> sí (divisible entre 400)
// 2024 -> sí
// 2026 -> no
