# Ejercicio 1 · De la regla a la condición: tablas de verdad

Con n proposiciones, la tabla tiene 2ⁿ filas. Con 3 proposiciones salen 8 filas.

## Regla A · Acceso a un evento

> Pueden entrar los mayores de 18 años con boleta, o los menores acompañados de un adulto, también con boleta.

Proposiciones:
- **M**: es mayor de edad (`edad >= 18`)
- **B**: tiene boleta
- **A**: va acompañado de un adulto

Condición: `(M ∧ B) ∨ (¬M ∧ A ∧ B)`, que se simplifica a **`B ∧ (M ∨ A)`**.

| M | B | A | M ∨ A | **Entra** |
|---|---|---|---|---|
| V | V | V | V | **V** |
| V | V | F | V | **V** |
| V | F | V | V | F |
| V | F | F | V | F |
| F | V | V | V | **V** |
| F | V | F | F | F |
| F | F | V | V | F |
| F | F | F | F | F |

Lo que muestra la tabla:
- **Sin boleta nadie entra** (todas las filas con B = F dan F).
- Un mayor de edad no necesita acompañante.
- Un menor necesita boleta **y** acompañante.

Implementación: [`01-acceso-evento.psc`](01-acceso-evento.psc).

## Regla B · Inscripción a un curso

> Puede iniciar el curso quien está inscrito y pagó, o quien tiene beca.

Proposiciones: **I** = inscrito, **P** = pagó, **K** = tiene beca. Condición: `(I ∧ P) ∨ K`.

| I | P | K | I ∧ P | **Inicia** |
|---|---|---|---|---|
| V | V | V | V | **V** |
| V | V | F | V | **V** |
| V | F | V | F | **V** |
| V | F | F | F | F |
| F | V | V | F | **V** |
| F | V | F | F | F |
| F | F | V | F | **V** |
| F | F | F | F | F |

Los paréntesis importan. `I ∧ (P ∨ K)` es otra regla, porque obliga a estar inscrito aunque tenga beca: las filas F‑V‑V y F‑F‑V darían F.

## Del lenguaje natural a la condición (laboratorio)

| Regla | Condición |
|---|---|
| «Inscrito y pagó, o tiene beca» | `(inscrito && pago) \|\| beca` |
| «Se cobra envío a menos que sea premium» | `!esPremium` |
| «Todos los productos excepto los agotados» | `producto && !agotado` |
| «El formulario NO es válido» (falta correo o contraseña) | `!correoLleno \|\| !passwordLleno` |
| «Es mayor de edad» | `edad >= 18` |
| «Es menor de edad» | `!(edad >= 18)`, es decir, `edad < 18` |
