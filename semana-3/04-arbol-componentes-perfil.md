# Árbol de componentes de una página de perfil

Para esta parte tomé una página de perfil tipo Instagram y la dividí en componentes, igual que hicimos con la factura pero con la pantalla. Marqué con ×n los que se repiten.

```mermaid
flowchart TD
  P[PaginaPerfil] --> H[Encabezado]
  P --> I[InfoPerfil]
  P --> D[Destacadas]
  P --> T[Pestanas]
  P --> G[GrillaPublicaciones]
  P --> N[BarraNavegacion]

  H --> H1[Logo]
  H --> H2[NombreUsuario]
  H --> H3[Menu]

  I --> I1[FotoPerfil]
  I --> I2["Contador ×3: publicaciones, seguidores, seguidos"]
  I --> I3[Biografia]
  I --> I4["Boton ×2: editar perfil, compartir"]

  D --> D1["HistoriaDestacada ×n"]
  T --> T1["Pestana ×3"]
  G --> G1["Publicacion ×n"]
  N --> N1["BotonNavegacion ×5"]
```

Los que se repiten son el contador, los botones, las historias destacadas, las pestañas, las publicaciones y los botones de abajo. Cada uno se hace una vez y se reutiliza cambiándole los datos (la imagen, el texto o el número).

Me pareció parecido a los SubProcesos: cada componente recibe sus datos y muestra algo. Y la grilla de publicaciones es como un ciclo que repite la publicación por cada foto.
