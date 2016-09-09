---
layout: page
title: Assignment 2
permalink: /assignment2/
---

## Computer Vision - 2P2016

## Assignment 2: Colorizing Prokudin-Gorskii images of the Russian Empire

### Due date: September 24, 11:59 PM

![](https://dl.dropboxusercontent.com/u/5279729/tutorial/prokudin_gorskii.jpg)

Adaptado de [S. Lazebni](http://web.engr.illinois.edu/~slazebni/spring11/assignment1.html).

### Antecedentes

[Sergei Mikhailovich Prokudin-Gorskii](http://en.wikipedia.org/wiki/Prokudin-Gorskii) (1863-1944) fue un fotógrafo que, entre los años 1909-1915, viajó por el imperio ruso y tomó miles de fotos de todo lo que vio. Utilizó una tecnología temprana de color que involucraba la grabación de tres exposiciones de cada escena sobre una placa de vidrio utilizando un filtro rojo, verde, y azul. En aquel entonces, no había manera de imprimir esas fotos, y tuvieron que ser visualizado mediante un proyector especial. Prokudin-Gorskii salió de Rusia en 1918. Sus negativos en placa de vidrio sobrevivieron y fueron adquiridos por la Biblioteca del Congreso de E.E.U.U. en 1948. Hoy en día, una versión digitalizada de la colección de Prokudin-Gorskii está [disponible en línea](http://www.loc.gov/exhibits/empire/gorskii.html).

### Vista general

El objetivo de esta práctica es aprender a trabajar con imágenes en MATLAB tomando las imágenes de Prokudin-Gorskii en placas de vidrio digitalizadas para automáticamente producir una imagen en color con el menor número de artefactos visuales como sea posible. Con el fin de hacer esto, tendrás que extraer las tres imágenes de los canales de color, colocarlas una encima de la otra, y orientarlas de manera que formen una sola imagen de color RGB (*del inglés Red Green Blue*, Rojo Verde Azul). Un código guía está [disponible aquí](https://www.dropbox.com/s/nm1e39cjyyfy1mb/codigo_ejemplo.m?dl=0), aunque no es un requerimiento utilizarlo.

Un archivo zip con seis imágenes de entrada está [disponible aquí](https://www.dropbox.com/s/z88jet24pnhlqpv/data.zip?dl=0). **Tenga en cuenta que el orden del filtro de arriba hacia abajo es BGR, no RGB!**

### Instrucciones detalladas

Su programa debe dividir la imagen en tres partes iguales (canales) y alinear dos de los canales al tercero (debes tratar los diferentes órdenes de la alineación de los canales y averiguar cuál funciona mejor). Para cada imagen de entrada, tendrás que mostrar la salida coloreada e informar el vector de desplazamiento *(x, y)* que se ha utilizado para alinear los canales. 

La forma más fácil de alinear las partes es la búsqueda exhaustiva sobre una ventana de posibles desplazamientos (por ejemplo `[-15,15]` píxeles), puntuar cada una usando alguna métrica de coincidencia de imágenes, y tomar el desplazamiento con la mejor puntuación. Hay varias posibles métricas que se podrían utilizar para puntuar lo bien que las imágenes coinciden. La más básica es la *L2-norma* de las diferencias de píxeles de los dos canales, también conocidos como la *suma de las diferencias al cuadrado (SSD)*, que es simplemente la suma `sum(sum(imagen1-imagen2).^2)`. Ten en cuenta que en nuestro caso, las imágenes que se ajustarán en realidad no tienen los mismos valores de brillo (son diferentes canales de color), por lo que una métrica más inteligente podría funcionar mejor. Una posibilidad es la *correlación cruzada normalizada (NCC)*, que es simplemente el producto punto entre las dos imágenes se normalizaron a tener media cero y norma la unidad (ver función de MATLAB ``normxcorr2``).

### Para puntos de bonificación 
**Alineación multiescala.** [Este archivo (más de 150 MB)](https://www.dropbox.com/s/avon25proh3shln/data_hires.zip?dl=0) contiene varios escaneos de alta resolución de las placas de vidrio. Para estas imágenes, la búsqueda exhaustiva sobre todos los desplazamientos posibles será computacionalmente  costoso. Para hacer frente a este caso, se debe poner en práctica un procedimiento de búsqueda más rápido, como una *pirámide de imagen*. Una pirámide imagen representa la imagen en múltiples escalas (por lo general reducido por un factor de 2) y el procesamiento se realiza secuencialmente a partir de la escala más gruesa (imagen pequeña) y bajando la pirámide, la actualización de su estimación sobre la marcha. Es fácil de implementar mediante llamadas adicionales recursivas a tu implementación original de una sola escala. Alternativamente, si tienes otras ideas para acelerar la alineación de imágenes de alta resolución, también puedes implementarlas y probarlas. 

**Otras mejoras.** Implementa y prueba algunas ideas adicionales que puedas tener para mejorar la calidad de las imágenes coloreadas. Por ejemplo, las fronteras de la fotografía tendrán colores extraños debido a que los tres canales no se alinearán exactamente. Ve si puedes idear una forma automática de recortar la frontera para deshacerse de la información no deseada. Una idea posible es que la información en las buenas partes de la imagen en general coinciden a través de los canales de color, mientras que en las fronteras no es así.

### Qué entregar

Debes entregar el código y un informe discutiendo tu solución y resultados. El informe debe contener lo siguiente: 

* Una breve descripción de la solución implementada, centrándose especialmente en las partes "no triviales" o interesantes de la solución. ¿Qué decisiones de implementación hiciste, y cómo afectan a la calidad del resultado y la velocidad de la computación? ¿Cuáles son algunos de los artefactos y/o limitaciones de la aplicación, y cuáles son las posibles razones de las mismas? 
* La imagen de color de salida para cada placa de vidrio de entrada y el vector de desplazamiento que se utilizó para alinear los canales. Al insertar imágenes de los resultados en el informe, debes cambiar el tamaño o comprimir adecuadamente para mantener el tamaño de archivo manejable (pero asegúrate que el resultado se puede ver). 
* Cualquier mejora de bonificación que intentaron, con los resultados. Si implementa una solución de múltiples escalas, informa sobre su mejora en términos de tiempo de cómputo (puedes dar una estimación si la solución a gran escala tarda demasiado).

### Entregando la tarea

El entregable debe consistir de lo siguiente:

* Todo el código de MATLAB y las imágenes de salida en **un solo archivo zip.** El nombre del archivo debe ser **apellido_nombre_a2.zip.**
* Un reporte en un sólo archivo PDF con todos los resultados y discusión. El nombre del archivo debe ser **apellido_nombre_a2.pdf**

Enviar la tarea mediante el enlace Dropbox de la página web. Para cualquier duda pueden contactarme vía Slack.

### Políticas de integridad académica

Eres libre de discutir la tarea con tus compañeros y consultar la Web, pero debes realizar tu propio código y escribir tu informe. Asegúrate de reconocer todas las fuentes externas en el informe.
