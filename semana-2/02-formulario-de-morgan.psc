Algoritmo FormularioDeMorgan
	Escribir "¿Escribió el correo? (S/N)"
	Leer respCorreo
	Escribir "¿Escribió la contraseña? (S/N)"
	Leer respPassword

	correoLleno <- respCorreo = "S"
	passwordLleno <- respPassword = "S"

	formularioInvalido <- No correoLleno O No passwordLleno

	Si formularioInvalido Entonces
		Escribir "Revisa los campos: falta el correo o la contraseña"
	SiNo
		Escribir "Formulario válido"
	FinSi
FinAlgoritmo
