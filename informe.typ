#import "caratula.typ": *

#let my-bib = ``` 
  @book{rockafellar1999network,
    author = {Rockafellar, Tyrell R.},
    title = {Network flows and Monotropic optimization},
    year = 1999
  },
  @book{ahuja1993network,
    author = {Ahuja, Ravindra K and Magnanti, Thomas L and Orlin, James B},
    title = {Network Flows: Theory, Algorithms, and Applications},
    year = 1993
  },
  @book{oxley1993matroid,
  title={Matroid Theory},
  author={Oxley, J.G.},
  series={Oxford graduate texts in mathematics},
  year={1993},
  publisher={Oxford University Press}
}
```.text

#show: informe.with(
  titulo: "TP 1 - PLE",
  subtitulo: "El problema del Viajante de Comercio",
  materia: "Introducción a la Investigación Operativa",
  cuatrimestre: "Segundo Cuatrimestre 2026",
  integrantes: (
    (
      nombre: "Jack Skellington",
      lu: "01/68",
      email: "jskellington@halloween.com",
    ),
    (
      nombre: "Lock",
      lu: "122/86",
      email: "lock@oogie.bogie.com",
    ),
  ),
)

= Introducción

#lorem(80)

= Modelo 

== Primer modelo

= Experimentación


== Primer experimento 

== Segundo experimento

#bibliography(bytes(my-bib), full: true)