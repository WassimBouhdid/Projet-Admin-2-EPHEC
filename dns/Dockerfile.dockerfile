
FROM ubuntu:latest

# Mettre à jour tous les packets
RUN apt update && apt upgrade -y
# Installer bind et autres programme utile
RUN apt install bind9 bind9utils dnsutils net-tools iputils-ping -y

COPY named.conf /etc/bind/

COPY MES-A1.ephec-ti.be /etc/bind/

EXPOSE 53/udp
EXPOSE 53/tcp

CMD named -g

