

#### Kermarrec Gaëtan
#### Djenadi Arno

### Démarche réalisé
Nous avons du passer sur une autre solution que Vagrant car sur nos deux PC la virtualisation n'était pas compatible donc nous sommes passés sur du docker.
Nous avons donc fait 3 docker compose différents dans des dossiers différents :
ufw, iptable et ufw_dmz
Dans ces dossiers il y a à chaque fois un docker-compose.yml qui met en place l'infrastructure : un serveur et un client (et une DMZ dans le dernier).

### Mise en place 
Nous allons maintenant voir comment utiliser et mettre en place les différentes solutions que nous avons développer.
Tout d'abord après avoir télécharger le zip de notre dépot l'arborescence devrait ressembler à ça :
![Arborescence attendu](./src/img/tree_firewall.png "Arborescence à avoir avec le fichier ZIP")

Une fois cela fait rendez-vous dans le dossier ufw : `cd demo-firewall/sae-Firewall/ufw`
Une fois dans le dossier il faut faire la commande : `docker compose up -d` ce qui va lancer les différents conteneurs
Puis attendre 20 secondes que les paquets se téléchargent puis faire la commande : `chmod +x demo.sh` et après : `./demo.sh` et vous allez pouvoir voir les résultats des commandes curl et nmap sur l'adresse IP du serveur.
