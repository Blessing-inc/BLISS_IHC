Feature: Recepción de calificación detallada después de la cita 

    Como estilista, quiero recibir una calificación detallada de mis servicios después de cada cita para comprender mejor las áreas en las que puedo mejorar. 


Scenario: Retroalimentación Constructiva

Given un <estilista> ha completado una cita con un cliente,
When el <cliente> deja una calificación detallada y comentarios sobre la experiencia del servicio recibido,
And el estilista recibe la <calificacion> y comentarios después de la cita,
Then el estilista puede comprender mejor las áreas en las que puede mejorar y proporcionar una experiencia óptima en futuras citas.

Examples: Datos de entrada
    | estilista   | cliente | calificacion |
    | Estilista 1 | Maria   | 4            |
    | Estilista 2 | Juan    | 3            |


Scenario: Agradecimiento por Retroalimentación Positiva

Given un <estilista> recibe una calificación positiva de un cliente después de una cita,
When el <cliente> destaca aspectos específicos del servicio que disfrutó y proporciona comentarios elogiosos,
And el estilista recibe la <calificacion> y comentarios con gratitud,
Then el estilista se siente motivado y confiado en la calidad de su trabajo.

Examples: Datos de entrada
    | estilista   | cliente | calificacion |
    | Estilista 1 | Maria   | 5            |
    | Estilista 2 | Juan    | 4            |