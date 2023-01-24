![Kernel Image](https://xakep.ru/wp-content/uploads/2021/11/365066/tux30-h.jpg "Banner | Linux Image")

## Tipos de kernel y sus diferencias <img src="https://media.tenor.com/dHk-LfzHrtwAAAAi/linux-computer.gif" alt="drawing" width="30"/>

### _Tipos_
Existen diferentes tipos de `kernel` para diferentes sistemas operativos y dispositivos finales. Conforme a sus características, pueden dividirse en tres grupos:

- `Kernel monolítico` Un kernel grande para todas las tareas. Es el único responsable de la gestión de la memoria y de los procesos, de la comunicación entre procesos y proporciona funciones de soporte de drivers y hardware. Los sistemas operativos que usan el kernel monolítico son Linux, OS X y Windows.

- `Microkernel` El microkernel se ha diseñado intencionadamente de un tamaño pequeño para que en caso de fallo no paralice todo el sistema operativo. No obstante, para que pueda asumir las mismas funciones que un kernel grande, está dividido en varios módulos. Como ejemplo de aplicación solo existe el componente Mach de OS X, ya que hasta ahora no hay ningún sistema operativo con microkernel.

- `Kernel híbrido` La combinación del kernel monolítico y el microkernel se denomina kernel híbrido. En este caso, el kernel grande se hace más compacto y modulable. Otras partes del kernel pueden cargarse dinámicamente. Esto ya ocurre en cierta medida en Linux y OS X.

### _Diferencias_

- Un `kernel monolítico` es un sistema operativo con un núcleo grande que contiene todas las funciones necesarias, como controladores de dispositivos, memoria, soporte de red, etc.

- Un `microkernel` es un sistema operativo con un núcleo pequeño que solo contiene las funciones esenciales, como la gestión de memoria y procesos. Todas las demás funciones se ejecutan como servicios externos al núcleo.

- Un `kernel híbrido` es un sistema operativo con un núcleo que combina características de un kernel monolítico y un microkernel, es decir, tiene un núcleo pequeño pero con algunas funciones adicionales incorporadas.

## User Mode vs Kernel Mode <img src="https://media.tenor.com/dHk-LfzHrtwAAAAi/linux-computer.gif" alt="drawing" width="30"/>

En la siguiente tabla se listan las principales diferencias entre los modos `user` y `kernel`, basandonos en terminos de seguridad, eficiencia y fiabilidad como se muestra a continuación:

| Mode | Seguridad  | Eficiencia | Fiabilidad |
| ----- | -----  | ----- | ----- |
| _User_ | Los programas y procesos solo tienen acceso a un subconjunto limitado de recursos del sistema, lo que ayuda a prevenir la ejecución de código malicioso o la corrupción de datos críticos.  | Permite a los programas y procesos ejecutarse de manera independiente, lo que aumenta la eficiencia del sistema ya que no se requiere intervención constante del sistema operativo. | Ayuda a aislar los errores y fallos en un solo programa o proceso, lo que limita el impacto en el sistema general |
| _Kernel_ | Tiene acceso completo a todos los recursos del sistema, lo que permite un mejor control y gestión de los mismos.  | Permite al sistema operativo supervisar y controlar el acceso a los recursos del sistema, lo que ayuda a evitar conflictos y aumentar la eficiencia general del sistema. | Permite al sistema operativo detectar y corregir problemas en todo el sistema, lo que aumenta la fiabilidad y estabilidad del sistema. |

###### _2023 - Sistemas operativos 1_
---
