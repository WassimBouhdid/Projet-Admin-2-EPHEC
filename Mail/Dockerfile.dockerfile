FROM labo-admin-2021/server:latest

RUN apt update
RUN apt install -y postfix mutt mailutils bsd-mailx
RUN apt install -y dovecot-imapd dovecot-pop3d

RUN apt clean