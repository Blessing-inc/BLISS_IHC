Feature: Gestión de citas 

    Como usuario, quiero poder comparar los precios de diferentes servicios de belleza para tomar decisiones informadas. 

Feature: Comparación de Precios al Buscar

Scenario: Comparación de Precios al Buscar

Given un usuario busca servicios de belleza en la aplicación,
When el <usuario> accede a la sección de búsqueda de servicios y selecciona un <tipo de servicio>,
And se le presentan opciones de diferentes estilistas junto con los precios de cada servicio,
Then el <usuario> puede comparar los precios y tomar decisiones informadas sobre qué servicio reservar.

Examples: Datos de entrada
    | usuario | tipo de servicio |
    | Maria | manicura |

Examples: Datos de salida
    | lista de estilistas | precios de servicios |
    | Estilista 1, Estilista 2 | precios detallados |

Feature: Evaluación de Relación Calidad-Precio

Scenario: Evaluación de Relación Calidad-Precio

Given un usuario está explorando los perfiles de estilistas en la aplicación,
When el <usuario> selecciona un estilista en particular y examina los servicios que ofrece,
And encuentra una lista detallada de servicios con sus respectivos precios,
Then el <usuario> puede evaluar la relación calidad-precio y decidir si desea reservar una cita con ese estilista.

Examples: Datos de entrada
    | usuario | estilista seleccionado |
    | Ana | Estilista 5 |

Examples: Datos de salida
    |  lista de servicios con precios |
    |  precios detallados |
