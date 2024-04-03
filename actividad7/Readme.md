# Completely Fair Scheduler de Linux

El programador de Linux llamado "Completely Fair Scheduler" (CFS) fue introducido en la versión 2.6.23 del kernel de Linux como una mejora significativa sobre el programador de tareas anterior.Por lo tanto, a continuación haremos una descripción de sus características principales y su funcionamiento.

Justicia: El CFS se esfuerza por proporcionar una asignación de tiempo justa a todos los procesos en el sistema. Cada proceso tiene una cuota de tiempo proporcional a su peso relativo (prioridad) en comparación con otros procesos en ejecución.

Ejecución sin privilegios: A diferencia de los programadores de tareas anteriores en Linux, el CFS no da prioridad a ningún proceso en particular (como los procesos del sistema o el proceso de "init"). Todos los procesos compiten de manera justa por el tiempo de CPU disponible.

Sin inversión de prioridad: El CFS garantiza que los procesos con prioridad más alta no puedan ser bloqueados indefinidamente por procesos con prioridad más baja. Esto se logra a través de la asignación de tiempos proporcionales.

Efectividad en multiprocesadores: El CFS está diseñado para aprovechar eficientemente los sistemas multiprocesador (SMP) y multihilo. Distribuye la carga de manera uniforme entre los núcleos de CPU disponibles, lo que mejora el rendimiento en comparación con los programadores de tareas anteriores que podrían no escalar bien en sistemas SMP.

Algoritmo de búsqueda binaria: El CFS utiliza un algoritmo de búsqueda binaria para determinar qué proceso se ejecutará a continuación. Esto permite un tiempo de búsqueda constante, independientemente del número de procesos en el sistema.

Implementación de árbol rojo-negro: Para mantener un seguimiento eficiente del orden de ejecución de los procesos, el CFS utiliza una estructura de datos de árbol rojo-negro. Esto facilita la búsqueda y actualización de procesos en función de su prioridad relativa.

Por lo tanto, podemos decir que el CFS en Linux es un programador de tareas que se esfuerza por proporcionar una asignación justa y eficiente de la CPU a todos los procesos en el sistema, independientemente del número de procesadores disponibles. Su diseño modular y su enfoque en la equidad y la eficiencia lo hacen adecuado para una amplia gama de aplicaciones y cargas de trabajo.