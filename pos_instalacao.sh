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
echo "utilize por sua conta e risco"
echo "Tem certeza de que deseja prosseguir."
echo
echo "Se você não concorda, digite 'não' ou 'n'."
echo "Se concorda, digite 'sim' ou 'y' para continuar."
echo

    # confirmação do usuário
read -p "Você concorda em continuar? (sim/não): " resposta

    # Converter para minúsculas 
resposta=$(echo "$resposta" | tr '[:upper:]' '[:lower:]')

    # Verificar a resposta
if [[ "$resposta" == "sim" || "$resposta" == "y" ]]; then
  echo "Você concordou! Continuando..."

                    # seu script aqui
 #######################################################################                   

# Pergunta para o usuário
echo "Você fez a instalação completa? (s/n)"
read resposta

# Condicional para verificar a resposta
if [ "$resposta" == "s" ]; then
        # Executa o comando se a resposta for "sim"
    echo "Você escolheu SIM. Executando a ação de adicionais"
echo
echo
echo   
    sudo pacman -Syu --noconfirm ; sudo pacman -R dunst --noconfirm ; sudo pacman -S --needed\
    git wget unzip gum rofi wofi unrar okular gwenview\
    waybar swww dolphin dolphin-plugins ark firefox\
    swaync loupe xdg-desktop-portal xdg-desktop-portal-gnome\
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
    hyprland-qtutils qt6-5compat qt6-declarative qt6-svg sddm --noconfirm 

elif [ "$resposta" == "n" ]; then
        # Executa o comando se a resposta for "não"
    echo "Você escolheu NÃO. Executando a ação B..."
echo
echo
echo    
    sudo pacman -Syu --noconfirm ; sudo pacman -S --needed\
    git wget unzip gum rofi wofi unrar okular gwenview\
    waybar swww dolphin dolphin-plugins ark firefox\
    swaync loupe xdg-desktop-portal xdg-desktop-portal-gnome\
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
    qt6-declarative qt6-svg --noconfirm

    #instalar o paru p/ter suporte ao aur.
echo
echo
echo
echo "Instalando o suporte ao aur-helper com paru"
echo
echo
echoo
    git clone https://aur.archlinux.org/paru-bin.git
    cd paru-bin
    makepkg -si --noconfirm
    cd ..
echo
echo
echo
    #Instalar pacotes do aur com paru 
echo "Por questões de segurança e falhas"
echo "eu opitei por confirmar manualmente todos os pacotes do aur"
echo
echo
    paru -S \
    wlogout \
    swayosd-git \
    waypaper \
    hyprswitch \
    qt5ct-kde \
    qt6ct-kde \
    grimblast \
    protonup-qt-bin \
    ventoy \
    obs-studio-tytan652 \
    obs-vkcapture \
    winff \
    droidcam \
    v4l2loopback-dc-dkms \
    google-chrome \
    brave-bin \
    stremio \
    opencl-amd \
    deckboard-bin \
    r-linux \
    heroic-games-launcher-bin \
    jamesdsp-pipewire-bin \
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

        #baixando as minhas configs

        #rodrigo_config

    URL="https://download843.mediafire.com/4z777ly48zmgCtZVLXUSCUr_XQe7M7NPqGlucVhy9nTUUoGVV5yPPGUJHn5hy-YCPa13lflZpmGeqY6YTcGYzGbI6LxBomJG-hqWaH81hSB2uqz0L_4MZrVNM8kbzxX362meyH2SUik9RhJCER91gUv-uVyhM_-xeVSkKjAS_C9W-l8/avq2wbf4lv7y1k5/rodrigo_configs.tar.gz"
    DIRETORIO="$HOME/"
    NOME_ARQUIVO="rodrigo_configs.tar.gz"
echo
echo
echo
        # Baixando o arquivo com wget
echo "Iniciando download..."
    wget -P "$DIRETORIO" "$URL" -O "$DIRETORIO/$NOME_ARQUIVO"

        # Verificando se o download foi concluído com sucesso
if [ $? -eq 0 ]; then
    echo "Download concluído com sucesso!"
    echo
    echo
    echo
        # Enviar uma notificação (se você estiver em um ambiente gráfico com o notify-send instalado)
    notify-send "Download Concluído" "O arquivo foi baixado com sucesso para $DIRETORIO/$NOME_ARQUIVO."
else
    echo "Houve um erro durante o download."
    echo
    echo
    echo
        # Enviar uma notificação de erro (se necessário)
    notify-send "Erro no Download" "Ocorreu um erro ao tentar baixar o arquivo."
fi

        #sddm.conf

    URL="https://download947.mediafire.com/txcayt28x0vgLmLsLk1x-v5aN8yk4l1-ytRetmYazE5i10oY5eSZAeoEzjsXgc7KApwRKgM5-QRf_FamAC0LtBaNspaScadbGAq8MblLH8TDUFKqevbpqDVtAcyW36umAtcaKCidTPDZpl4SZI-BXH6RJn4kr2jP7eHVVfkK88syQOQ/gg2xgdjnl5sr2uh/sddm.conf.tar.gz"
    DIRETORIO="$HOME/"
    NOME_ARQUIVO="sddm.conf.tar.gz"

        # Baixando o arquivo com wget
echo "Iniciando download..."
    wget -P "$DIRETORIO" "$URL" -O "$DIRETORIO/$NOME_ARQUIVO"

        # Verificando se o download foi concluído com sucesso
if [ $? -eq 0 ]; then
    echo "Download concluído com sucesso!"
    echo
    echo
    echo
        # Enviar uma notificação (se você estiver em um ambiente gráfico com o notify-send instalado)
    notify-send "Download Concluído" "O arquivo foi baixado com sucesso para $DIRETORIO/$NOME_ARQUIVO."
else
    echo "Houve um erro durante o download."
    echo
    echo
    echo
        # Enviar uma notificação de erro (se necessário)
    notify-send "Erro no Download" "Ocorreu um erro ao tentar baixar o arquivo."
fi

        #simple-sddm-2

    URL="https://download1648.mediafire.com/s3nsttf5y5vghX7MYSrXWG21PWuto2ovky2y_bK1NyrJn3cgcfQGnB5g0mZYCDb3Ye3xhtpj8xtjyIIvXSmn9PWV0fmMFSS-9tF8w4KPwFAnMOKgDCYRz0JSgiVxlb07fxSFDgjuftj0I9jWuI1MHYbyLys-EBF7J7Do2DmflirRSC4/8eb1z6m45kji9cu/simple-sddm-2.tar.gz"
    DIRETORIO="$HOME/"
    NOME_ARQUIVO="simple-sddm-2.tar.gz"

echo "Iniciando download..."
    wget -P "$DIRETORIO" "$URL" -O "$DIRETORIO/$NOME_ARQUIVO"

        # Verificando se o download foi concluído com sucesso
if [ $? -eq 0 ]; then
    echo "Download concluído com sucesso!"
    echo
    echo
    echo
        # Enviar uma notificação (se você estiver em um ambiente gráfico com o notify-send instalado)
    notify-send "Download Concluído" "O arquivo foi baixado com sucesso para $DIRETORIO/$NOME_ARQUIVO."
else
    echo "Houve um erro durante o download."
    echo
    echo
    echo
        # Enviar uma notificação de erro (se necessário)
    notify-send "Erro no Download" "Ocorreu um erro ao tentar baixar o arquivo."
fi

        #Extraindo nas suas localizações.
        #exemplo   tar -xzvf arquivo.tar.gz -C /caminho/para/a/pasta

    sudo tar -xzvf simple-sddm-2.tar.gz -C /usr/share/sddm/themes/
    sudo tar -xzvf sddm.conf.tar.gz -C /etc/
    tar -xzvf rodrigo_configs.tar.gz -C ~/.conf

    rm simple-sddm-2.tar.gz sddm.conf.tar.gz rodrigo_configs.tar.gz

echo "Vamos reiniciar sua maquina e estára pronta para uso"
echo "Obrigado"
echo
echo "Reiniciando" 
echo
echo
echo
        reboot -f

###################final do script #########################

else
    # Caso o usuário digite algo diferente
    echo "Resposta inválida! Por favor, digite 's' ou 'n'."
fi
 
else
  echo "Você não concordou. O script será encerrado."
  exit 1
fi




