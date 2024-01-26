# Actividad 1

## Tipos de Kernel y Sus Diferencias

Kernel monolítico: Es un kernel de gran tamaño que permite gestionar todas las tareas. Se encarga de gestionar la memoria y los procesos, así como la comunicación que dichos procesos tienen entre sí. 

Microkernel: Es un kernel pequeño el cual tiene como objetivo evitar el colapso total del sistema en caso de un fallo. Para cumplir con todas las tareas este tipo de kernel cuenta con diferentes módulos.

Kernel híbrido: Este tipo de kernel es una combinación entre el kernel monolítico y el microkernel. Ya que es un Kernel grande, pero compacto y que puede ser modulado y otras partes del mismo Kernel pueden cargarse de manera dinámica.

## User vs Kernel Mode

La diferencia entre User Mode y Kernel Mode es la forma en la que se manejan los procesos. Por ejemplo, User Mode a iniciar una aplicación en modo de usuario, Windows crea un proceso para ella. Este proceso proporciona a la aplicación un espacio de direcciones virtuales privado y una tabla de identificadores privada. Entonces, cada aplicación se ejecuta de forma aislada por lo que resulta imposible que una aplicación pueda modificar los datos de otra aplicación. Cada aplicación se ejecuta de forma aislada, lo que garantiza que si una se bloquea, no afecte a otras aplicaciones ni al sistema operativo.

Por el otro lado, Kernel Mode todo el código que se ejecuta en modo kernel comparte un único espacio de direcciones virtuales Como resultado, un controlador en modo kernel no está aislado de otros controladores o del sistema operativo. Por lo que si un controlador en modo kernel escribe por error en la dirección virtual incorrecta, podría poner en peligro los datos que pertenecen al sistema operativo o a otro controlador. Si un controlador en modo kernel se bloquea, hace que todo el sistema operativo se bloquee.

## Interruptions vs Traps

Las trampas son eventos inesperados que ocurren durante la ejecución de un programa, como una división por cero. Se utilizan para manejar situaciones excepcionales. Por lo tanto, las trampas cambian el modo de un sistema operativo a Kernel Mode para que ejecute algunas acciones y retorne el control al proceso que se encontraba ejecutando en ese momento. También se puede decir que el manejador de trap es síncrono ya que cuando el sistema operativo la detecta este pause el proceso del usuario y en cuanto la System Call se complete el sistema operativo devuelve dicho control y continúa con la ejecución del proceso del usuario. 

Las interrupciones son señales que el hardware envía al procesador para indicar que se requiere atención. Puedenser generadas por dispositivos externos o internos.