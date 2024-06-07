Feature: Cancelación de cita por parte del usuario 

    Como usuario, quiero tener la opción de cancelar una cita reservada en la aplicación en caso de necesidad. 

Scenario: Cancelación Confirmada

Given un <usuario> necesita cancelar una cita previamente reservada en la aplicación,
When accede a la sección de citas próximas en la aplicación,
And selecciona una <cita> y la <opcion> de cancelar la cita correspondiente,
Then se le presenta un <mensaje de confirmacion> para asegurarse de que realmente desea cancelar la cita.

Examples: Datos de entrada
    | usuario | cita | opcion |
    | Maria     | Cita 1 | Cancelar cita |

Examples: Datos de salida
    | mensaje de confirmación |
    | ¿Estás seguro de que deseas cancelar esta cita? |


Scenario: Cancelación con Cargo Adicional

Given un <usuario> necesita cancelar una cita debido a un imprevisto de último minuto,
When intenta <cancelar> la cita después del plazo establecido por la política de cancelación,
Then se le informa al usuario mediante un <mensaje> sobre posibles cargos por cancelación tardía, si corresponde,
And se le da la opción de confirmar la cancelación y aceptar los cargos adicionales, o reconsiderar y conservar la cita.

Examples: Datos de entrada
    | usuario | opcion |
    | Ana       | Cancelar cita |

Examples: Datos de salida
    | mensaje de cargos adicionales |
    | ¿Estás seguro de que deseas cancelar esta cita? Se aplicará un cargo por cancelación tardía de $10. |