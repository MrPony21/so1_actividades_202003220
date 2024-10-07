# Completely Fair Scheduler

El **Completely Fair Scheduler (CFS)** es el planificador de Linux que se usa desde la versión 2.6.23 del kernel. Su objetivo principal es repartir el tiempo de CPU entre los procesos de la manera más justa posible.

## Características principales

- **Equidad en la CPU**: El CFS intenta repartir el tiempo de CPU de manera equitativa entre los procesos, basado en el tiempo de CPU que ya han consumido. Si un proceso ha recibido poco tiempo, se le da prioridad para ejecutarse.

- **Optimización con el árbol rojo-negro**: El árbol rojo-negro permite que el CFS gestione el tiempo de ejecución de los procesos de manera rápida. Buscar, agregar o eliminar procesos del árbol es eficiente.

- **Priorización por "niceness"**: Cada proceso tiene un valor llamado **nice**, que ajusta su prioridad. Un valor "nice" más bajo significa mayor prioridad y más tiempo de CPU. Esto permite que los procesos importantes (como los del sistema) tengan más tiempo de CPU en comparación con otros procesos menos críticos.

- **Preempción**: Si un proceso ha consumido más tiempo de CPU que el que debería, será interrumpido para que otros procesos puedan ejecutarse. Esto asegura que todos los procesos tengan acceso a la CPU.

## Funcionamiento

- **Asignación de tiempo de CPU**: El CFS se asegura de que todos los procesos obtengan el mismo tiempo de CPU a largo plazo. Si un proceso ha usado menos CPU, tendrá más prioridad para ejecutarse. Si un proceso ha acaparado mucho la CPU, se le reduce la prioridad temporalmente para que otros procesos puedan correr.

- **Tiempo virtual en lugar de tiempos reales**: En lugar de medir el tiempo real de CPU usado por los procesos, CFS usa un concepto de **tiempo virtual**. A los procesos con mayor prioridad su tiempo virtual se incrementa más lentamente, lo que significa que pueden usar más CPU.

- **Árbol rojo-negro para organizar procesos**: Los procesos no se almacenan en simples listas, sino en una estructura llamada **árbol rojo-negro**. Esta estructura es eficiente porque permite encontrar rápidamente el proceso que debe ejecutarse a continuación, basado en cuánto tiempo de CPU ya ha usado.
