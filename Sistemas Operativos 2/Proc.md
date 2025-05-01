El sistema de archivos `/proc` contiene un sistema de archivos imaginario o virtual. 

`/proc/1`

Un directorio con información acerca del proceso número 1. Cada proceso tiene un directorio debajo de /proc cuyo nombre es el número de identificación del proceso (PID).

`/proc/cpuinfo`

Información acerca del procesador: su tipo, marca, modelo, rendimiento, etc.

`/proc/devices`

Lista de controladores de dispositivos configurados dentro del núcleo que está en ejecución.

`/proc/dma`

Muestra los canales DMA que están siendo utilizados.

`/proc/filesystems`

Lista los sistemas de archivos que están soportados por el kernel.

`/proc/interrupts`

Muestra la interrupciones que están siendo utilizadas, y cuantas de cada tipo ha habido.

`/proc/ioports`

Información de los puertos de E/S que se estén utilizando en cada momento.

`/proc/kcore`

Es una imagen de la memoria física del sistema. Este archivo tiene exactamente el mismo tamaño que la memoria física, pero no existe en memoria como el resto de los archivos bajo /proc, sino que se genera en el momento en que un programa accede a este. (Recuerde: a menos que copie este archivo en otro lugar, nada bajo `/proc` usa espacio en disco).

`/proc/kmsg`

Salida de los mensajes emitidos por el kernel. Estos también son redirigidos hacia **syslog**.

`/proc/ksyms`

Tabla de símbolos para el kernel.

`/proc/loadavg`

El nivel medio de carga del sistema; tres indicadores significativos sobre la carga de trabajo del sistema en cada momento.

`/proc/meminfo`

Información acerca de la utilización de la memoria física y del archivo de intercambio.

`/proc/modules`

Indica los módulos del núcleo que han sido cargados hasta el momento.

`/proc/net`

Información acerca del estado de los protocolos de red.

`/proc/self`

Un enlace simbólico al directorio de proceso del programa que esté observando a `/proc`. Cuando dos procesos observan a `/proc`, obtienen diferentes enlaces. Esto es principalmente una conveniencia para que sea fácil para los programas acceder a su directorio de procesos.

`/proc/stat`

Varias estadísticas acerca del sistema, tales como el número de fallos de página que han tenido lugar desde el arranque del sistema.

`/proc/uptime`

Indica el tiempo en segundos que el sistema lleva funcionando.

`/proc/version`

Indica la versión del núcleo