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
