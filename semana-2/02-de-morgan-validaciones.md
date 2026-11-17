# Ejercicio 2 · Negar sin equivocarse: De Morgan en validaciones

**Leyes de De Morgan:**
- `¬(A ∧ B) = ¬A ∨ ¬B`
- `¬(A ∨ B) = ¬A ∧ ¬B`

Se niega cada parte y se cambia el conector.

## Caso 1 · Formulario de login

- Válido: `correoLleno && passwordLleno`
- **No válido (bien):** `!correoLleno || !passwordLleno`. Basta con que falte uno.
- No válido (error clásico): `!correoLleno && !passwordLleno`. Solo detecta cuando faltan los dos.

| correoLleno | passwordLleno | Válido | Negación correcta | Error clásico |
|---|---|---|---|---|
| V | V | V | F | F |
| V | F | F | **V** | F ← no detecta el error |
| F | V | F | **V** | F ← no detecta el error |
| F | F | F | V | V |

Implementación: [`02-formulario-de-morgan.psc`](02-formulario-de-morgan.psc).

## Caso 2 · Validador de contraseña (ejercicio propuesto)

Regla: válida si tiene **al menos 8 caracteres** (L), **al menos un número** (N) y **no contiene "password"** (P).

- Válida: `L ∧ N ∧ ¬P`
- **Inválida (De Morgan):** `¬L ∨ ¬N ∨ P`

Cada parte de la negación es un mensaje de error distinto:

| Parte negada | Mensaje |
|---|---|
| `¬L` (longitud < 8) | «Debe tener al menos 8 caracteres» |
| `¬N` (no hay dígitos) | «Debe incluir al menos un número» |
| `P` (contiene "password") | «No puede contener la palabra password» |

Prueba de escritorio:

| Contraseña | L | N | P | Resultado |
|---|---|---|---|---|
| `riwi2026` | V | V | F | Válida (8 caracteres justos: límite) |
| `riwi202` | F | V | F | Error: menos de 8 |
| `abcdefgh` | V | F | F | Error: sin número |
| `Password1` | V | V | V | Error: contiene password (sin importar mayúsculas) |
| `abc` | F | F | F | Dos errores: longitud y número |

Pseudocódigo (con las proposiciones ya calculadas, como en el soporte temático):

```
SI NO tieneOchoCaracteres ENTONCES mostrar "Debe tener al menos 8 caracteres"
SI NO tieneNumero         ENTONCES mostrar "Debe incluir al menos un número"
SI contienePassword       ENTONCES mostrar "No puede contener la palabra password"
SI tieneOchoCaracteres Y tieneNumero Y NO contienePassword ENTONCES mostrar "Contraseña válida"
```
