Feature: Filtro por Rango de Precios 

    Como usuario, quiero poder filtrar los servicios de belleza por rango de precios para encontrar opciones que se ajusten a mi presupuesto. 


Scenario: Selección de Rango de Precios

Given el <usuario> está en la página de búsqueda de servicios,
When especifica un <rango de precios> utilizando una barra deslizante o campos de texto
And presiona el botón de búsqueda,
Then se muestran solo los <estilistas y salones> cuyos servicios están dentro de ese <rango de precios> especificado.

Examples: Datos de entrada
    | usuario | rango de precios |
    | Ana       | $20 - $50   |

Examples: Datos de salida
    | estilistas y salones |
    | Estilista 1, Salón 1 |


Scenario: Rango de Precios no Coincidente

Given el <usuario> está en la página de búsqueda de servicios,
When especifica un <rango de precios> que no coincide con ningún servicio disponible,
And presiona el botón de búsqueda,
Then se muestra un <mensaje> indicando que no se encontraron resultados dentro del <rango de precios> especificado.

Examples: Datos de entrada
    | usuario | rango de precios |
    | Ana       | $60 - $100    |

Examples: Datos de salida
    | mensaje de falta de resultados |
    | No se encontraron resultados dentro del rango de precios especificado |