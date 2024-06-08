Feature: Verificación de correo electrónico 

    Como usuario, quiero recibir un correo electrónico de verificación después de registrarme para confirmar mi dirección de correo electrónico. 


Scenario: Verificación exitosa

Given un usuario quiere crear una nueva cuenta,
When encuentra el <correo> que le mandamos donde está el <enlace> con el <codigo> para crear su cuenta,
And ingresa correctamente su <codigo> al <enlace>,
Then la <cuenta nueva> está creada y se le redirige a la <pagina principal> de la aplicación.

Examples: Datos de entrada
    | usuario | correo                | enlace                | codigo  |
    | Ana     | ana@example.com       | www.ejemplo.com/crear | ABC123  |


Examples: Datos de salida
    | cuenta nueva         | pagina principal        |
    | Cuenta de Ana creada | Redirigido a la pagina principal |


Scenario: Error en la verificación

Given un usuario quiere crear una nueva cuenta,
When no encuentra el <correo> que mandamos a la <direccion registrada> y ya presiono el botón <mandar de nuevo>,
And ya pasaron <15 minutos>,
Then aparecerá un <mensaje de error> que pedirá ingresar de nuevo el <correo electronico>.

Examples: Datos de entrada
    | usuario | direccion registrada     | tiempo   |
    | Maria   | maria@example.com        | 15 min   |

Examples: Datos de salida
    | mensaje de error                           |
    | No se encontró el correo. Ingrese de nuevo su correo electrónico. |