Feature: Filtro por Ubicación 

    Como usuario, quiero poder filtrar los servicios de belleza por ubicación para encontrar opciones cerca de mí.


Scenario: Búsqueda por Ubicación

Given un <usuario> ha seleccionado una <fecha> y <hora> para una cita en la aplicación,
When procede a confirmar la cita seleccionada,
And el sistema verifica la disponibilidad del estilista para esa <fecha> y <hora>,
Then el usuario recibe una <confirmacion> de que la cita está programada correctamente.

Examples: Datos de entrada
    | usuario | fecha    | hora  |
    | Ana       | 2024-06-15 | 10:00   |

Examples: Datos de salida
    | confirmación de cita |
    | programada correctamente |


Scenario: Búsqueda sin Resultados

Given un <usuario> ha elegido un <horario de cita> en la aplicación,
When intenta confirmar la cita,
But el <horario seleccionado> ya no está disponible debido a una reserva reciente,
Then el sistema muestra una <notificacion> al usuario sobre la falta de disponibilidad y le solicita que elija otro horario.

Examples: Datos de entrada
    | usuario | horario de cita |
    | Ana       | 2024-06-15 11:00   |
    | Juan      | 2024-06-20 14:00   |

Examples: Datos de salida
    | notificación de falta de disponibilidad |
    | Por favor, elija otro horario disponible |