Feature: Generación de cita en línea

    Como usuario, quiero poder reservar una cita con un estilista disponible en la aplicación.


Scenario: Reserva de Cita desde el Calendario

Given un usuario ha encontrado un servicio de belleza deseado en la aplicación,
And el estilista <estilista> tiene disponibilidad para una cita el <fecha> a las <hora>,
When selecciona al estilista <estilista> para programar una cita el <fecha> a las <hora>,
And completa el proceso de generación de cita en línea,
Then el usuario recibe una <confirmacion> de la reserva.

Examples: Datos de entrada
    | usuario   | estilista   | fecha      | hora   |
    | Maria     | Estilista 1 | 2024-06-20 | 10:00  |

Examples: Datos de salida
    | confirmación        |
    | Cita reservada con éxito |


Scenario: Flujo Sencillo de Reserva de Cita

Given un usuario está navegando por la lista de servicios de belleza ofrecidos en la aplicación,
And el usuario ha seleccionado el servicio deseado: <servicio deseado>,
When el usuario selecciona la <opcion> de "Reservar cita" junto al servicio deseado,
And el sistema busca un estilista disponible para el servicio <servicio deseado>,
Then el usuario es guiado a través de un flujo sencillo para elegir un <estilista> disponible y confirmar los detalles de la cita.

Examples: Datos de entrada
    | servicio deseado | opcion |
    | Corte de cabello  | Reservar cita |

    Examples: Datos de salida
    | estilista   | fecha     | hora | confirmación  |
    | Estilista 3   | 2024-06-25 | 14:00  | Cita reservada con éxito |