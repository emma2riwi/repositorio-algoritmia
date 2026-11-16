# Ejercicio 4 (segunda parte) · Árbol de componentes de una página

Es la misma descomposición top-down que la factura, pero aplicada a una interfaz. Se toma una **página de perfil de una red social** (tipo Instagram) y se divide en componentes. Los que se repiten se marcan con **(×n)**.

```mermaid
flowchart TD
  P[PaginaPerfil] --> H[Encabezado]
  P --> I[InfoPerfil]
  P --> D[Destacadas]
  P --> T[PestanasContenido]
  P --> G[GrillaPublicaciones]
  P --> N[BarraNavegacion]

  H --> H1[Logo]
  H --> H2[NombreUsuario]
  H --> H3[MenuOpciones]

  I --> I1[FotoPerfil]
  I --> I2[Estadisticas]
  I2 --> I21["Contador ×3: publicaciones, seguidores, seguidos"]
  I --> I3[Biografia]
  I --> I4[Botones]
  I4 --> I41["Boton ×2: Editar perfil, Compartir"]

  D --> D1["HistoriaDestacada ×n"]

  T --> T1["Pestana ×3: publicaciones, reels, etiquetas"]

  G --> G1["TarjetaPublicacion ×n"]
  G1 --> G11[Imagen]
  G1 --> G12["IconoTipo: carrusel o video"]

  N --> N1["BotonNavegacion ×5"]
```

## Componentes que se repiten (se diseñan una vez y se reutilizan)

| Componente | Veces | Qué cambia entre una y otra |
|---|---|---|
| `Contador` | 3 | número y etiqueta |
| `Boton` | 2 o más | texto y acción |
| `HistoriaDestacada` | n | imagen y título |
| `Pestana` | 3 | ícono y si está activa |
| `TarjetaPublicacion` | n (lista) | imagen y tipo |
| `BotonNavegacion` | 5 | ícono y destino |

**Por qué sirve:** igual que un SubProceso, un componente tiene **entrada** (sus datos, por ejemplo la imagen y el título) y **salida** (lo que se ve en pantalla). La grilla de publicaciones es un **ciclo** que repite `TarjetaPublicacion` una vez por cada publicación.
