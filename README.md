

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
