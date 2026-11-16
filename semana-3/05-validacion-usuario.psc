// Ejercicio propuesto · Validación de usuario: intentos limitados + bandera
// El usuario tiene 3 intentos para escribir un correo que contenga "@" y ".".
// Patrones:
//   intentos limitados -> contador "intentos" que no pasa de 3
//   bandera            -> "valido" empieza en Falso y se vuelve Verdadero al acertar
// El ciclo termina por cualquiera de las dos razones: acertó o se acabaron los intentos.

Algoritmo ValidacionUsuario
	Definir correo, c Como Caracter
	Definir intentos, i Como Entero
	Definir valido, tieneArroba, tienePunto Como Logico

	intentos <- 0
	valido <- Falso

	Mientras No valido Y intentos < 3 Hacer
		Escribir "Correo (intento ", intentos + 1, " de 3):"
		Leer correo
		intentos <- intentos + 1

		tieneArroba <- Falso
		tienePunto <- Falso
		Para i <- 1 Hasta Longitud(correo) Con Paso 1 Hacer
			c <- Subcadena(correo, i, i)
			Si c = "@" Entonces
				tieneArroba <- Verdadero
			FinSi
			Si c = "." Entonces
				tienePunto <- Verdadero
			FinSi
		FinPara

		Si tieneArroba Y tienePunto Entonces
			valido <- Verdadero
		SiNo
			Escribir "Correo inválido: debe contener @ y ."
		FinSi
	FinMientras

	Si valido Entonces
		Escribir "Correo aceptado en el intento ", intentos
	SiNo
		Escribir "Cuenta bloqueada: se agotaron los 3 intentos"
	FinSi
FinAlgoritmo

// Tabla de traza para la entrada "emma", "emma@riwi", "emma@riwi.io":
// intento | correo         | @  | .  | valido
//    1    | emma           | No | No | Falso
//    2    | emma@riwi      | Sí | No | Falso
//    3    | emma@riwi.io   | Sí | Sí | Verdadero -> "Correo aceptado en el intento 3"
// Caso borde: tres correos inválidos -> "Cuenta bloqueada" y no pide un cuarto.
