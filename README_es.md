# Material para la realización de experiencias de formación en ciberseguridad usando portales cautivos

Departamento de Ingeniería Telemática (Universidad de Sevilla).

Febrero de 2023

## Información general

Este repositorio incluye parte del material utilizado para la realización de una
experiencia de formación y educación básica en ciberseguridad desarrollada en el marco de las jornadas de puertas abiertas de la Escuela Técnica superior de Ingenieros de la Universidad de Sevilla para alumnos de bachillerato.

Esta experiencia se detalla con más profundidad en un artículo que está pendiente de publicar.

## Contenido

El material está dividido en los siguientes directorios:

- `certificates`: contiene scripts usados para generar las claves y certificados de la CA (_Certificate Authority_) raíz, CA intermedia y del servidor de phishing. Basado en <https://github.com/picodotdev/blog-ejemplos>.
- `dns`: ficheros de configuración del servidor DNS _fake_.
- `firefox`: ejemplo de certificado de CA raíz que se debe instalar en el navegador.
- `ntopng`: explicación de cómo instalar el programa `ntopng` en Ubuntu 24.04.
- `proxy_apache2`: ficheros de configuración de Apache para que funcione como proxy SSL.
- `zphisher`: scripts adiciones a los proporcionados por `zphisher` (<https://github.com/htr-tech/zphisher>).
