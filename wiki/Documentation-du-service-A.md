# Organisation des configurations 

Les fichiers de configuration du service A se trouvent ici (lien vers le répertoire github correspondant). 

Ils ont organisés de la manière suivante : 

- Les utilisateurs sont définis dans le fichier xxx.cfg
- Le service principal est configuré dans le fichier yyy.cfg
- ... 
- ... 

# Maintenance

## Procédure pour mettre à jour le(s) logiciel(s) serveur

<Liste des commandes avec explication de chaque étape>

## Procédure en cas d'ajout d'un nouvel utilisateur

<Liste des commandes avec explication de chaque étape>

## Procédure en cas de départ d'un employé

<Liste des commandes avec explication de chaque étape>

## Procédure en cas d'ajout d'une nouvelle page web

<Liste des commandes avec explication de chaque étape>

# Troubleshooting

## Procédures et collecte d'information

En cas de dysfonctionnement, voici les éléments à observer pour trouver des informations de debug : 

- Logs : Fichiers /X/Y/logs.log
- Procédure de test 1 : Taper la commande "...." pour tester la joignabilité du service.  Si résultat XXX : Le problème vient de <...>, sinon, le problème ailleurs.  
- Procédure de test 2 : Taper la commande "...." pour tester si le service répond XX à une requête YY.  Si résultat XXX : Le problème vient de <...>, sinon, le problème ailleurs.  

## Erreurs fréquentes

- Oubli de la configuration des ports UDP => le service n'est pas joignable
- Permissions incorrectes sur le fichier XXX  => La page demandée ne s'affiche pas
- ... 





