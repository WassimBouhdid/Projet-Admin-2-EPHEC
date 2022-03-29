#ubuntu dernière version
FROM ubuntu:focal

#Installation de bind9 et des outils nécéssaire
RUN apt update && apt upgrade -y && apt install bind9  bind9utils dnsutils net-$

COPY named.conf /etc/bind/

COPY MES-A1.ephec-ti.be /etc/bind/

EXPOSE 53/udp
EXPOSE 53/tcp

#Commande réalisé au démarage du conteneur
CMD named -g

