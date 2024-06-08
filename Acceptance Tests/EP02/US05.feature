Feature: Edición de perfil de estilista 

    Como estilista, quiero poder editar mi perfil en la aplicación para actualizar la información sobre mi salón y servicios.


Scenario: Modificar el perfil de estilista

Given el <estilista> quiere cambiar la información de su perfil,
When accede a la <pagina> de creacion de perfil desde la página principal,
And cambia la <informacion guardada> en su <formulario>,
Then se modifica el <perfil>, se guarda la <informacion> y se muestra en la aplicación.

Examples: Datos de entrada
    | estilista | página                       | información guardada | formulario |
    | Carlos    | página de creación de perfil | Información actual   | formulario modificado |

Examples: Datos de salida
    | perfil modificado | información guardada |
    | Perfil actualizado | Información del salón, servicios y promociones actualizada |