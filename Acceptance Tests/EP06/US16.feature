Feature: Visualización de disponibilidad de citas 

    Como usuario, quiero poder ver la disponibilidad de citas de los estilistas en la aplicación para elegir un horario conveniente para mí. 

Scenario: Exploración de Calendario

Given el <usuario> busca un servicio en la aplicación,
When selecciona un <estilista> específico para ver su disponibilidad de citas,
And el sistema muestra un calendario con los <horarios disponibles> del estilista,
Then el usuario puede seleccionar una fecha y hora conveniente para programar su cita.

Examples: Datos de entrada
    | usuario | estilista |
    | Maria     | Estilista 1 |

Examples: Datos de salida
    | horarios disponibles |
    | 10:00 AM - 12:00 PM  |
    | 2:00 PM - 4:00 PM    |


Scenario: Actualización de Disponibilidad

Given un <estilista> actualiza su <horario de disponibilidad> en la aplicación,
When un cliente busca una cita con ese estilista,
And el sistema muestra los <horarios actualizados y disponibles> del estilista,
Then el cliente puede elegir una cita que se ajuste a su horario.

Examples: Datos de entrada
    | estilista | horario de disponibilidad |
    | Estilista 1 | Lunes a Viernes, 9:00 AM - 6:00 PM |

Examples: Datos de salida
    | horarios actualizados y disponibles |
    | Lunes a Viernes, 9:00 AM - 6:00 PM   |
    | Martes a Sábado, 11:00 AM - 8:00 PM  |