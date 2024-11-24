#!/bin/bash

###Rocky Linux XFCE###
###Atualização completa do sistema###

##Execução do arquivo de atualização no terminal##
#/home/robsonnakane/Documentos/'Atualização Rocky XFCE.sh'

#Edição do arquivo no terminal#
#nano /home/robsonnakane/Documentos/'Atualização Rocky XFCE.sh'#

sudo dnf autoremove -y; ##remova todos os pacotes desnecessários que foram originalmente instalados como dependências
sudo dnf makecache -y; ##gera o cache de metadados
sudo dnf check -y; ##verifica se há problemas no packagedb
sudo dnf check-update -y; ##verifica se há atualizações de pacote disponíveis
sudo dnf upgrade --refresh -y; ##atualiza um ou mais pacotes em seu sistema
sudo dnf distro-sync -y; ##sincroniza os pacotes instalados com as últimas versões disponíveis
sudo grub2-mkconfig -o /boot/grub2/grub.cfg; ##Atualiza o grub

##instalação dos programas nativos / instalação mínima##
#sudo dnf install fastfetch -y; sudo dnf install simple-scan -y; sudo dnf install btop -y; sudo dnf install gnome-boxes -y; sudo dnf install kitty -y; sudo dnf install wine -y; sudo dnf install jre-openjdk -y; sudo dnf install cups -y;

##instalação dos programas Flatpak##
#sudo flatpak install flathub com.spotify.Client -y; sudo flatpak install flathub us.zoom.Zoom -y; sudo flatpak install flathub org.onlyoffice.desktopeditors -y; sudo flatpak install flathub com.skype.Client -y; sudo flatpak install flathub org.raspberrypi.rpi-imager -y; sudo flatpak install flathub org.gnome.Firmware -y; sudo flatpak install flathub org.kde.kdenlive -y; sudo flatpak install flathub org.inkscape.Inkscape -y; sudo flatpak install flathub org.fedoraproject.MediaWriter -y; sudo flatpak install flathub org.gnome.gedit -y; sudo flatpak install flathub org.atheme.audacious -y; sudo flatpak install flathub ca.littlesvr.asunder -y; sudo flatpak install flathub ar.com.tuxguitar.TuxGuitar -y; sudo flatpak install flathub org.chromium.Chromium -y; sudo flatpak install flathub org.gnome.gitlab.YaLTeR.VideoTrimmer -y; sudo flatpak install flathub com.warlordsoftwares.media-downloader -y; sudo flatpak install flathub org.gtkhash.gtkhash -y; sudo flatpak install flathub fr.handbrake.ghb -y; sudo flatpak install flathub org.qbittorrent.qBittorrent -y; flatpak install flathub com.anydesk.Anydesk -y; flatpak install flathub com.valvesoftware.Steam -y;

##Atualização do Flatpak##
#flatpak update -y;

#systemctl reboot
