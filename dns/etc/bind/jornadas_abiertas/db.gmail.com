$TTL 86400
@   IN  SOA  ns.dns.local. root.dns.local. (
             2024013001   ; Serial
             3600         ; Refresh
             1800         ; Retry
             604800       ; Expire
             86400 )      ; Minimum TTL

@       IN  NS   ns.dns.local.
@       IN  A    172.16.17.165  ; IP privada que quieres asignar
www     IN  A    172.16.17.165  ; Para www.gmail.com
