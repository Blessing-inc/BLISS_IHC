Feature: Creación de cuenta de usuario 

    Como usuario nuevo, quiero poder crear una cuenta en la aplicación proporcionando mi nombre, dirección de correo electrónico y contraseña.

Scenario: Registro completado

Given un nuevo usuario quiere registrarse,
When <usuario> ingresa su <nombre>, <direccion de correo electronico> y <contraseña>,
And presiona el botón de <Crear Cuenta>,
Then se envía un <correo de verificacion> a la <direccion de correo electronico> enviada.

Examples: Datos de entrada
    | usuario | nombre | direccion de correo electronico | contraseña |
    | Ana     | Ana    | ana@example.com                 | password1  |

Examples: Datos de salida
    | correo de verificacion                                         |
    | Se ha enviado un correo de verificación a ana@example.com. |


Scenario: Error al registrar los datos

Given un nuevo usuario quiere registrarse,
When <usuario> ingresa un <nombre>, <contrasena> o un <correo electronico> que no cumpla los requisitos establecidos,
And presiona el botón de <Crear Cuenta>,
Then aparece en pantalla un <mensaje de error>, indicando donde se encuentra el error y pidiendo que se ingrese de nuevo.

Examples: Datos de entrada
    | usuario | nombre   | direccion de correo electronico | contraseña |
    | Maria   | Maria    | mariaexample.com                | pass       |

Examples: Datos de salida
    | mensaje de error                                          |
    | El correo electrónico no es válido.                      |
