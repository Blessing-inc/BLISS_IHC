Feature: Visualizar valoraciones y reseñas de otros usuarios 

    Como usuario, quiero poder ver las valoraciones y reseñas dejadas por otros usuarios sobre un estilista en particular para tomar decisiones informadas.


Scenario: Exploración de Valoraciones en el Perfil

Given un <usuario> busca información sobre un estilista en particular,
When accede al <perfil> del estilista en la aplicación,
And encuentra una sección dedicada a las valoraciones y reseñas dejadas por otros usuarios,
Then puede leer las valoraciones y reseñas para tomar decisiones informadas sobre el estilista.

Examples: Datos de entrada
    | usuario | perfil seleccinado |
    | Maria   | perfil del estilista |


Scenario: Revisión de Valoraciones en la Búsqueda

Given un <usuario> está explorando los resultados de búsqueda de estilistas en la aplicación,
When selecciona un <estilista> específico para ver más detalles,
And encuentra una lista de valoraciones y reseñas dejadas por otros usuarios,
Then puede ver la calificación promedio y leer las reseñas para evaluar la calidad del servicio del estilista.

Examples: Datos de entrada
    | usuario | estilista seleccionado |
    | Maria   | estilista 1 |