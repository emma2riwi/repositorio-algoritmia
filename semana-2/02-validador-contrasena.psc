// Ejercicio 2 / propuesto · Validador de contraseña con De Morgan
// Válida  = L Y N Y NO P
// Inválida = NO L  O  NO N  O  P     (De Morgan: se niega cada parte y Y pasa a O)
//   L: longitud >= 8
//   N: tiene al menos un dígito
//   P: contiene la palabra "password" (sin importar mayúsculas)
// Cada parte negada genera su propio mensaje de error.

Algoritmo ValidadorContrasena
	Definir clave, c, claveMin Como Caracter
	Definir i Como Entero
	Definir L, N, P Como Logico

	Escribir "Escriba la contraseña:"
	Leer clave

	// L: longitud mínima
	L <- Longitud(clave) >= 8

	// N: recorrer la cadena buscando un dígito (bandera)
	N <- Falso
	Para i <- 1 Hasta Longitud(clave) Con Paso 1 Hacer
		c <- Subcadena(clave, i, i)
		Si c >= "0" Y c <= "9" Entonces
			N <- Verdadero
		FinSi
	FinPara

	// P: buscar "password" (8 letras) en cualquier posición
	P <- Falso
	claveMin <- Minusculas(clave)
	Para i <- 1 Hasta Longitud(claveMin) - 7 Con Paso 1 Hacer
		Si Subcadena(claveMin, i, i + 7) = "password" Entonces
			P <- Verdadero
		FinSi
	FinPara

	Si L Y N Y No P Entonces
		Escribir "Contraseña válida"
	SiNo
		// Negación con De Morgan: basta con que falle una regla
		Si No L Entonces
			Escribir "Error: debe tener al menos 8 caracteres"
		FinSi
		Si No N Entonces
			Escribir "Error: debe incluir al menos un número"
		FinSi
		Si P Entonces
			Escribir "Error: no puede contener la palabra password"
		FinSi
	FinSi
FinAlgoritmo

// Prueba de escritorio:
// "riwi2026"  -> Contraseña válida   (8 caracteres: límite exacto)
// "riwi202"   -> Error: al menos 8 caracteres
// "abcdefgh"  -> Error: al menos un número
// "Password1" -> Error: no puede contener password
// "abc"       -> Error de longitud y Error de número
// Nota: en el perfil por defecto de PSeInt las posiciones de Subcadena empiezan en 1.
