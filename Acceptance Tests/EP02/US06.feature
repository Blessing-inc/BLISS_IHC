Feature: Visualización de perfil de estilista 

    Como usuario, quiero poder ver el perfil de un estilista en la aplicación para obtener información sobre su salón y los servicios que ofrece.

Feature: Visualización de Perfil de Estilista

Como usuario, quiero poder ver la información de un estilista en su perfil para conocer su ubicación y los servicios que ofrece.


Scenario: Visualización de perfil de estilista

Given el <usuario> desea ver la <informacion de un estilista> en su perfil,
When ingrese a la <opcion de Busqueda de Servicio> en la pagina principal,
And presione al <estilista> que le interese,
Then aparecera la <informacion de su perfil de estilista>, que contiene la <ubicacion de su salon de belleza> y los <servicios que ofrece>.

Examples: Datos de entrada
    | usuario | opcion de Busqueda de Servicio | estilista               |
    | Laura   | Búsqueda de Servicio           | Estilista Juan          |

Examples: Datos de salida
    | informacion de su perfil de estilista | ubicación de su salon de belleza | servicios que ofrece        |
    | Perfil de Estilista Juan              | Avenida Siempre Viva, 123         | Corte de pelo, Manicura      |