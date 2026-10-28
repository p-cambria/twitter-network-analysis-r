# Relevancia observable en una red de Twitter/X con R

Análisis de una conversación digital mediante preparación de datos, redes de interacción y regresión logística.

> **En preparación:** documentación inicial basada en la descripción pública del proyecto. Los archivos originales y las instrucciones verificadas de reproducción se incorporarán antes de presentar este repositorio como completo.

## Problema y objetivo

¿Qué señales permiten describir la relevancia observable de una cuenta dentro de una conversación? El proyecto combina actividad, interacción y posición en la red para estudiar esta pregunta, sin reducir la relevancia al número de publicaciones o seguidores.

Trabajo final de Fundamentos de programación con R, en la Maestría en Ciencia de Datos de INTEC.

## Datos y metodología

La descripción del trabajo reporta una base inicial de **5,094 mensajes, 1,900 cuentas emisoras y 93 variables originales**.

1. Transformación de la base en tres estructuras: usuarios, tweets que no son retweets y aristas de interacción.
2. Construcción de una red dirigida y ponderada a partir de menciones, respuestas, retweets y citas.
3. Cálculo de grado de entrada, grado de salida, PageRank e intermediación (*betweenness*).
4. Construcción de un índice exploratorio que integra alcance, engagement, menciones y centralidad.
5. Estimación de una regresión logística para explorar características asociadas con tweets de alto engagement.

## Hallazgos descritos en el trabajo

- La relevancia observable combina varias señales de participación y posición estructural; no depende únicamente del volumen de publicaciones o de seguidores.
- El modelo reportó asociaciones entre alto engagement y características como verificación de la cuenta, base de seguidores, menciones y polaridad positiva.

Las tablas, coeficientes y métricas exactas se añadirán desde el informe original. Estas asociaciones no establecen causalidad ni representan una medida universal de influencia.

## Herramientas

R · R Markdown · tidyverse · igraph · tidygraph · ggraph · ggplot2 · regresión logística.

## Organización prevista

| Ubicación | Contenido |
| --- | --- |
| `src/` | Scripts originales y documento R Markdown |
| `reports/` | Informe final en PDF |
| `figures/` | Visualización de la red y gráficos seleccionados |
| `data/README.md` | Procedencia, acceso y documentación de los datos |

## Reproducción

Pendiente de incorporar los archivos originales. La versión completa indicará la versión de R, las dependencias, la definición de alto engagement, el tratamiento de valores ausentes y el orden exacto de ejecución. Si los datos originales no se distribuyen, se documentará esa limitación y, cuando sea viable, se incluirá un ejemplo sintético claramente identificado.

## Alcance

El índice es exploratorio y sus resultados dependen de la conversación observada, de las variables disponibles y de las decisiones de construcción de la red. Las métricas de centralidad describen esta red particular.

## Autor

Pablo Cambria · [LinkedIn](https://www.linkedin.com/in/pablo-cambria-6375b3217)
