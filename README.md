# tareaTriggers
Investigación:

*¿Qué son los triggers en bases de datos, cómo funcionan, y los diferentes tipos?

Un trigger o disparador en bases de datos es un conjunto de instrucciones SQL que se ejecutan automáticamente en respuesta a ciertos eventos, como inserciones, actualizaciones o eliminaciones de datos. Su principal función es gestionar y mantener la integridad de la información sin intervención manual, facilitando así la automatización de procesos y la sincronización de datos. Existen varios tipos de triggers, entre los que destacan:
BEFORE: Se ejecuta antes de que se realice la operación (INSERT, UPDATE o DELETE).
AFTER: Se ejecuta después de que se complete la operación.
INSTEAD OF: Reemplaza la operación original, permitiendo realizar acciones específicas en lugar de la operación que activó el trigger.
Estos disparadores son útiles para validar datos, realizar auditorías, y mantener registros automáticos, contribuyendo a una gestión más eficiente de las bases de datos.

* ¿Cual es su importancia?

El uso de triggers en bases de datos es crucial por varios motivos. Primero, permiten la automatización de tareas, lo que reduce la intervención manual y minimiza errores, como actualizar registros automáticamente. También son esenciales para mantener la integridad referencial, asegurando que las relaciones entre tablas sean coherentes y evitando datos inválidos. Además, los triggers facilitan el control de cambios al registrar modificaciones, lo que es útil para auditorías. En resumen, los triggers optimizan la gestión de datos y garantizan su calidad y precisión.

*Ventajas y desventajas

Ventajas de los Triggers
Integridad de Datos: Ayudan a evitar la corrupción de datos al asegurar reglas de negocio.
Automatización: Realizan tareas automáticamente, reduciendo errores humanos.
Auditoría: Facilitan el seguimiento de cambios en los datos.
Desventajas de los Triggers
Sobrecarga de Rendimiento: Pueden afectar el rendimiento si se usan en exceso o son complejos.
Dificultad en el Mantenimiento: Pueden complicar la lógica del sistema y dificultar el seguimiento de errores.

*¿Dónde se aplican?

Los triggers se aplican en diversas áreas de bases de datos, incluyendo:
Validación de Datos: Aseguran que la información ingresada cumpla con ciertas reglas.
Auditoría: Registran cambios en los datos para facilitar el seguimiento y la revisión.
Seguimiento de Cambios: Mantienen un historial de modificaciones en las tablas.
Reglas de Negocio Automáticas: Implementan automáticamente políticas y procedimientos específicos sin intervención manual.
Estos ejemplos destacan cómo los triggers optimizan la gestión y la integridad de los datos en sistemas de bases de datos.

*Casos específicos

Ejemplos de casos de uso de triggers en empresas incluyen:
Librerías: Un trigger que actualiza automáticamente el stock de libros en la tabla Libros cada vez que se registra una venta en LibrosVendidos 1.
Sistemas de Reservas: Un trigger que ajusta el costo total de una reserva cuando se actualiza la duración de la estancia de un cliente 2.
Auditoría de Ventas: Un trigger que registra automáticamente cada nueva venta en una tabla de historial para seguimiento y auditoría 2.
Control de Salarios: Un trigger que almacena cambios en los salarios de empleados, registrando el salario antiguo y nuevo para mantener un historial 2.
Estos ejemplos muestran cómo los triggers ayudan a gestionar procesos críticos y mantener la integridad de los datos.
