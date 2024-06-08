Feature: Dejar valoración y reseña después de la cita 

    Como usuario, quiero poder dejar una valoración y reseña sobre el servicio recibido después de completar una cita para ayudar a otros usuarios en su elección.


Scenario: Publicación de Reseña Poscita

Given un <usuario> ha completado una cita con un <estilista>,
When accede a la <seccion de valoraciones> en la aplicación,
And escribe una <resena> detallada sobre la experiencia del servicio recibido,
And selecciona una <calificacion de estrellas>,
Then confirma la publicación de la <resena>.

Examples: Datos de entrada
    | usuario | estilista      | seccion      | reseña |
    | Maria   | Estilista Juan | Valoraciones | reseña del usuario |


Scenario: Reconocimiento de Reseña Positiva

Given un <estilista> ha prestado un servicio a un <cliente>,
When el <cliente> deja una <resena> y <calificacion> después de la cita,
And la <reseña> incluye <comentarios> sobre la calidad del servicio y la profesionalidad del <estilista>,
Then el <estilista> recibe una <notificación> sobre la nueva <reseña> y puede verla en su <perfil>.

Examples: Datos de entrada
    | estilista      | cliente | comentarios  |
    | Estilista Juan | Maria   | Excelente servicio!   |