// Laboratorio · Calificaciones: cuatro patrones en un recorrido (JavaScript)
// Ejecutar: node calificaciones.js

// Devuelve { promedio, mayor, menor, reprobados }
function resumenNotas(notas) {
  // Caso borde: la lista vacía (evita dividir entre 0)
  if (notas.length === 0) return { promedio: 0, mayor: null, menor: null, reprobados: 0 };

  let suma = 0;         // acumulador
  let reprobados = 0;   // contador
  let mayor = notas[0]; // máximo: empieza con el primero, no con 0
  let menor = notas[0]; // mínimo: empieza con el primero

  for (const nota of notas) {
    suma += nota;
    if (nota < 3.0) reprobados++;
    if (nota > mayor) mayor = nota;
    if (nota < menor) menor = nota;
  }
  return { promedio: suma / notas.length, mayor, menor, reprobados };
}

console.log(resumenNotas([4.5, 2.8, 3.9, 2.5, 5.0])); // promedio 3.74, mayor 5, menor 2.5, reprobados 2
console.log(resumenNotas([]));                         // promedio 0, sin mayor ni menor
