Feature: Inicio de sesión de usuario 

    Como usuario registrado, quiero poder iniciar sesión en la aplicación utilizando mi correo electrónico y contraseña. 


Scenario: Iniciar sesión exitosa

Given un usuario quiere ingresar a su cuenta,
When el <usuario> proporciona su <direccion de correo electronico> y <contraseña>,
And presiona el botón <Iniciar Sesion>,
Then el <usuario> es redirigido a la <pagina principal> de la aplicación.

Examples: Datos de entrada
    | usuario | direccion de correo electronico | contraseña |
    | Juan    | juan@example.com                | 12345      |

Examples: Datos de salida
    | pagina principal |
    | Redirigido a la pagina principal |


Scenario: Error al iniciar sesión

Given un usuario quiere ingresar a su cuenta,
When el <usuario> proporciona un <correo electronico invalido> o <contrasena invalida>,
And presiona el botón <Iniciar Sesion>,
Then aparece en pantalla un <mensaje de error>, indicando donde se encuentra el error y pidiendo que se ingrese de nuevo.

Examples: Datos de entrada
    | usuario | correo electronico invalido   | contraseña invalida |
    | Carlos  | carlos@example.com            | 54321               |

Examples: Datos de salida
    | mensaje de error               |
    | Correo electrónico o contraseña incorrectos. Por favor intente de nuevo. |