// Ejercicio 2 · Negar sin equivocarse: De Morgan en validaciones
// Regla: el formulario es válido si tiene correo Y tiene contraseña.
//   formularioValido   = correoLleno Y passwordLleno
// Negación con De Morgan (se niega cada parte y Y cambia a O):
//   formularioInvalido = NO correoLleno O NO passwordLleno
// El error clásico es escribir NO correoLleno Y NO passwordLleno,
// que solo detecta cuando faltan los dos.

Algoritmo FormularioDeMorgan

	Escribir "¿Escribió el correo? (S/N)"
	Leer respCorreo
	Escribir "¿Escribió la contraseña? (S/N)"
	Leer respPassword

	correoLleno <- respCorreo = "S"
	passwordLleno <- respPassword = "S"

	// Negación correcta: basta con que falte uno
	formularioInvalido <- No correoLleno O No passwordLleno

	Si formularioInvalido Entonces
		Escribir "Revisa los campos: falta el correo o la contraseña"
	SiNo
		Escribir "Formulario válido"
	FinSi
FinAlgoritmo

// Tabla de verdad / prueba de escritorio:
// correo | password | NO c O NO p (correcta) | NO c Y NO p (error clásico)
//   S    |    S     | Falso  -> válido        | Falso
//   S    |    N     | Verdad -> revisa        | Falso  <- no detecta el error
//   N    |    S     | Verdad -> revisa        | Falso  <- no detecta el error
//   N    |    N     | Verdad -> revisa        | Verdad
