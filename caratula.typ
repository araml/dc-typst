/* Caratula typst v1 
 * Fecha: 01-09-2026
 */ 

#let informe(titulo: none, 
             subtitulo: none, 
             materia: none, 
             cuatrimestre: none, 
             integrantes: (), body) = {
  show heading.where(level: 1): set text(26pt)
  grid(
    columns: (1fr, auto),
    row-gutter: (5em, 0.6em, 0.6em, 0.6em, 4em),
    grid.cell(colspan: 2, align: right, image("logo_dc.jpg", width: 220pt)),
    grid.cell(colspan: 2, [
      = #titulo \
      #text(14pt, weight: "bold")[#subtitulo]
    ]),
    grid.cell(colspan: 2, line(length: 100%)),
    [], [#text(13pt)[#materia]],
    [], [#cuatrimestre],
    grid.cell(colspan: 2, align: center,
      table(
        columns: (auto, auto, auto),
        stroke: (x, y) => (
        left: if x == 0 { 0.5pt },
        right: if x == 2 { 0.5pt },
        top: 0.5pt, 
        bottom: 0.5pt
        ),
        table.header([Nombre], [LU], [email]),
        ..integrantes.map(integrante => (
          integrante.nombre,
          integrante.lu, 
          link("mailto:" + integrante.email)
          )
        ).flatten(),
      )
    )
  )
  
  place(bottom + left, image("logo_uba.jpg", width: 230pt))
  pagebreak()
  
  body 
}