Feature: Análisis de calificaciones y retroalimentación recibidas 

    Como estilista, quiero tener acceso a herramientas de análisis para comprender mejor las áreas en las que puedo mejorar en base a las calificaciones y retroalimentación recibidas. 


Scenario: Análisis de Desempeño Mensual

Given un <estilista> accede al panel de análisis en la aplicación,
When revisa las calificaciones y retroalimentación recibidas de los clientes en un período de tiempo específico,
And utiliza herramientas de análisis para identificar patrones y áreas de mejora en su servicio,
Then el <estilista> puede tomar medidas para mejorar la calidad de su trabajo y la satisfacción del cliente.

Examples: Datos de entrada
    | estilista   | período de tiempo |
    | Estilista X | último mes        |

Examples: Datos de salida
    | patrones identificados | áreas de mejora |
    | Calidad del servicio baja en horarios nocturnos | Mejorar la atención al cliente |


Scenario: Investigación de Calificación Baja

Given un <estilista> está revisando su desempeño mensual en la aplicación,
When analiza las calificaciones y retroalimentación recibidas de los clientes durante el último mes,
And encuentra que un servicio en particular tiene una calificación más baja de lo esperado,
Then el <estilista> investiga las razones detrás de la calificación y toma medidas correctivas según sea necesario.

Examples: Datos de entrada
    | estilista   | calificación baja |
    | Estilista X | servicio de corte de cabello |

Examples: Datos de salida
    | razones de la calificación baja |
    | Retrasos en la atención |