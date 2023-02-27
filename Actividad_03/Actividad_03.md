![Kernel Image](https://xakep.ru/wp-content/uploads/2021/11/365066/tux30-h.jpg "Banner | Linux Image")

## Solucionar bug en contaniner  <img src="https://media.tenor.com/dHk-LfzHrtwAAAAi/linux-computer.gif" alt="drawing" width="30"/>

### _Problema_
Cuando se carga una aplicación de React, el servidor se configura para enviar el archivo `index.html` en respuesta a cualquier solicitud de ruta que no sea una ruta de archivo. Si el servidor no está configurado correctamente para manejar estas solicitudes, se puede mostrar un `error 404` al recargar la página, por lo que es el bug que está ocurriendo.

Esto solo se toma en cuenta si la página o endpoint ya existe y se puede acceder correctamente, pero al recargar la página se muestra un `error 404`.

### _Solución_
Se establece una regla para enviar todas las solicitudes que no respondan a un archivo existente al archivo `index.html` en la app de React para que luego con esta configuración, n `ginx` redirigirá todas las solicitudes al archivo `index.html`.

En el archivo de configuración `single.conf`, se agregan las secciones con "location" para manejar las rutas "/", "/about", "/help", "/register" y "/login". Al igual que en la sección principal "/", se utiliza "try_files" para que todas las solicitudes sean manejadas correctamente por `nginx` y se redirijan a `index.html` correctamente.

```javascript
server {
  listen 80;
  server_name example.com;

  root /usr/share/nginx/html;

  location / {
    try_files $uri /index.html;
    index index.html;
  }

  location /about {
    try_files $uri /index.html;
  }

  location /help {
    try_files $uri /index.html;
  }

  location /register {
    try_files $uri /index.html;
  }

  location /login {
    try_files $uri /index.html;
  }
}
```

###### _2023 - Sistemas operativos 1_
---
