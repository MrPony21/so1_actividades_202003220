# ACTIVIDAD 5 (Tipos de Kernel)
## Tipos de Kernel y sus diferencias
Los Kernel son la parte central del sistema operativo, se le denomina el nucleo de este mismo que es el encargado de gestionar los recursos del hardware para proveer servicions de aplicaciones.

### Kernel Monolitico
Se caracteriza por correr todos los controladores y servicios en unico espacio de direcciones ne modo kernel

**Ventajas**: 
- Alta eficiencia
- Comunicacion directa entre dispositivos

### MicroKernel
Las funciones basicas como la gestion de procesos y comunicacion de estos corren en el modo kernel, el resto de las funcionalidades/servicios se ejecutan en modo usuario.

**Ventajas**
- Mayor estabilidad y serguridad
- Aislamiento de fallos en servicios no criticos

### Kernel Hibrido
Este combina las caracteristicas de los dos kernel anteriores.

**Ventajas**
- Buen equilibrio entre rendimiento y modularidad
- Alta eficiencia 
- Comunicacion directa entre dispositivos

### Exokernel
Proporciona un acceso directo al hardware, esto permite que las aplicaciones interactuen los recursos por si mismas

**Ventajas**
- Altamente eficiente
- Flexible
- Maximo control de las aplicaciones

## User mode vs Kernel mode

### Modo Kernel
En este modo el codigo tiene acceso completo a todos los recursos del sistema, incluidos el hardware y la memoria, los drivers corren en este modo. Un fallo en este puede provocar fallos criticos en todo el sistema.

### Modo User
Es un modo mucho mas limitado del modo kernel, aqui se ejecutan todas las aplicaciones de usuario. Aqui se tiene acceso limitado al hardware y a las funciones del sistema operativo. Todas las aplicaciones no pueden realizar operaciones directamente sobre el hardwares, esto tambien evita vulnerabilidades y fallos criticos por alguna gestion mal ejecutada. Cabe mencionar que si una aplicacion necesita acceder a alguna funcion del modo kernel necesita usar una llamada al System Call.

## Interrupciones vs Traps

### Interrupciones
Son señales enviadas por hardware o software que interrupten el flujo normal del CPU para atender algun evento. Existen dos tipos de interrupciones las de hardware y las de software, las de hardware son generadas por perifericos como mouse, teclado, monitor, bocinas etc.
Mientas que las interrupciones de software son generadas por el mismo sistema operativo. 

Al recibir la interrupcion el CPU detiene temporalmente lo que se esta realizando para la ejecucion a una rutina de este servicio de interrupcion al acabar continua donde lo habia dejado antes de realizar la interrupcion.

### Traps
Son una interrupcion mucho mas especial la diferencia principal es que las interrupciones son asincronas mientras que estas son sincronas ya que ocurren como resultado directo de la ejecucion de una instruccion.

Son respuestas a condiciones exepcionales o errores durante la ejecucion de un programa como una operacion ilegal o una llamada al sistema inapropiada

