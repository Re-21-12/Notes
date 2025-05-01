# 🐳 Docker - Guía Rápida

---

## 🔹 Serie 1: Fundamentos

### 💽 Diferencia entre HDD y SSD
- **HDD**: Disco duro mecánico, más barato, más capacidad, más lento.
- **SSD**: Disco de estado sólido, más rápido, más caro, sin partes móviles.

---
## 🔹 Serie 2: Comandos esenciales de Docker 

- muestra los logs de un contenedor
```
docker logs <contenedor>
```
* como listar docker
```
docker ps
```
- Como correr un contenedor y crear
```
docker run [OPTIONS] IMAGE[:TAG|@DIGEST] [COMMAND] [ARG...]
docker run -d IMAGE # Para correr en background 
```
- como ejecutar bash dentro
```
docker exec -it <nombre_del_container> bash
```
* como publicar con puerto 8080
```
docker run -p 8080:80 nginx
```

```
EXPOSE 8080
```

```
services:
  webapp:
    image: my-web-app:latest  # Asegúrate de haber construido esta imagen o usar alguna existente
    container_name: webapp-container
    ports:
      - "8080:8080"  # Publicar el puerto 8080 del contenedor al host
    environment:
      ENV: production
      DEBUG: "false"
    volumes:
      - ./app:/usr/src/app  # Montar código fuente si estás desarrollando localmente
    healthcheck:
      test: ["CMD", "curl", "-f", "http://localhost:8080/health"]
      interval: 30s
      timeout: 10s
      retries: 5
```

* como clonar docker
 
```
docker pull nginx:latest

```

## 🔹 Serie 3: Configurar un docker y publicarlo

``` docker

services:
  webserver:
    image: nginx:latest  # Usa la última imagen oficial de Nginx
    container_name: mi_nginx  # Nombre del contenedor
    ports:
      - "8080:80"  # Mapea el puerto 80 del contenedor al 8080 del host
    volumes:
	      - ./html:/usr/share/nginx/html  # Monta una carpeta local como contenido web
    restart: unless-stopped  # Reinicia el contenedor automáticamente si se detiene

# Esto crea un contenedor Nginx que servirá archivos estáticos desde ./html

```