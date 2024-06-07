Feature: Notificación de confirmación de reserva 

    Como usuario, quiero recibir una notificación de confirmación después de reservar una cita en la aplicación para tener la seguridad de que se ha realizado correctamente. 

Scenario: Notificación Automática

Given un <usuario> ha realizado una reserva de cita en la aplicación,
When el <estado de la reserva> es correcto,
And se genera automáticamente una <notificacion> de confirmación,
Then el usuario recibe la <notificacion> en su dispositivo móvil o por correo electrónico,
And la notificación incluye <detalles de la cita> como la fecha, hora y ubicación de la cita.

Examples: Datos de entrada
    | usuario | estado de la reserva |
    | Maria     | Correcto |

Examples: Datos de salida
    | notificacion con detalles de la cita                                                |
    | Su cita para el corte de cabello está confirmada para el 25/06/2024 a las 10:00 a.m. en Hair Salon XYZ. Por favor, asegúrese de llegar a tiempo. |