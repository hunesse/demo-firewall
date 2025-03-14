docker exec -it client bash -c "
	nmap -F 192.168.0.0/24
	nmap -F 192.168.1.0/24
	curl http://192.168.1.2
	nmap -F 192.168.1.2
"
echo "Voici le résultat de la demo"
