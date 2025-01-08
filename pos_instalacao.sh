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
echo  "# E-mail = rbgameslinux@gmail.com                       #"
echo  "#########################################################"
echo  
echo "Este script foi feito para Archlinux com hyprland"
echo "Este script fará alterações no seu sistema."
echo "Ele instalará pacotes e irá adicionar o usuário ao grupo 'wheel'."
echo "Este script foi feito para uso pessoal mais nada impede de vocês usa-lo."
echo 
echo "Lembrando que ele foi feito para instalações minimal e completa do archlinux com hyprland"
echo "Este script só pode ser usado em placas de video AMD"
echo "ATENCÃO SÓ GPU AMD"
echo "utilize por sua conta e risco"
echo "Tem certeza de que deseja prosseguir."
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
Install_pacman() {
    package=$1
    for i in {1..3}; do
        if sudo pacman -S --noconfirm --needed "$package"; then
            echo "$package instalado com sucesso."
            break
        else
            echo "Erro ao instalar $package. Tentativa $i de 3..."
            pause
        fi
    done
}  
packages=(
    git wget unzip gum rofi wofi unrar okular waybar swww dolphin-plugins ark firefox
    loupe xdg-desktop-portal xdg-desktop-portal-gnome xdg-desktop-portal-gtk 
    xdg-desktop-portal-hyprland xdg-desktop-portal-wlr xdg-user-dirs xdg-user-dirs-gtk
    xdg-utils archlinux-xdg-menu btop ttf-font-awesome noto-fonts
    noto-fonts-emoji noto-fonts-extra ttf-firacode-nerd
    ttf-jetbrains-mono-nerd swayidle polkit-gnome bash-completion
    ntfs-3g ffmpegthumbnailer ffmpegthumbs volumeicon pavucontrol
    pamixer notification-daemon wl-clipboard wayland-utils
    clinfo alsa-utils  imagemagick adw-gtk-theme breeze breeze5
    breeze-gtk breeze-icons nwg-look kio kde-cli-tools exfat-utils dosfstools btrfs-progs
    xfsprogs jfsutils f2fs-tools reiserfsprogs nilfs-utils udftools
    e2fsprogs kitty gedit gparted mangohud telegram-desktop discord wine wine-gecko
    wine-mono winetricks curl deluge-gtk vulkan-radeon libva-mesa-driver vulkan-icd-loader
    lib32-mesa lib32-vulkan-radeon lib32-vulkan-icd-loader gnome-calendar gnome-calculator
    lib32-libva-mesa-driver mesa-demos xorg-xdpyinfo amd-ucode ksnip swaync
    mesa-utils glfw-wayland vulkan-tools mesa-vdpau lib32-mesa-vdpau
    lvm2 zip timeshift dosfstools linux-lts-headers linux-zen-headers
    steam lutris gimp antimicrox celluloid mpv vlc android-tools
    qt6-5compat qt6-declarative qt6-svg gnome-disk-utility epapirus-icon-theme
  )

    #instalar o yay p/ter suporte ao aur.
echo 
echo
echo "Instalando o suporte ao aur-helper com yay"
sleep 2
echo
cd $HOME/
    git clone https://aur.archlinux.org/yay-bin.git
    cd yay-bin
    makepkg -si --noconfirm
    cd $HOME/
echo
echo
sleep 2
echo
echo
    #Instalar pacotes do aur com paru 
echo "Instalando pacotes necesssarios do aur"
echo
sleep 3
echo
echo
install_yay() {
    package_yay=$1
    for i in {1..3}; do
        if yay -S --noconfirm --needed "$package_yay"; then
            echo "$package_yay instalado com sucesso."
            break
        else
            echo "Erro ao instalar $package_yay. Tentativa $i de 3..."
            pause
        fi
    done
}
    package_yay=(
    swayosd-git waypaper hyprswitch qt5ct-kde qt6ct-kde grimblast swaylock-effects
    wlogout protonup-qt-bin clipman clipse winff ventoy-bin stremio
    heroic-games-launcher-bin visual-studio-code-bin
    jamesdsp-pipewire-bin terabox-bin
    )

    # Instalar depois  obs-studio-tytan652 obs-vkcapture droidcam v4l2loopback-dc-dkms google-chrome brave-bin
    # opencl-amd deckboard-bin r-linux 
    
for pkg in "${package_yay[@]}"; do
    install_yay "$pkg"
done    
        
echo "Adicionando usuario ao grupo wheel" 
sleep 2
echo
        # Obter o nome do usuário atual
    usuario=$(whoami)
echo 
        # Adiciona o usuário ao grupo 'wheel'
    sudo usermod -aG wheel "$usuario"

        #Só rodar no terminal
    xdg-user-dirs-update 
sleep 2
echo "coloca o dolphin com padrão do sistema"
    xdg-mime default org.kde.dolphin.desktop inode/directoryxdg-mime default org.kde.dolphin.desktop inode/directory 

 sleep 2      
      #Habilita o sddm
echo "Habilitando o sddm no sitema"
sleep 2
    systemctl enable sddm.service
echo
echo "criando pastas e dando permissões"      
echo
sleep 1
echo
    sudo mkdir /mnt/Rodrigo000
    sudo mkdir /mnt/Rodrigo001
    sudo mkdir /mnt/Rodrigo002
    sudo mkdir /mnt/Rodrigo003
    sudo mkdir /mnt/Rodrigo004
    sudo mkdir /mnt/Rodrigo005
    sudo mkdir /mnt/Rodrigo006
sleep 1
echo
    sudo chmod + /mnt/Rodrigo000
    sudo chmod + /mnt/Rodrigo001
    sudo chmod + /mnt/Rodrigo002
    sudo chmod + /mnt/Rodrigo003
    sudo chmod + /mnt/Rodrigo004
    sudo chmod + /mnt/Rodrigo005
    sudo chmod + /mnt/Rodrigo006
sleep 1
echo
    sudo chown rodrigo:rodrigo /mnt//Rodrigo000
    sudo chown rodrigo:rodrigo /mnt//Rodrigo001
    sudo chown rodrigo:rodrigo /mnt//Rodrigo002
    sudo chown rodrigo:rodrigo /mnt//Rodrigo003
    sudo chown rodrigo:rodrigo /mnt//Rodrigo004
    sudo chown rodrigo:rodrigo /mnt//Rodrigo005
    sudo chown rodrigo:rodrigo /mnt//Rodrigo006
sleep 2
echo
echo "Finalizado a criação de pastas em /mnt"
echo
sleep 2
echo
echo "Extraindo configurações nas suas devidas pastas"
echo
sleep 2

cd $HOME/pos_install
# tar -xzvf rodrigo_configs.tar.gz ; cp -r rodrigo_configs/* ~/.config

if [ -f "$(pwd)/rodrigo_configs.tar.gz" ]; then
    tar -xzvf "$(pwd)/rodrigo_configs.tar.gz" -C "$HOME/"
    echo "Arquivo rodrigo_configs.tar.gz extraído para ~/rodrigo_configs com sucesso."
else
    echo "rodrigo_configs.tar.gz não encontrado no diretório atual."
fi  

echo
sleep 2
echo "Copiando p/.config"
cp -r $HOME/rodrigo_configs/* ~/.config

sleep 2    
    #sudo tar -xzvf simple-sddm-2.tar.gz -C /usr/share/sddm/themes/
    
if [ -f "$(pwd)/simple-sddm-2.tar.gz" ]; then
    sudo tar -xzvf "$(pwd)/simple-sddm-2.tar.gz" -C "/usr/share/sddm/themes/"
    echo "Arquivo simple-sddm-2.tar.gz extraído para /usr/share/sddm/themes/ com sucesso."
else
    echo "simple-sddm-2.tar.gz não encontrado no diretório atual."
fi
sleep 2    
    #sudo tar -xzvf sddm.conf.tar.gz -C /etc/

if [ -f "$(pwd)/sddm.conf.tar.gz" ]; then
    sudo tar -xzvf "$(pwd)/sddm.conf.tar.gz" -C "/etc/"
    echo "Arquivo sddm.conf.tar.gz extraído para /etc/ com sucesso."
else
    echo "sddm.conf.tar.gz não encontrado no diretório atual."
fi    
   
echo    
sleep 2
echo 
    
    
echo "Descompactação finalizada com sucesso"
echo

sleep 1
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
    

elif [ "$resposta" == "n" ]; then
        # Executa o comando se a resposta for "não"
    echo "Você escolheu NÃO. Executando a instalação com xorg"
echo
Install_pacman() {
    package=$1
    for i in {1..3}; do
        if sudo pacman -S --noconfirm --needed "$package"; then
            echo "$package instalado com sucesso."
            break
        else
            echo "Erro ao instalar $package. Tentativa $i de 3..."
            pause
        fi
    done
}
packages=(
    git wget unzip gum rofi wofi unrar okular waybar swww dolphin dolphin-plugins
    ark firefox loupe xdg-desktop-portal xdg-desktop-portal-gnome
    xdg-desktop-portal-gtk xdg-desktop-portal-hyprland
    xdg-desktop-portal-wlr xdg-user-dirs xdg-user-dirs-gtk
    xdg-utils archlinux-xdg-menu btop ttf-font-awesome noto-fonts
    noto-fonts-emoji noto-fonts-extra ttf-firacode-nerd
    ttf-jetbrains-mono-nerd swayidle polkit-gnome bash-completion
    ntfs-3g ffmpegthumbnailer ffmpegthumbs volumeicon pavucontrol
    pamixer notification-daemon wl-clipboard wayland-utils
    clinfo alsa-utils  imagemagick adw-gtk-theme breeze breeze5
    breeze-gtk breeze-icons nwg-look
    kio kde-cli-tools sddm xorg network-manager-applet
    exfat-utils dosfstools btrfs-progs xfsprogs jfsutils f2fs-tools
    reiserfsprogs nilfs-utils udftools e2fsprogs kitty gedit gparted
    mangohud telegram-desktop discord wine
    wine-gecko wine-mono winetricks curl deluge-gtk
    vulkan-radeon libva-mesa-driver vulkan-icd-loader lib32-mesa
    lib32-vulkan-radeon lib32-vulkan-icd-loader lib32-libva-mesa-driver
    mesa-demos xorg-xdpyinfo amd-ucode mesa-utils glfw-wayland
    mesa llvm lib32-llvm vulkan-tools xf86-video-amdgpu xf86-video-ati
    mesa-vdpau\ lib32-mesa-vdpau lvm2 zip timeshift dosfstools lutris
    linux-lts-headers linux-zen-headers steam gimp antimicrox
    celluloid mpv vlc android-tools hyprutils hyprland-qtutils qt6-5compat
    qt6-declarative qt6-svg gnome-disk-utility gnome-calendar gnome-calculator
    ksnip swaync hyprland xorg-server xorg-xinit epapirus-icon-theme
    )
    
for pkg in "${packages[@]}"; do
    Install_pacman "$pkg"
done
echo
echo    
sleep 2
    #instalar o yay p/ter suporte ao aur.
echo
echo
echo "Instalando o suporte ao aur-helper com yay"
sleep 2
echo
echo
cd $HOME/
    git clone https://aur.archlinux.org/yay-bin.git
    cd yay-bin
    makepkg -si --noconfirm
    cd $HOME/
echo
echo
sleep 3
echo
echo
    #Instalar pacotes do aur com yay 
echo "Instalando pacotes necessarios do aur"
echo
sleep 3
echo
echo

install_yay() {
    package_yay=$1
    for i in {1..3}; do
        if yay -S --noconfirm --needed "$package_yay"; then
            echo "$package_yay instalado com sucesso."
            break
        else
            echo "Erro ao instalar $package_yay. Tentativa $i de 3..."
            pause
        fi
    done
}
    package_yay=(
    swayosd-git waypaper hyprswitch qt5ct-kde qt6ct-kde grimblast swaylock-effects
    wlogout protonup-qt-bin clipman clipse winff ventoy-bin  stremio
    heroic-games-launcher-bin visual-studio-code-bin jamesdsp-pipewire-bin terabox-bin
    )
    
     # fazer instalacao depois obs-studio-tytan652 obs-vkcapture droidcam v4l2loopback-dc-dkms 
     # oogle-chrome brave-bin opencl-amd deckboard-bin r-linux 
    
for pkg in "${package_yay[@]}"; do
    install_yay "$pkg"
done    
      
echo
echo
echo
        # Obter o nome do usuário atual
    usuario=$(whoami)

echo "Adicionando usuário ao grupo 'wheel'"
sleep 2
        # Adiciona o usuário ao grupo 'wheel'
    sudo usermod -aG wheel "$usuario"

        #Só rodar no terminal
    xdg-user-dirs-update 

echo "Coloca o dolphin com padrão do sistema"
sleep 2
        #coloca o dolphin com padrão do sistema
    xdg-mime default org.kde.dolphin.desktop inode/directoryxdg-mime default org.kde.dolphin.desktop inode/directory 

echo "Habilitando o sddm no sitema"
sleep 2
        #Habilita o sddm

    systemctl enable sddm.service
echo
echo "criando pastas e dando permissões"      
echo
sleep 2
echo
    sudo mkdir /mnt/Rodrigo000
    sudo mkdir /mnt/Rodrigo001
    sudo mkdir /mnt/Rodrigo002
    sudo mkdir /mnt/Rodrigo003
    sudo mkdir /mnt/Rodrigo004
    sudo mkdir /mnt/Rodrigo005
    sudo mkdir /mnt/Rodrigo006
sleep 1
echo
    sudo chmod + /mnt/Rodrigo000
    sudo chmod + /mnt/Rodrigo001
    sudo chmod + /mnt/Rodrigo002
    sudo chmod + /mnt/Rodrigo003
    sudo chmod + /mnt/Rodrigo004
    sudo chmod + /mnt/Rodrigo005
    sudo chmod + /mnt/Rodrigo006
sleep 1
echo
    sudo chown rodrigo:rodrigo /mnt//Rodrigo000
    sudo chown rodrigo:rodrigo /mnt//Rodrigo001
    sudo chown rodrigo:rodrigo /mnt//Rodrigo002
    sudo chown rodrigo:rodrigo /mnt//Rodrigo003
    sudo chown rodrigo:rodrigo /mnt//Rodrigo004
    sudo chown rodrigo:rodrigo /mnt//Rodrigo005
    sudo chown rodrigo:rodrigo /mnt//Rodrigo006
sleep 1
echo
echo "Finalizado a criação de pastas em /mnt"
echo
sleep 2
echo
echo "Extraindo configurações nas suas devidas pastas"
echo
sleep 2

cd $HOME/pos_install
# tar -xzvf rodrigo_configs.tar.gz ; cp -r rodrigo_configs/* ~/.config

if [ -f "$(pwd)/rodrigo_configs.tar.gz" ]; then
    tar -xzvf "$(pwd)/rodrigo_configs.tar.gz" -C "$HOME/"
    echo "Arquivo rodrigo_configs.tar.gz extraído para ~/rodrigo_configs com sucesso."
else
    echo "rodrigo_configs.tar.gz não encontrado no diretório atual."
fi  

echo
sleep 2
echo "Copiando p/.config"
cp -r $HOME/rodrigo_configs/* ~/.config  

sleep 2

    #sudo tar -xzvf simple-sddm-2.tar.gz -C /usr/share/sddm/themes/
    
if [ -f "$(pwd)/simple-sddm-2.tar.gz" ]; then
    sudo tar -xzvf "$(pwd)/simple-sddm-2.tar.gz" -C "/usr/share/sddm/themes/"
    echo "Arquivo simple-sddm-2.tar.gz extraído para /usr/share/sddm/themes/ com sucesso."
else
    echo "simple-sddm-2.tar.gz não encontrado no diretório atual."
fi

sleep 2

    #sudo tar -xzvf sddm.conf.tar.gz -C /etc/

if [ -f "$(pwd)/sddm.conf.tar.gz" ]; then
    sudo tar -xzvf "$(pwd)/sddm.conf.tar.gz" -C "/etc/"
    echo "Arquivo sddm.conf.tar.gz extraído para /etc/ com sucesso."
else
    echo "sddm.conf.tar.gz não encontrado no diretório atual."
fi    
   
echo    
sleep 2
echo 
    
    
echo "Descompactação finalizada com sucesso"
echo

sleep 2
echo
cd $HOME/
echo
echo
echo "Removendo os arquivos baixados"
sleep 3

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
