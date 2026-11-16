// Laboratorio · El total del carrito, descompuesto en funciones (JavaScript)
// Reglas: subtotal = precio × cantidad; cupón RIWI10 = 10 % de descuento;
// impuesto 19 % sobre el valor con descuento; envío $8.000, gratis si el subtotal supera $150.000.
// Ejecutar: node carrito.js

function calcularSubtotal(items) {
  let total = 0; // acumulador
  for (const item of items) total += item.precio * item.cantidad;
  return total;
}

function aplicarCupon(subtotal, cupon) {
  return cupon === "RIWI10" ? subtotal * 0.9 : subtotal;
}

function calcularImpuesto(valor) {
  return valor * 0.19;
}

function calcularEnvio(subtotal) {
  return subtotal > 150000 ? 0 : 8000; // «supera» = mayor estricto
}

// La función principal se lee como el plan de solución
function calcularTotal(items, cupon) {
  const subtotal = calcularSubtotal(items);
  const conDescuento = aplicarCupon(subtotal, cupon);
  return conDescuento + calcularImpuesto(conDescuento) + calcularEnvio(subtotal);
}

const carrito = [{ precio: 50000, cantidad: 2 }, { precio: 30000, cantidad: 1 }];
console.log(calcularTotal(carrito, "RIWI10")); // 147230 = 117000 + 22230 + 8000

const carrito2 = [{ precio: 80000, cantidad: 2 }];
console.log(calcularTotal(carrito2, ""));      // 190400 = 160000 + 30400 + 0 (envío gratis)
