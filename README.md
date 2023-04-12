# 2do Parcial Automatización
 ### Nicolas Nisperuza Latorre (174158)- Miguel Angel Fandiño Castro (199412) - Santiago Andrés Romero Ramírez (200961)
 
# Simulación

## Diseño
Para esta sección del ejercicio decidimos utilizar dos bandas, en la primera operarios pondrán las naranjas y estas serán transportadas hasta una sección de la banda donde mediante un sensor infrarrojo se determinará si la naranja tiene el tamaño deseado y mediante un sensor de color se identificará si el color es el deseado, en caso de cumplir ambas condiciones las naranjas serán empujadas por un canal en el que caeran a su respectiva caja, este proceso se repite hasta que queden almacenadas 50 naranjas en la caja.

Al llenar la capacidad requerida de cada caja, estas serán transportadas por una banda para su despacho. Esta misma banda transportará nuevas cajas, en la banda se ubicará un sensor infrarrojo para detectar la presencia de una caja en el sitio indicado para la recepción de naranjas permitiendo así detener la banda.

Las variables del sistema se plantearon de la siguiente manera:
![16e9bcf2-8aaf-471d-b151-9505ac26eaad](https://user-images.githubusercontent.com/62396718/231302437-eb145a08-faf0-4afc-ad25-b884c29fc35c.jpg)

El sistema contará entonces con 4 entradas de sensor que determinarán el comportamiento de 3 actuadores (motores) para el funcionamiento del proceso.

La secuencialidad del proceso está representado en el siguiente diagrama: 

![Diagrama en blanco (3)](https://user-images.githubusercontent.com/62396718/231302773-d1837249-9870-4fdd-a01f-57fd3283230a.png)


## Desarrollo Simulación

Para la simulación del proceso se utilizó el programa CODESYS, en este se utilizó lenguaje Ladder para realizar una aproximación de proceso controlado por tiempo simulando la entrada y reconocimiento de una naranja de tamaño y color deseado cada 3 segundos y la duración del movimiento de esta desde su entrada hasta que es contada de 6 segundos. El movimiento de la banda de cajas esta dado por 3 segundos donde se despacha una caja e ingresa una nueva caja hasta estar en el punto indicado. 

![ezgif com-video-to-gif](https://user-images.githubusercontent.com/62396718/231307768-92ebf427-f7a2-42e4-acb7-26e7e1d882c6.gif)


A continuación se anexa el PDF que contiene la documentación del código:

[Documentación CODESYS Parcial 2](https://github.com/Santarm11/2do-Parcial-Automatizaci-n/files/11205480/Parcial.2.Auto.pdf)


# Implementación del prototipo para el proceso automatizado

Para desarrollar el prototipo del sistema diseñado se utilizó OpenPLC haciendo uso de lógica Ladder para correr el programa en un dispositivo Arduino, el cual recibe datos de 2 sensores de obstalaculo reflectivo infrarrojo FC-51 para presencia de cajas y conteo de naranjas 

La lógica del proceso está representada en el siguiente documento del código en OpenPLC: 

[Documentación OpenPLC](https://github.com/Santarm11/2do-Parcial-Automatizaci-n/files/11212838/autooo.pdf)

Y se realizó la conexión física de la siguiente manera en el Arduino Uno:

![14289faf-1ce1-4ba3-95eb-1099713ebd27](https://user-images.githubusercontent.com/62396718/231499591-10d6c151-7704-4ff1-b912-b78b9a0d7ee8.jpeg)


Video del montaje físico:

https://user-images.githubusercontent.com/62396718/231503850-e345eb33-1fcf-4f48-8ebf-98ed703cf4e6.mp4



# Acta de reunion

- Fecha: 5/04/2023

   Hora de inicio: 3:00 PM

   Hora de finalización: 5:00 PM

   Asistentes:

   Nicolas Nisperuza Latorre - Miguel Angel Fandiño Castro  - Santiago Andrés Romero Ramírez 

   Temas tratados:

   Lectura del enunciado del proyecto

   Revisión de la rúbrica que se tendrá en cuenta para la evaluación

   Acuerdos:

   Se definió un diseño preliminar para la solución del parcial

- Fecha: 6/04/2023
   Hora de inicio: 3:00 PM
   Hora de finalización: 7:00 PM

   Asistentes:

   Nicolas Nisperuza Latorre - Miguel Angel Fandiño Castro  - Santiago Andrés Romero Ramírez 

   Temas tratados:

   Inicio del desarrollo del código en CODESYS

   Acuerdos:

   Se define el diseño final para el proceso.
   El código se realizará en el computador de Santiago Andrés Romero Ramírez. 

- Fecha: 7/04/2023
   Hora de inicio: 3:00 PM
   Hora de finalización: 7:00 PM

   Asistentes:

   Nicolas Nisperuza Latorre - Miguel Angel Fandiño Castro  - Santiago Andrés Romero Ramírez 

   Temas tratados:

   Finalización del desarrollo del código en CODESYS
   Inicio del desarrollo del HMI

   Acuerdos:

   Se definen las etiquetas para la documentación del código


- Fecha: 8/04/2023
   Hora de inicio: 1:00 PM
   Hora de finalización: 6:00 PM

   Asistentes:

   Nicolas Nisperuza Latorre - Miguel Angel Fandiño Castro  - Santiago Andrés Romero Ramírez 
   
   Temas tratados:

   Desarrollo del código OpenPLC para el prototipado físico
   Inicio del montaje de la estructura del sistema
   
   Acuerdos:

   Se definen aspectos de diseño para el montaje físico
   
   
- Fecha: 10/04/2023
   Hora de inicio: 6:00 PM
   Hora de finalización: 11:00 PM

   Asistentes:

   Nicolas Nisperuza Latorre - Miguel Angel Fandiño Castro  - Santiago Andrés Romero Ramírez 
   
   Temas tratados:

   Continuación del montaje del sistema
   Inicio del cableado del sistema
   
   
- Fecha: 11/04/2023
   Hora de inicio: 4:00 PM
   Hora de finalización: 12:00 PM

   Asistentes:

   Nicolas Nisperuza Latorre - Miguel Angel Fandiño Castro  - Santiago Andrés Romero Ramírez 
   
   Temas tratados:

   Culminación del montaje y cableado del sistema
   Realización de la Wiki del parcial
   
   Acuerdos:

   Se encontraron dificultades a la hora de conectar todos los sensores requeridos por el diseño, se presenta problemas por corte de energía
   
   Acciones a seguir:

   Se buscan alternativas para asegurar el correcto funcionamiento para la presentación
   
# Evaluación de roles

Durante la realización del proyecto, se evaluó el desempeño de los siguientes roles:

- Diseño del sistema:Nicolas Nisperuza Latorre, Miguel Angel Fandiño Castro y Santiago Andrés Romero Ramírez 
- Desarrollador CODESYS/HMI y preparación de documentos: Santiago Andrés Romero Ramírez 
- Desarrollador OpenPLC: Miguel Angel Fandiño Castro
- Desarrolladores Prototipo: Miguel Angel Fandiño Castro y Nicolas Nisperuza Latorre 
 
Basandose en la comunicación, la colaboración, iniciativa y responsabilidad, todos los roles se desempeñaron de manera efectiva y sin ningún problema. El principal problema que se presentó durante el desarrollo esta relacionado al cumplimiento del desarrollo del prototipo funcional, el cual no pudo cumplir con todos los requerimientos propuestos durante el diseño.

