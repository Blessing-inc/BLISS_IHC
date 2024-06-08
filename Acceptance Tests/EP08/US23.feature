Feature: Respuesta a la retroalimentación del cliente 

    Como estilista, quiero tener la opción de responder a la retroalimentación dejada por los clientes para agradecerles o abordar cualquier inquietud que puedan tener.


Scenario: Manejo de Retroalimentación Negativa

Given un <estilista> recibe una <retroalimentacion> negativa de un cliente después de una cita,
When el <estilista> tiene la opción de responder a la retroalimentación del cliente,
And decide abordar las preocupaciones del cliente o agradecerle por sus comentarios,
Then la respuesta del <estilista> se muestra junto con la retroalimentación del <cliente> en la aplicación.

Examples: Datos de entrada y salida
    | estilista   | cliente | retroalimentacion |
    | Estilista | Maria | comentario negativo |


Scenario: Agradecimiento por Retroalimentación Constructiva

Given un <estilista> recibe una <retroalimentacion> constructiva de un cliente después de una cita,
When el <estilista> toma nota de los comentarios del cliente y se compromete a mejorar en áreas específicas,
And el <estilista> responde con un mensaje personalizado expresando su aprecio por la retroalimentación útil,
Then el <cliente> se siente valorado y comprendido por el <estilista>.

Examples: Datos de entrada y salida
    | estilista   | cliente | retroalimentacion |
    | Estilista | Maria | comentario constructivo |