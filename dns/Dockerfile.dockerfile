
FROM ubuntu:latest

# Mettre à jour tous les packets
RUN apt update && apt upgrade -y && apt install nano
# Installer bind et autres programme utile
RUN apt install bind9 bind9utils dnsutils net-tools iputils-ping -y

RUN dnssec-keygen -a RSASHA256 -b 2048 -f KSK mes-a1.ephec-ti.be

RUN dnssec-keygen -a RSASHA256 -b 1280 mes-a1.ephec-ti.be

COPY named.conf /etc/bind/

COPY MES-A1.ephec-ti.be /etc/bind/

EXPOSE 53/udp
EXPOSE 53/tcp

CMD named -g

