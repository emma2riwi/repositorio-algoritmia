// Ejercicio 4 · Semáforo de inventario (casos borde)
// Regla: stock negativo -> "Error"; 0 -> "Agotado"; 1 a 10 -> "Bajo"; más de 10 -> "Disponible".
// El orden de las condiciones importa: se descartan primero los casos especiales
// (negativo y cero) y lo que queda al final es "Disponible".
//
// Tabla de decisión:
// stock < 0 | stock = 0 | stock <= 10 | Resultado
//    Sí     |     -     |      -      | Error
//    No     |    Sí     |      -      | Agotado
//    No     |    No     |     Sí      | Bajo
//    No     |    No     |     No      | Disponible

Algoritmo SemaforoInventario

	Escribir "Unidades en stock:"
	Leer stock

	Si stock < 0 Entonces
		Escribir "Error"
	SiNo
		Si stock = 0 Entonces
			Escribir "Agotado"
		SiNo
			Si stock <= 10 Entonces
				Escribir "Bajo"
			SiNo
				Escribir "Disponible"
			FinSi
		FinSi
	FinSi
FinAlgoritmo

// Prueba de escritorio (límites):
// -1 -> Error | 0 -> Agotado | 1 -> Bajo | 10 -> Bajo | 11 -> Disponible
