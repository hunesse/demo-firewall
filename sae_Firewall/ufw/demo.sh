docker exec -it client bash -c "
	curl http://192.168.0.2
	nmap -F 192.168.0.2
"
echo "Voici le résultat de la demo"
