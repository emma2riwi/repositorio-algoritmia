// Laboratorio · Año bisiesto y semáforo de inventario (JavaScript)
// Ejecutar: node bisiesto-semaforo.js

// 1. Un año es bisiesto si es divisible entre 4 y no entre 100,
//    o si es divisible entre 400.
function esBisiesto(anio) {
  return (anio % 4 === 0 && anio % 100 !== 0) || anio % 400 === 0;
}

// 2. Stock 0 "Agotado"; entre 1 y 10 "Bajo"; más de 10 "Disponible"; negativo "Error".
function semaforoInventario(stock) {
  // Retorno temprano: primero los casos especiales
  if (stock < 0) return "Error";
  if (stock === 0) return "Agotado";
  if (stock <= 10) return "Bajo";
  return "Disponible";
}

console.log([1900, 2000, 2024, 2026].map(esBisiesto)); // [false, true, true, false]
console.log([-1, 0, 1, 10, 11].map(semaforoInventario)); // ["Error","Agotado","Bajo","Bajo","Disponible"]
