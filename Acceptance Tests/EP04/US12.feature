Feature: Gestión de facturación y reportes para estilistas 

    Como estilista, quiero poder acceder a herramientas de gestión de facturación y generar reportes sobre los ingresos y pagos de mi negocio.


Scenario: Exploración Detallada del Perfil del Estilista

Given un <usuario> busca servicios de belleza ofrecidos por un <estilista> en particular,
When accede al <perfil del estilista> en la aplicación,
And encuentra una <lista detallada de servicios> que el <estilista> ofrece, junto con sus <descripciones> y <precios>,
Then el <usuario> puede revisar los <servicios disponibles> y decidir si desea reservar una cita con ese <estilista>.

Examples: Datos de entrada
    | usuario | estilista      |
    | Ana     | Estilista Juan |

Examples: Datos de salida
    | lista detallada de servicios     | descripciones | precios |
    | Corte de Cabello, Manicura       | Descripción 1 | $30, $20|


Scenario: Comparación de Servicios entre Estilistas

Given un <usuario> está buscando un <servicio especifico> en la aplicación,
When utiliza la <funcion de busqueda> para encontrar <estilistas> que ofrecen ese <servicio> en su <area>,
And examina los <perfiles de los estilistas> que aparecen en los <resultados de busqueda>,
Then el <usuario> puede ver los <servicios ofrecidos> por cada <estilista> y comparar las <opciones> antes de tomar una decisión de reserva.

Examples: Datos de entrada
    | usuario | servicio especifico | area   |
    | Laura   | Corte de Cabello    | 12345  |

Examples: Datos de salida
    | perfiles de los estilistas  | servicios ofrecidos   | opciones                  |
    | Estilista Juan, Estilista Maria | Corte de Cabello | Juan: $30, Maria: $25 |