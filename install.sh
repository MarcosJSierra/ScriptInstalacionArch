#!/bin/bash

menu="================================================="
opcion="Ingresar Opción: "
echo $menu
echo "Actualizando repositorios"
sudo pacman -Sy

salir=1

while [ $salir -eq 1 ]
do
    echo $menu
    echo "#   Aplicaciones a instalar: "
    echo "#   1: Java" 
    echo "#   2: Navegador Web"
    echo "#   3: Python"
    echo "#   4: Fonts"
    echo "#   5: yay"
    echo "#   6: ZSH"
    echo "#   7: Sistema"
    echo "#   8: Otros" 
    echo $menu

    echo -n $opcion
    read a 

    if [ $a -eq 1  ] 
    then
        echo "#   1: Java 21" 
        echo "#   2: java 17"
        echo "#   3: Maven"
        echo $menu
        echo -n $opcion
        read b
        if [ $b -eq 1 ]
        then
            sudo pacman -S jdk21-openjdk  openjdk21-doc jre21-openjdk openjdk21-src
        elif [ $b -eq 2 ]
        then
            sudo pacman -S jdk17-openjdk  openjdk17-doc jre17-openjdk openjdk17-src    
        elif [ $b -eq 3 ]
        then
            sudo pacman -S maven    
        fi

    elif [ $a -eq 2 ]
    then
        echo "#   1: Firefox"
        echo "#   2: Opera"
        echo $menu
        echo -n $opcion 
        read b

        if [ $b -eq 1 ]
        then

            sudo pacman -S firefox

        elif [ $b -eq 2]
        then 

            sudo pacman -S opera
        fi
    elif [ $a -eq 3 ]
    then
        sudo pacman -S python

    elif [ $a -eq 4 ]
    then
        echo "Sin implementar"
    elif [ $a -eq 5 ]
    then

        echo "#   1: Instalación YAY"
        echo "#   2: Instalación Chrome"
        echo "#   2: Instalación Slack"
        echo "#   2: Instalación Postman"
        echo $menu
        echo -n $opcion
        read b

        if [ $b -eq 1 ]
        then
            echo $menu
            sudo pacman -S base-devel git
            cd ~/
            git clone https://aur.archlinux.org/yay.git 
            cd yay
            makepkg -si
            echo $menu
        fi 
        
    elif [ $a -eq 6 ]
    then
        echo $menu
        echo "#   1: Instalar ZSH"
        echo "#   2: Instalar OhMyZsh"
        echo "#   3: Instalar Plugins y tema PowerLevel10k"
        echo "#   4: Instalar Fonts"
        echo "#   5: Upgrade oh my zsh"
        echo $menu

        echo -n $opcion
        read b
        echo $menu
        if [ $b -eq 1 ]
        then
            sudo pacman -S zsh zsh-completions git wget
        elif [ $b -eq 2 ]
        then
            sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

        elif [ $b -eq 3 ]
        then
            git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
            git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
            git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
        elif [ $b -eq 4 ]
        then
            yay -S ttf-dejavu ttf-meslo-nerd-font-powerlevel10k

        elif [ $b -eq 5 ]
        then
            upgrade_oh_my_zsh
        fi
        
    elif [ $a -eq 7 ]
    then
        echo $menu
        echo "#   1: OpenSSH"
        echo $menu

        
        echo -n $opcion
        read b

        if [ $b -eq 1 ]
        then
            sudo pacman -S openssh
        fi 
    elif [ $a -eq 7 ]
    then
        echo $menu
        echo "#   1: Telegram"
        echo "#   2: Discord"
        echo $menu

        
        echo -n $opcion
        read b

        if [ $b -eq 1 ]
        then
            sudo pacman -S openssh
        fi 
    fi
    echo $menu
    echo "#   1: Instalar Otro"
    echo "#   2: Salir"
    echo -n $opcion
    read salir
    echo $menu

done
