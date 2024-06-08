Feature: Pantalla de inicio con fluidez

    Como usuario, quiero tener una pantalla fluida de inicio para poder navegar de manera sencilla.


Scenario: Pantalla Fluida de Inicio

Given el usuario inicia la aplicación,
When la <pantalla de inicio> se carga sin <demoras perceptibles>,
Then se garantiza una <transicion fluida> hacia la navegación principal de la aplicación.

Examples: Datos de entrada
    | usuario | pantalla de inicio |
    | Maria   | se carga sin demoras perceptibles |

Examples: Datos de salida
    | transición fluida |
    | Transición hacia la navegación principal sin demoras |


Scenario: Acceso Rápido a Funcionalidades Clave

Given el usuario ha abierto la aplicación,
When accede a la <pantalla de inicio>,
And encuentra las <opciones principales> claramente etiquetadas y organizadas,
Then la aplicación ofrece una <navegacion sencilla> hacia funciones clave como búsqueda de servicios, visualización de perfiles de estilistas y programación de citas con no más de <dos toques o clics>.

Examples: Datos de entrada
    | usuario | pantalla de inicio |
    | Laura   | opciones principales claramente etiquetadas |

Examples: Datos de salida
    | navegacion sencilla |
    | Búsqueda de servicios, visualización de perfiles y programación de citas en dos toques |