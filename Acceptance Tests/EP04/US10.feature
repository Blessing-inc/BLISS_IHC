Feature: Suscripción de estilista al sistema de pagos 

    Como estilista, quiero poder suscribirme al sistema de pagos en la aplicación para acceder a todas las funciones de promoción y gestionar los pagos de las citas de manera segura.


Scenario: Suscripción Premium Exitosa

Given un <estilista> desea acceder a las <funciones de promocion> en la aplicación,
When accede a la <seccion de suscripcion> al <sistema de pagos> desde su <perfil>,
And completa el formulario de suscripcion proporcionando la <informacion requerida>,
Then el <estilista> completa con éxito el <proceso de suscripcion> y obtiene <acceso> a todas las funciones premium.

Examples: Datos de entrada
    | estilista | seccion     | perfil              | informacion requerida             |
    | Juan      | suscripción | Perfil de Estilista | Información de pago y contacto    |

Examples: Datos de salida
    | estilista | proceso de suscripcion | acceso otorgado                     |
    | Juan      | Completado             | Acceso a funciones de promoción     |


Scenario: Habilitación de Pagos Seguros

Given un <estilista> está listo para gestionar los pagos de las citas a través de la aplicación,
When inicia sesion en su cuenta y encuentra una opcion para suscribirse al sistema de pagos,
And sigue los pasos para completar la suscripcion y verificar su <cuenta bancaria> o metodo de pago preferido,
Then el <estilista> está habilitado para recibir <pagos> de manera segura a través de la plataforma.

Examples: Datos de entrada
    | estilista | cuenta              | cuenta bancaria  |
    | Juan      | Cuenta de Estilista | Verificación de cuenta bancaria           |

Examples: Datos de salida
    | permisos de pagos del estilista |
    | Habilitados |