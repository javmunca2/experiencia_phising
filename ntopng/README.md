ntopng
======

Instalación en Ubuntu 24.04.

```
apt install ntopng ntopng-data libjs-bootstrap5
rm /usr/share/ntopng/httpdocs/bootstrap
ln -s /usr/share/javascript/bootstrap5 /usr/share/ntopng/httpdocs/bootstrap
```

Después instalar base de datos de geolocalización siguiendo los pasos de:
<https://github.com/ntop/ntopng/blob/dev/doc/README.geolocation.md>

