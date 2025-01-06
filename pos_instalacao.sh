#!/bin/bash

##########################################################################
#       Autor = Rodrigo (Rbgames Linux)                                  #
#       Tecnico em TI, tecnico em redes e finalizando tecnoloo em Redes  #
#       E-mail = rbgameslinux@gmail.com                                  #
##########################################################################

    # Exibir "leia-me"
clear
echo "==============================="
echo "     LEIA-ME ANTES DE USAR     "
echo "==============================="
echo
echo
echo  "#########################################################"
echo  "# Autor = Rodrigo (Rbgames Linux)                       #"
echo  "# Tecnico em TI e redes, finalizando tecnologo em Redes #"
echo  "# E-mail = rbgameslinux@gmail.com                       #"
echo  "#########################################################"
echo
echo "Este script fará alterações no seu sistema."
echo "Ele instalará pacotes e irá adicionar o usuário ao grupo 'wheel'."
echo "Este script foi feito para uso pessoal mais nada impede de vocês usa-lo."
echo "Lembrando que ele foi feito para instalações minimal e completa do archlinux com hyprland"
echo "Este script só pode ser usado em placas de video AMD"
echo "ATENCÃO SÓ GPU AMD"
echo "utilize por sua conta e risco"
echo "Tem certeza de que deseja prosseguir."
echo
echo "Se você não concorda, digite 'não' ou 'n'."
echo "Se concorda, digite 'sim' ou 's' para continuar."
echo

    # confirmação do usuário
read -p "Você concorda em continuar? (sim/não): " resposta

    # Converter para minúsculas 
resposta=$(echo "$resposta" | tr '[:upper:]' '[:lower:]')

    # Verificar a resposta
if [[ "$resposta" == "sim" || "$resposta" == "s" ]]; then
  echo "Você concordou! Continuando..."

                    # seu script aqui
 #######################################################################                   

# Pergunta para o usuário
echo "Você fez a instalação completa? (s/n)"
read resposta

# Condicional para verificar a resposta
if [ "$resposta" == "s" ]; then
        # Executa o comando se a resposta for "sim"
    echo "Você escolheu SIM. Executando a instalação de adicionais"
echo
echo
echo   
    sudo pacman -Syu --noconfirm ; sudo pacman -R dunst --noconfirm ; sudo pacman -S --needed\
    it wget unzip gum rofi wofi unrar okular gwenview\
    waybar swww dolphin dolphin-plugins ark firefox\
    loupe xdg-desktop-portal xdg-desktop-portal-gnome\
    xdg-desktop-portal-gtk xdg-desktop-portal-hyprland\
    xdg-desktop-portal-wlr xdg-user-dirs xdg-user-dirs-gtk\
    xdg-utils archlinux-xdg-menu btop ttf-font-awesome noto-fonts\
    noto-fonts-emoji noto-fonts-extra ttf-firacode-nerd\
    ttf-jetbrains-mono-nerd swayidle polkit-gnome bash-completion\
    ntfs-3g ffmpegthumbnailer ffmpegthumbs volumeicon pavucontrol\
    pamixer notification-daemon wl-clipboard wayland-utils\
    clinfo alsa-utils  imagemagick adw-gtk-theme breeze breeze5\
    breeze-gtk breeze-icons nwg-look swaylock\
    kio kde-cli-tools ntfs-3g exfat-utils dosfstools btrfs-progs\
    xfsprogs jfsutils f2fs-tools reiserfsprogs nilfs-utils udftools\
    e2fsprogs kitty gedit gparted mangohud bash-completion\
    telegram-desktop discord wine wine-gecko wine-mono winetricks\
    curl deluge-gtk vulkan-radeon libva-mesa-driver vulkan-icd-loader\
    lib32-mesa lib32-vulkan-radeon lib32-vulkan-icd-loader\
    lib32-libva-mesa-driver mesa-demos xorg-xdpyinfo amd-ucode\
    mesa-utils glfw-wayland vulkan-tools mesa-vdpau lib32-mesa-vdpau\
    lvm2 zip timeshift dosfstools linux-lts-headers linux-zen-headers\
    steam lutris gimp antimicrox celluloid mpv vlc android-tools hyprutils\
    hyprland-qtutils qt6-5compat qt6-declarative qt6-svg sddm gnome-disk-utility\
    gnome-calendar gnome-calculator --noconfirm 

elif [ "$resposta" == "n" ]; then
        # Executa o comando se a resposta for "não"
    echo "Você escolheu NÃO. Executando a instalação com xorg"
echo
echo
echo    
    sudo pacman -Syu --noconfirm ; sudo pacman -S --needed\
    git wget unzip gum rofi wofi unrar okular gwenview\
    waybar swww dolphin dolphin-plugins ark firefox\
    loupe xdg-desktop-portal xdg-desktop-portal-gnome\
    xdg-desktop-portal-gtk xdg-desktop-portal-hyprland\
    xdg-desktop-portal-wlr xdg-user-dirs xdg-user-dirs-gtk\
    xdg-utils archlinux-xdg-menu btop ttf-font-awesome noto-fonts\
    noto-fonts-emoji noto-fonts-extra ttf-firacode-nerd\
    ttf-jetbrains-mono-nerd swayidle polkit-gnome bash-completion\
    ntfs-3g ffmpegthumbnailer ffmpegthumbs volumeicon pavucontrol\
    pamixer notification-daemon wl-clipboard wayland-utils\
    clinfo alsa-utils  imagemagick adw-gtk-theme breeze breeze5\
    breeze-gtk breeze-icons nwg-look swaylock\
    kio kde-cli-tools sddm xorg network-manager-applet ntfs-3g\
    exfat-utils dosfstools btrfs-progs xfsprogs jfsutils f2fs-tools\
    reiserfsprogs nilfs-utils udftools e2fsprogs gedit gparted\
    mangohud bash-completion telegram-desktop discord wine\
    wine-gecko wine-mono winetricks curl deluge-gtk kitty\
    vulkan-radeon libva-mesa-driver vulkan-icd-loader lib32-mesa\
    lib32-vulkan-radeon lib32-vulkan-icd-loader lib32-libva-mesa-driver\
    mesa-demos xorg-xdpyinfo amd-ucode mesa-utils glfw-wayland\
    mesa llvm lib32-llvm vulkan-tools xf86-video-amdgpu mesa-vdpau\
    lib32-mesa-vdpau lvm2 kitty zip timeshift dosfstools lutris\
    linux-lts-headers linux-zen-headers steam mesa gimp antimicrox\
    celluloid mpv vlc android-tools hyprutils hyprland-qtutils qt6-5compat\
    qt6-declarative qt6-svg gnome-disk-utility gnome-calendar\
    gnome-calculator --noconfirm

    #instalar o paru p/ter suporte ao aur.
echo
echo
echo
echo "Instalando o suporte ao aur-helper com yay"
sleep 5
echo
echo
cd $HOME/
    git clone https://aur.archlinux.org/yay-bin.git
    cd yay-bin
    makepkg -si --noconfirm
    cd $HOME/
echo
echo
sleep 7
echo
echo
    #Instalar pacotes do aur com paru 
echo "Por questões de segurança e falhas"
echo "eu opitei por confirmar manualmente todos os pacotes do aur"
echo
sleep 10
echo
echo
    yay -S \
    swayosd-git \
    waypaper \
    hyprswitch \
    qt5ct-kde \
    qt6ct-kde \
    grimblast \
    protonup-qt-bin \
    swaync-git \
    ventoy-bin \
   # obs-studio-tytan652 \
   # obs-vkcapture \
    winff \
   # droidcam \
  #  v4l2loopback-dc-dkms \
    #google-chrome \
    #brave-bin \
 #   stremio \
   # opencl-amd \
    deckboard-bin \
  #  r-linux \
   # heroic-games-launcher-bin \
    jamesdsp-pipewire-bin \
    terabox-bin \
    clipman \
    clipse \
    visual-studio-code-bin
echo
echo
echo
        # Obter o nome do usuário atual
    usuario=$(whoami)

        # Adiciona o usuário ao grupo 'wheel'
    sudo usermod -aG wheel "$usuario"

        #Só rodar no terminal
    xdg-user-dirs-update 

        #coloca o dolphin com padrão do sistema
    xdg-mime default org.kde.dolphin.desktop inode/directoryxdg-mime default org.kde.dolphin.desktop inode/directory 

        #Habilita o sddm

    systemctl enable sddm.service
echo
echo "criando pastas e dando permissões"      
echo
sleep 5
echo
    sudo mkdir /mnt/Rodrigo000
    sudo mkdir /mnt/Rodrigo001
    sudo mkdir /mnt/Rodrigo002
    sudo mkdir /mnt/Rodrigo003
    sudo mkdir /mnt/Rodrigo004
    sudo mkdir /mnt/Rodrigo005
    sudo mkdir /mnt/Rodrigo006
sleep 3
echo
    sudo chmod + /mnt/Rodrigo000
    sudo chmod + /mnt/Rodrigo001
    sudo chmod + /mnt/Rodrigo002
    sudo chmod + /mnt/Rodrigo003
    sudo chmod + /mnt/Rodrigo004
    sudo chmod + /mnt/Rodrigo005
    sudo chmod + /mnt/Rodrigo006
sleep 3
echo
    sudo chown rodrigo:rodrigo /mnt//Rodrigo000
    sudo chown rodrigo:rodrigo /mnt//Rodrigo001
    sudo chown rodrigo:rodrigo /mnt//Rodrigo002
    sudo chown rodrigo:rodrigo /mnt//Rodrigo003
    sudo chown rodrigo:rodrigo /mnt//Rodrigo004
    sudo chown rodrigo:rodrigo /mnt//Rodrigo005
    sudo chown rodrigo:rodrigo /mnt//Rodrigo006
sleep 3
echo
echo "Finalizado a criação de pastas em /mnt"
echo
sleep 2
echo
echo "Extraindo configurações nas suas devidas pastas"
echo
sleep 3

    cd $HOME/pos_install
    
    sudo tar -xzvf simple-sddm-2.tar.gz -C /usr/share/sddm/themes/
    sudo tar -xzvf sddm.conf.tar.gz -C /etc/
    sudo tar -xzvf rodrigo_configs.tar.gz
echo    
sleep 5
echo 
     sudo cp -r rodrigo_configs/* ~/.config
echo "Descompactação finalizada com sucesso"
echo

sleep 7
echo
cd $HOME/
echo
echo

rm -fr pos_install

echo "Vamos reiniciar a sua maquina e após isso estára pronta para uso"
echo "Obrigado"
echo
echo "Reiniciando" 
echo
echo
echo
echo "Pressione Enter para reiniciar, ou CTRL+C para cancelar."
read -p ""
echo
echo
sudo reboot

###################final do script #########################

else
    # Caso o usuário digite algo diferente
    echo "Resposta inválida! Por favor, digite 's' ou 'n'."
fi
 
else
  echo "Você não concordou. O script será encerrado."
  exit 1
fi
