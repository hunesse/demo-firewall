echo "[+] Mise en place du firewall..."

# Accéder au container Firewall
docker exec -it firewall bash -c "
    apt update &&
    apt install -y iptables ufw procps &&

    # Activer le forwarding IP
    echo 'net.ipv4.ip_forward=1' >> /etc/sysctl.conf &&
    sysctl -p &&

    # Configurer iptables pour faire du routage entre private_net et dmz_net
    iptables -t nat -A POSTROUTING -o eth1 -j MASQUERADE &&
    iptables -A FORWARD -i eth0 -o eth1 -j ACCEPT &&
    iptables -A FORWARD -i eth1 -o eth0 -m state --state RELATED,ESTABLISHED -j ACCEPT &&

    # Configurer UFW
    ufw default deny incoming &&
    ufw allow from 192.168.0.0/24 to 192.168.1.2 port 80 proto tcp &&
    ufw allow from 192.168.0.0/24 to 192.168.1.2 port 443 proto tcp &&
    ufw allow from 192.168.0.0/24 to 192.168.1.2 port 22 proto tcp &&
    ufw enable
"

echo "[+] Firewall configuré avec succès !"

