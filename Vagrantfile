# Vagrantfile pour la configuration initiale des VMs
Vagrant.configure("2") do |config|
  # Définition de la VM Serveur
  config.vm.define "server" do |server|
    server.vm.box = "debian/bookworm64"  # Debian 12
    server.vm.hostname = "server"
    server.vm.network "private_network", ip: "192.168.0.10"
    
    server.vm.provision "shell", inline: <<-SHELL
      apt update && apt upgrade -y
      apt install -y nginx ufw
      
      # Configuration de UFW (Firewall)
      ufw allow 22   # SSH
      ufw allow 80   # HTTP
      ufw allow 443  # HTTPS
      ufw enable
      
      systemctl restart nginx
    SHELL
  end

  # Définition de la VM Client
  config.vm.define "client" do |client|
    client.vm.box = "debian/bookworm64"
    client.vm.hostname = "client"
    client.vm.network "private_network", ip: "192.168.0.11"
    
    client.vm.provision "shell", inline: <<-SHELL
      apt update && apt upgrade -y
      apt install -y curl nmap
    SHELL
  end
end

