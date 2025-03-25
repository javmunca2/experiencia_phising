# Material for conducting cybersecurity training experiences using captive portals

Departamento de Ingeniería Telemática (Universidad de Sevilla).

February 2023

## General information

Este repositorio incluye parte del material utilizado para la realización de una
experiencia de formación y educación básica en ciberseguridad desarrollada en el marco de las jornadas de puertas abiertas de la Escuela Técnica superior de Ingenieros de la Universidad de Sevilla para alumnos de bachillerato.

This repository includes some of the material used to conduct a basic cybersecurity training and education experience developed as part of the "Jornadas de Puertas Abiertas" for high school students at the Higher Technical School of Engineering (ETSi) of the University of Seville (<https://www.us.es/>).

This experience is detailed in more depth in a pending paper.

## Content

The material is divided into the following directories:

- `certificates`: contains scripts used to generate the keys and certificates of the root CA (Certificate Authority), intermediate CA, and phishing server. Based on <https://github.com/picodotdev/blog-ejemplos>.
- `dns`: _fake_ DNS server configuration files.
- `firefox`: example of a root CA certificate that should be installed in the browser.
- `ntopng`: explanation of how to install the `ntopng` program on Ubuntu 24.04.
- `proxy_apache2`: Apache configuration files to work as an SSL proxy.
- `zphisher`: scripts in addition to those provided by `zphisher` (<https://github.com/htr-tech/zphisher>).
