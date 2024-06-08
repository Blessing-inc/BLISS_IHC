Feature: Búsqueda de servicios de belleza

    Como usuario, quiero poder buscar servicios de belleza en la aplicación según mis preferencias y necesidades. 

Scenario: Búsqueda por Tipo de Servicio

Given un usuario desea encontrar un servicio de belleza específico en la aplicación,
When el <usuario> accede a la función de búsqueda y selecciona el <tipo de servicio> que necesita, como corte de cabello o manicura,
And la aplicación filtra los resultados para mostrar solo los <estilistas> que ofrecen ese tipo de servicio en su respetivoárea,
Then el <usuario> puede explorar las <opciones disponibles> y seleccionar un estilista para programar una cita.

Examples: Datos de entrada
    | usuario | tipo de servicio |
    | Maria | corte de cabello |

Examples: Datos de salida
    | lista de estilistas | servicios ofrecidos |
    | Estilista 1, Estilista 2 | corte de cabello |


Scenario: Búsqueda por Ubicación

Given que un usuario prefiere encontrar un estilista cercano a su ubicación,
When el <usuario> utiliza la función de búsqueda y especifica su <ubicacion actual> o <codigo postal>,
And la aplicación muestra una <lista de estilistas> disponibles en esa área junto con sus <servicios ofrecidos>,
Then el <usuario> puede revisar las <opciones cerca de el> y elegir un estilista conveniente para programar una cita.

Examples: Datos de entrada
    | usuario | ubicación actual |
    | Ana | 12345 |

Examples: Datos de salida
    | lista de estilistas | servicios ofrecidos |
    | Estilista 5, Estilista 6 | varios servicios |
