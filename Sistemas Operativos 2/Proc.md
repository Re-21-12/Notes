## 📂 Sistema de Archivos `/proc` en Linux

El sistema de archivos **`/proc`** es un sistema de archivos virtual que proporciona una vista en tiempo real de la información del kernel y de los procesos en ejecución. No ocupa espacio en disco real.

---

### 📌 Directorios por Proceso

- **`/proc/1`**  
  Contiene información sobre el proceso con PID 1.  
  Cada proceso en el sistema tiene su propio subdirectorio en `/proc` identificado por su **PID**.

---

### 🧠 Información del Sistema

- **`/proc/cpuinfo`**  
  Detalles del procesador: modelo, núcleos, velocidad, etc.

- **`/proc/meminfo`**  
  Información del uso de memoria física y swap.

- **`/proc/uptime`**  
  Tiempo en segundos desde que el sistema fue iniciado.

- **`/proc/loadavg`**  
  Promedio de carga del sistema (similar a `uptime` o `top`).

- **`/proc/version`**  
  Versión del kernel en ejecución.

- **`/proc/stat`**  
  Estadísticas globales del sistema, como tiempo de CPU, procesos, etc.

---

### 🧩 Kernel y Módulos

- **`/proc/modules`**  
  Lista de módulos del núcleo actualmente cargados.

- **`/proc/ksyms`**  
  Tabla de símbolos del kernel.

- **`/proc/kcore`**  
  Imagen virtual de la memoria física del sistema (como un archivo core dump gigante).

- **`/proc/kmsg`**  
  Mensajes del kernel. También se redirigen a `syslog`.

---

### 💾 Dispositivos y Recursos

- **`/proc/devices`**  
  Lista de controladores de dispositivos registrados en el kernel.

- **`/proc/dma`**  
  Canales DMA en uso.

- **`/proc/interrupts`**  
  Interrupciones activas y cuántas veces se han usado.

- **`/proc/ioports`**  
  Información de puertos de entrada/salida utilizados.

---

### 🌐 Red

- **`/proc/net`**  
  Información sobre el estado de los protocolos de red.

---

### 🔁 Otros

- **`/proc/filesystems`**  
  Sistemas de archivos soportados por el kernel.

- **`/proc/self`**  
  Enlace simbólico al directorio `/proc/[PID]` del proceso que accede.

---

> 📝 **Nota:** A menos que se copien explícitamente, los archivos en `/proc` **no ocupan espacio en disco**. Son generados en tiempo real por el kernel.
