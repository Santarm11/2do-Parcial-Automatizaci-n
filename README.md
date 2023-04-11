# 2do-Parcial-Automatización
 
# Simulación

## Diseño
Para esta sección del ejercicio decidimos utilizar dos bandas, en la primera operarios pondrán las naranjas y estas serán transportadas hasta una sección de la banda donde mediante un sensor infrarrojo se determinará si la naranja tiene el tamaño deseado y mediante un sensor de color se identificará si el color es el deseado, en caso de cumplir ambas condiciones las naranjas serán empujadas por un canal en el que caeran a su respectiva caja, este proceso se repite hasta que queden almacenadas 50 naranjas en la caja.

Al llenar la capacidad requerida de cada caja, estas serán transportadas por una banda para su despacho. Esta misma banda transportará nuevas cajas, en la banda se ubicará un sensor infrarrojo para detectar la presencia de una caja en el sitio indicado para la recepción de naranjas permitiendo así detener la banda.

Las variables del sistema se plantearon de la siguiente manera:
![16e9bcf2-8aaf-471d-b151-9505ac26eaad](https://user-images.githubusercontent.com/62396718/231302437-eb145a08-faf0-4afc-ad25-b884c29fc35c.jpg)

El sistema contará entonces con 4 entradas de sensor que determinarán el comportamiento de 3 actuadores (motores) para el funcionamiento del proceso.

La secuencialidad del proceso está representado en el siguiente diagrama: 
<br />
![Diagrama en blanco (3)](https://user-images.githubusercontent.com/62396718/231302773-d1837249-9870-4fdd-a01f-57fd3283230a.png)


## Desarrollo Simulación

Para la simulación del proceso se utilizó el programa CODESYS, en este se utilizó lenguaje Ladder para realizar una aproximación de proceso controlado por tiempo simulando la entrada y reconocimiento de una naranja de tamaño y color deseado cada 3 segundos y la duración del movimiento de esta desde su entrada hasta que es contada de 6 segundos. El movimiento de la banda de cajas esta dado por 3 segundos donde se despacha una caja e ingresa una nueva caja hasta estar en el punto indicado. 

![ezgif com-video-to-gif](https://user-images.githubusercontent.com/62396718/231307768-92ebf427-f7a2-42e4-acb7-26e7e1d882c6.gif)


A continuación se anexa el PDF que contiene la documentación del código:

[Documentación CODESYS Parcial 2](https://github.com/Santarm11/2do-Parcial-Automatizaci-n/files/11205480/Parcial.2.Auto.pdf)


# Implementación del prototipo para el proceso automatizado

Para desarrollar el prototipo del sistema diseñado se utilizó OpenPLC haciendo uso de lógica Ladder para correr el programa en un dispositivo Arduino Mega, el cual recibe datos de 3 sensores 

La lógica del proceso está representada en el siguiente documento y extracto del código en OpenPLC
[Documentación OpenPLC](https://github.com/Santarm11/2do-Parcial-Automatizaci-n/files/11205637/paracialauto2OPLC.pdf)


Acta de reunion

5/04/2023: Nos reunimos para hacer una lectura del enunciado y de la rúbrica que se tendrá en cuenta
6/04/2023: Nos reunimos para iniciar con el desarrollo del código en CODESYS
7/04/2023: Se termina de desarrollar el código en CODESYS, se inicia con el HMI
8/04/2023: Se desarrolla código OpenPLC para iniciar prototipado físico, se comienza el montaje de la estructura del sistema
10/04/2023: Se continua el montaje del sistema e inicia el cableado del sistema
11/04/2023: Se culmina el montaje y cableado del sistema. Se realiza la Wiki del parcial.

