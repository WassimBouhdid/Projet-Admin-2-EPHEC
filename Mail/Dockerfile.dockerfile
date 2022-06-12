
FROM ubuntu:latest

RUN apt update && \
    apt upgrade -y && \
    apt install -y postfix

RUN apt-get install -y vim nano telnet mutt dnsutils net-tools iputils-ping

RUN apt install -y dovecot-imapd dovecot-pop3d dovecot-core

RUN apt install -y net-tools telnet

COPY MailConfFiles/postfix/main.conf /etc/postfix/

COPY MailConfFiles/dovecot/dovecot.conf /etc/dovecot/

RUN adduser contact

COPY MailConfFiles/.muttrc /home/contact/

#port SMTP
EXPOSE 25/tcp

#IMAP
EXPOSE 110/tcp

#port POP
EXPOSE 143/tcp
