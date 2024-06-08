Feature: Gestión de pagos de citas por parte del estilista 

    Como estilista, quiero poder gestionar los pagos de las citas realizadas a través de la aplicación para garantizar una transacción segura y sin problemas.


Scenario: Registro de Pago Post-Cita

Given un <estilista> ha completado una <cita> con un <cliente>,
When accede al <registro de citas realizadas> en la aplicación,
And selecciona una <cita especifica> para la cual necesita gestionar el <pago>,
Then el <estilista> puede registrar manualmente el <pago recibido> por la <cita> o marcar la <cita> como <pagada> si se procesó electrónicamente.

Examples: Datos de entrada
    | estilista | cita                | cliente |
    | Juan      | Corte de Cabello    | Maria   |

Examples: Datos de salida
    | pago recibido | estado de cita | pagada |
    | Registrado    | Confirmada | Sí     |


Scenario: Proceso de Reembolso Eficiente

Given un <estilista> necesita realizar un <reembolso> por una <cita cancelada> o <modificada>,
When accede a la <seccion de gestion de pagos> y selecciona la <cita correspondiente>,
And sigue el <proceso> para procesar el <reembolso> a través del <sistema de pagos integrado> en la aplicación,
Then el <estilista> completa con éxito el <reembolso> y se asegura de que el <cliente> reciba el <reembolso> de manera oportuna y adecuada.

Examples: Datos de entrada
    | estilista | cita cancelada | cliente |
    | Juan      | Corte de Cabello | Maria  |

Examples: Datos de salida
    | reembolso | cliente | reembolso completado |
    | Procesado | Maria   | Sí                  |