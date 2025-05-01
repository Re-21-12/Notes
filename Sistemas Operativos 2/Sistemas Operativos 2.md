# 🖥️ Monitoreo y Rendimiento en Linux

## TOP (Mostrar Procesos)
Herramienta preinstalada para ver procesos y recursos del sistema.

### Estados de tareas
- **Tasks**: Número total de procesos cargados en memoria.
- **Running**: Procesos en ejecución o en cola.
- **Sleeping**: Procesos esperando un evento para activarse.
- **Stopped**: Procesos detenidos manualmente.
- **Zombie**: Procesos finalizados pero no limpiados.

---

# 🔧 Administración de Servicios y Redes

## ACL (Access Control List)
Define permisos de acceso por usuario o proceso:
1. `getfacl`: Consulta permisos.
2. `setfacl`: Modifica permisos.

## Systemd (Sistema de inicio)
- Conjunto de demonios de sistema.
- Proceso padre de todos los procesos del sistema.

## SSH (Secure Shell)
Permite controlar remotamente servidores de forma segura.

### Herramientas relacionadas
- **PuTTY**: Cliente SSH para Windows y Linux.
- **WinSCP**: Cliente gráfico SFTP/SSH para Windows.

## FTP (File Transfer Protocol)
Protocolo para transferencia de archivos.

- **FileZilla**: Cliente gráfico para subir/descargar archivos vía FTP.

## NFS (Network File System)
Permite acceder a archivos remotos como si fueran locales.

## Samba
Implementación libre del protocolo SMB (Windows) en UNIX/Linux.

---

# 💽 Sistema de Archivos

## MBR (Master Boot Record)
Contiene el loader (ej. GRUB, LILO, NTLDR).

## Particiones
Divisiones lógicas de almacenamiento.

### Swap
- Área de intercambio de memoria virtual.
- Un uso excesivo puede causar hiper-paginación.

## Organización de Archivos

### Tipos de sistemas de archivos
- **FAT / FAT32**
- **EXT3**:
  - Journal: escritura continua, recuperación rápida.
- **NTFS**:
  - Master File Table (MFT)

### Tipos de archivos
- **Extensiones**: útiles para el sistema y el usuario.
- **Firmas**: patrones binarios para identificar archivos.

### Organización de directorios
- Niveles: plano, jerárquico (1 o 2 niveles).
- Árbol
- Grafo acíclico
- Grafo cíclico

### Compartición de archivos
- **Unix**: Cambios visibles por todos.
- **Sesiones**: Copia temporal hasta cerrar.
- **Caché**: Usa bloqueos sobre registros (locks).

---

# 🧱 Arquitectura del Sistema (VFS)

## Control de accesos
- **Windows NT**: ACL
- **Linux**: Bits (rwx)
- **NetWare**: NDS
- **Windows 2000**: Active Directory

---

# 📀 Manejo de Discos

## Importancia
Permiten la **persistencia** de los datos y del sistema.

## Tipos de discos

### Según interfaz
- SCSI
- IDE

### Según tecnología
- Discos duros (HDD)
- Discos ópticos (CD/DVD)
- Discos extraíbles (USB, etc.)
