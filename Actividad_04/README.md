![Kernel Image](https://tattoocoder.com/content/images/2017/03/docker-cloud-1.png "Banner | Linux Image")

## Actividad 4 <img src="https://media.tenor.com/dHk-LfzHrtwAAAAi/linux-computer.gif" alt="drawing" width="30"/>

### _Detalle de los comandos utilizados_
Para la inicialización del proceso es importante la colocación del archivo actividad4.service dentro de la siguiente carpeta, al igual que es script saludo.sh:

    /etc/systemd/system/

En el caso que no se tenga el script en la misma carpeta o se desee utilizar otro, se cambia el contenido del archivo actividad4.service colocando la ruta nueva del script de la siguiente manera:

    ExecStart=/usr/bin/bash /home/usuario/scripts/saludo.sh

Posteriormente se ejecuta el siguiente comando que activa el archivo actividad4.service de la siguiente manera:

    sudo systemctl enable greeting.service

Luego para iniciar el servicio se recurre al siguiente comando:

    sudo systemctl start greeting.service

Por ultimo, se tiene el siguiente comando el cual comprueba que el servicio se esté ejecutando de manera correcta:

    sudo systemctl status greeting.service

Con estos pasos se concluye la activación e inicialización de un servicio que permite ejecutar un script.

###### _2023 - Sistemas Operativos 1_
---
