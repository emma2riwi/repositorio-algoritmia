# Reto 1 - Tablas de verdad

## Acceso a un evento

La regla dice que entran los mayores de 18 con boleta, o los menores que vayan con un adulto (también con boleta).

Usé tres proposiciones:
- M: es mayor de edad (edad >= 18)
- B: tiene boleta
- A: va acompañado de un adulto

Al principio la escribí como `(M y B) o (no M y A y B)`, pero me di cuenta de que se puede dejar más corta: `B y (M o A)`. Con 3 proposiciones salen 8 filas:

| M | B | A | Entra |
|---|---|---|---|
| V | V | V | V |
| V | V | F | V |
| V | F | V | F |
| V | F | F | F |
| F | V | V | V |
| F | V | F | F |
| F | F | V | F |
| F | F | F | F |

En la tabla se ve que sin boleta no entra nadie, y que el menor necesita boleta y adulto. El algoritmo está en [01-acceso-evento.psc](01-acceso-evento.psc).

## Inscripción a un curso

Esta es la del ejemplo de clase: puede entrar quien está inscrito y pagó, o quien tiene beca. Queda `(I y P) o K`.

| I | P | K | Puede entrar |
|---|---|---|---|
| V | V | V | V |
| V | V | F | V |
| V | F | V | V |
| V | F | F | F |
| F | V | V | V |
| F | V | F | F |
| F | F | V | V |
| F | F | F | F |

Aquí aprendí que los paréntesis cambian todo. Si lo escribo `I y (P o K)`, alguien con beca que no se inscribió ya no podría entrar.

## Del lenguaje natural a la condición (laboratorio)

- "Inscrito y pagó, o tiene beca" es `(inscrito && pago) || beca`
- "Se cobra envío a menos que sea premium" es `!esPremium`
- "Todos los productos excepto los agotados" es `producto && !agotado`
- "El formulario no es válido" es `!correoLleno || !passwordLleno`
- "Es mayor de edad" es `edad >= 18`
- "Es menor de edad" es `edad < 18`
