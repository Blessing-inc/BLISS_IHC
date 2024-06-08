Feature: Creación de perfil de estilista 

    Como estilista, quiero poder crear un perfil en la aplicación para mostrar información sobre mi salón de belleza y los servicios que ofrezco.


Scenario: Publicación de perfil de estilista

Given el <usuario> quiere ser reconocido como <estilista> para ofrecer sus servicios,
When accede a la <página de creación de perfil> desde la <página principal>,
And completa el <formulario de creacion de perfil> con <informacion sobre su salon>, <servicios> y <promociones>,
Then se completa el <perfil>, se guarda la <informacion> y se muestra en la aplicación.

Examples: Datos de entrada
    | usuario | página de creación de perfil  | formulario de creación de perfil | información sobre su salón | servicios | promociones |
    | Carlos  | página de creación de perfil  | formulario completo              | Salón XYZ                  | Corte, Tinte | 10% descuento en la primera visita |

Examples: Datos de salida
    | perfil | información |
    | Perfil completo y guardado | Información del salón, servicios y promociones |