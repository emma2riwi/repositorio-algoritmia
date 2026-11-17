// Ejercicio propuesto · Validación de usuario: intentos limitados + bandera (JavaScript)
// El usuario tiene 3 intentos para escribir un correo que contenga "@" y ".".
// Patrones:
//   intentos limitados -> contador "intentos" que no pasa de 3
//   bandera            -> "valido" empieza en false y se vuelve true al acertar
// Ejecutar: node validacion-usuario.js
// (Aquí los correos vienen en una lista para poder probarlo; en el navegador serían prompt()).

function validarCorreos(correosEscritos) {
  let intentos = 0;     // contador
  let valido = false;   // bandera

  while (!valido && intentos < 3) {
    const correo = correosEscritos[intentos];
    intentos++;

    if (correo.includes("@") && correo.includes(".")) {
      valido = true;
    } else {
      console.log("Intento " + intentos + ": correo inválido, debe contener @ y .");
    }
  }

  if (valido) return "Correo aceptado en el intento " + intentos;
  return "Cuenta bloqueada: se agotaron los 3 intentos";
}

console.log(validarCorreos(["emma", "emma@riwi", "emma@riwi.io"])); // aceptado en el intento 3
console.log(validarCorreos(["a", "b", "c"]));                       // cuenta bloqueada

// Tabla de traza para "emma", "emma@riwi", "emma@riwi.io":
// intento | correo        | ¿@? | ¿.? | valido
//    1    | emma          | No  | No  | false
//    2    | emma@riwi     | Sí  | No  | false
//    3    | emma@riwi.io  | Sí  | Sí  | true -> "Correo aceptado en el intento 3"
