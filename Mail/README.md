# Commande Mail Bouhdid Wassim

 1. docker build -t mailconfig
 2. docker run -tid -p 25:25/tcp -p 110:110/tcp -p 143:143/tcp --name postfixconf postfix
 3. docker exec -ti postfixconffinal /bin/bash
 4. postfix start
 5. service dovecot start


Le premier bug : lorsque j'essaye d'envoyer un mail depuis mon adresse perso vers contact@MES-A1.ephec-ti.be, je reçois un mail de Microsoft me disant "Certains paramètres de sécurité ou de stratégie sur mes-a1.ephec-ti.be ont rejeté votre message."

Erreur signalée :	554 5.7.1 <toto@MES-A1.ephec-ti.be>: Recipient address rejected: Access denied 

Deuxième bug : lorsque j'essaye d'envoyer un mail avec l'interface mutt depuis l'utilisateur Unix contact vers l'une de mes adresses perso, je reçois dans les log, le message d'erreur suivant me disant que 