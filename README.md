#### Kermarrec Gaëtan
#### Djenadi Arno

# Synthèse SAE Firewall

### Objectif final
L'objectif final du projet est de mettre en place un firewall et de sécuriser un serveur web dans un environnement virtualisé. Il s'agit de démontrer l'efficacité du firewall en bloquant certaines connexions tout en autorisant les flux légitimes, ainsi que de réduire la surface d’attaque du serveur web Nginx. Le projet comprend aussi la mise en place d'une DMZ pour protéger le réseau interne, avec des démonstrations pratiques de sécurité.

### Démarche réalisé
Nous avons du passer sur une autre solution que Vagrant car sur nos deux PC la virtualisation n'était pas compatible donc nous sommes passés sur du docker.
Nous avons donc fait 3 docker compose différents dans des dossiers différents :
ufw, iptable et ufw_dmz
Dans ces dossiers il y a à chaque fois un docker-compose.yml qui met en place l'infrastructure : un serveur et un client (et une DMZ dans le dernier).

### Mise en place 
Nous allons maintenant voir comment utiliser et mettre en place les différentes solutions que nous avons développer.
Tout d'abord après avoir télécharger le zip de notre dépot l'arborescence devrait ressembler à ça :
![Arborescence attendu](./src/img/tree_firewall.png "Arborescence à avoir avec le fichier ZIP")

Une fois cela fait rendez-vous dans le dossier ufw : `cd demo-firewall/sae-Firewall/ufw`.
Une fois dans le dossier il faut faire la commande : `docker compose up -d` ce qui va lancer les différents conteneurs.
Puis attendre 20 secondes que les paquets se téléchargent puis faire la commande : `chmod +x demo.sh` et après : `./demo.sh` et vous allez pouvoir voir les résultats des commandes curl et nmap sur l'adresse IP du serveur.

Puis pour passer à la dmz commencez d'abord par stopper tout les conteneurs faire : `chmod +x stop.sh` et après `./stop.sh`

Une fois cela fait rendez-vous dans le dossier ufw_dmz : `cd demo-firewall/sae-Firewall/ufw_dmz`
Une fois dans le dossier il faut faire la commande : `docker compose up -d` ce qui va lancer les différents conteneurs.

Puis attendre 20 secondes que les paquets se téléchargent puis faire la commande : `chmod +x demo.sh` et `chmod +x setup_fw.sh` et après : `./setup_fw.sh ` puis après quelques secondes après la fin du script `./demo.sh` et vous allez pouvoir voir les résultats des commandes curl et nmap sur l'adresse IP du serveur et des plages d'adresses IP.

Nous avons aussi essayé de mettre en place un serveur avec seulement des commandes Iptables mais on a préféré se concentrer sur ufw et ufw avec une DMZ.

### Problème rencontrés
Nous avons tout d'abord essayé de mettre en place la solution avec Vagrant via QEMU / Libvirt cependant ça prenait beaucoup trop de temps puis nous sommes passés sur virtualbox et nous nous sommes rendu compte que nos pc n'avait pas la virtualisation d'activé et pas activable nous sommes donc passés sur docker via des docker compose.
Et la DMZ bloque un peu trop bien et nous n'arrivons pas à joindre le serveur avec le client
