Feature: Filtro por Tipo de Servicio 

    Como usuario, quiero poder filtrar los servicios de belleza por tipo para encontrar fácilmente lo que necesito. 

Scenario: Búsqueda por Tipo de Servicio

Given un <usuario> está buscando servicios de belleza en la aplicación,
When selecciona un tipo de servicio específico, como <tipo de servicio>,
And el sistema filtra los resultados para mostrar solo los estilistas que ofrecen ese tipo de servicio,
Then el usuario puede explorar la <lista de estilistas> disponibles para ese servicio.

Examples: Datos de entrada
    | usuario | tipo de servicio |
    | Ana       | corte de pelo      |

Examples: Datos de salida
    | lista de estilistas    |
    | Estilista 1, Estilista 2 |


Scenario: Actualización de Servicios en el Perfil

Given un <estilista> actualiza los servicios que ofrece en su perfil,
When un cliente busca un <servicio> específico proporcionado por ese estilista,
And el sistema filtra los resultados para mostrar ese servicio en el perfil del estilista,
Then el cliente puede ver la <lista de servicios disponibles> y programar una cita según sus necesidades.

Examples: Datos de entrada
    | estilista   | servicio buscado |
    | Estilista 1   | corte de cabello    |

Examples: Datos de salida
    | lista de servicios disponibles |
    | corte de cabello, tinte, peinado |