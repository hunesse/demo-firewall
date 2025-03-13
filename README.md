# Documentation sur les différentes solutions de Firewall

## Les 2 types de Firewall

Il existe deux grands types de pare-feu : le firewall matériel et le firewall logiciel. Ces deux dispositifs peuvent être utilisés conjointement ou séparément.

## Firewall matériel  
Le pare-feu matériel s’installe à l’entrée du réseau (DMZ) . Il est particulièrement prisé par les professionnels, car il protège l’ensemble du réseau local, y compris les ordinateurs et les serveurs.

## Firewall logiciel  
Le pare-feu logiciel est installé directement sur les postes de travail, ce qui le rend idéal pour les télétravailleurs. Il remplit la même fonction qu’un firewall matériel, mais à un niveau local. Son rôle est de contrôler les informations entrantes et sortantes et de les bloquer si nécessaire, selon les règles définies.

## Les firewalls logiciels
### Pare-feu de containers  
Un pare-feu de containers est une version logicielle d’un NGFW (Next-generation firewall) spécialement conçue pour les environnements Kubernetes. Il intègre directement la sécurité au cycle DevOps, offrant une protection adaptée aux architectures basées sur des containers et permettant de détecter et prévenir les attaques en temps réel. Cependant, sa configuration est complexe et nécessite une expertise approfondie des environnements Kubernetes. De plus, son efficacité est limitée en dehors des infrastructures basées sur des containers.  

### Pare-feu virtuels (ou pare-feu cloud)  
Un pare-feu virtuel, aussi appelé « pare-feu cloud », est une instance virtualisée de NGFW utilisée dans les environnements cloud et virtuels pour sécuriser le trafic est-ouest et nord-sud. Il offre une scalabilité et une flexibilité accrues, facilitant son déploiement dans le cloud. Il permet également de sécuriser le trafic entre applications et services grâce à la microsegmentation. Toutefois, il peut impacter les performances du réseau, nécessite une surveillance continue et dépend de l’infrastructure cloud sous-jacente.  

### Pare-feu sous forme de service managé (FWaaS)  
Les pare-feu logiciels sont aussi disponibles sous forme de service managé, où la gestion, la maintenance et les mises à jour sont assurées par un prestataire. Cette solution facilite le déploiement de la sécurité en couche 7 et permet une adaptation rapide aux besoins de l’entreprise. Toutefois, elle implique une dépendance au fournisseur, un contrôle limité sur la configuration avancée et peut soulever des questions sur la confidentialité des données.  

## Conclusion

Le pare-feu matériel contrôle le trafic selon des règles de sécurité prédéfinies et nécessite une configuration experte.
Un pare-feu logiciel lui, est facile facile à déployer, il fonctionne sur un système dédié à la sécurité et peut être automatisé via le cloud.
Les 2 solutions sont viables, le choix du responsable de l'infrastructure se fera en fonction de ses besoins.

#### Kermarrec Gaëtan
#### Djenadi Arno

