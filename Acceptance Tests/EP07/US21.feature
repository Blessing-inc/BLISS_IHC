Feature: Filtrar estilistas por calificación y reseñas 

    Como usuario, quiero poder filtrar y ordenar la lista de estilistas disponibles según su calificación y las reseñas dejadas por otros usuarios.


Scenario: Filtrado por Calificación y Reseñas

Given un <usuario> está buscando un estilista en la aplicación,
When accede a la <funcion> de filtro y ordenamiento,
And selecciona la <opcion> de filtrar estilistas por calificación y reseñas,
Then la <lista de estilistas> se actualiza para mostrar solo aquellos con calificaciones y reseñas específicas.

Examples: Datos de entrada
    | usuario   | función | tipo de filtro |
    | Maria     | filtrar | por calificación y reseñas |

Examples: Datos de salida
    | estilistas_filtrados |
    | Estilista 1, Estilista 3 |


Scenario: Ordenamiento por Calificación

Given un <usuario> está navegando por la lista de estilistas disponibles en la aplicación,
When activa la función de filtro por calificación y reseñas,
And elige ordenar la lista en función de las calificaciones más altas,
Then la <lista> se reorganiza para mostrar primero los estilistas mejor valorados según las reseñas de otros usuarios.

Examples: Datos de entrada
    | usuario   |
    | Maria     |

Examples: Datos de salida
    | lista_ordenada |
    | Estilista 3, Estilista 1, Estilista 2 |