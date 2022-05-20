FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get upgrade -y

RUN apt install -y postfix mutt mailutils bsd-mailx
RUN apt install -y dovecot-imapd dovecot-pop3d

COPY main.conf /etc/postfix/

EXPOSE 25/tcp
EXPOSE 110/tcp
EXPOSE 143/tcp

RUN apt clean
RUN service postfix start