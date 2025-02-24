# zsh

## 1- Configuración de ZSH

Ingreasamos el comando zsh para que nos solicite la configuracion de nuestra terminal

```bash
zsh
```

Dentro seleccionaremos las siguientes opciones por cada opción en el menu:

- 1: 0, no cambiaremos nada
- 2: opcion 1 
- 3: opcion 1 luego seleccionar v
- 4: presionar 0 para salir sin guardar

Luego seleccionamos la opcion 0 para guardar los cambios y salir. Ahora vamos a editar el archivo *~/.zshrc* y vamos a agregar lo siguiente

```bash
#  Prompt ZSH
autoload -Uz promptinit
promptinit
```

## 2- instalar ohmyzsh

Con esto listo procedemos a instalar ohmyzsh, este nos preguntara si queremops configurar Zsh como nuestra shell por defecto y diremops que si. 

```bash
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## 2.1- Agregar Plugins

Para ver los plugins varmos a utilizar los siguientes  comandos:

```bash
ls ~/.oh-my-zsh/plugins

```

Ahora agregaremos en nuestro zshrc lo siguiente que activara el plugin especifico para archlinux:


```bash
# Add wisely, as too many plugins slow down shell startup.
plugins=(git archlinux)

source $ZSH/oh-my-zsh.sh

```

## 2.2- Agregar Plugins de terceros


para agregar syntax highlightning vamos a instalar lo siguiente

```bash

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

```

finalmente agregaremos el siguiente texto en el archivo zshrc

```bash
# Add wisely, as too many plugins slow down shell startup.
plugins=(git archlinux zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

```
Ahroa instalaremos las sugerencias vamos a utilizar el siguiente comando 

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```


Ahora vamos a agregar el plugin nuevo a nuestro archivo zshrc

```bash
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git archlinux zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
```

Ahora vamos a instalar los fonts para nuestro nuevo tema, estos se encuentran en AUR por lo que vamos a utilziar yay en nuestro caso. 

```bash
yay -S ttf-dejavu ttf-meslo-nerd-font-powerlevel10k
```
Ahora vamos a instalar 10k 


```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

finalmente vamos ahora a ir a nuestro archivo de configuraciones y vamos a agregar nuestro tema y vamos a cambiar la fuente de nuestra terminal para evitar problemas a la hora de aplicar el tema, utilizaremos  y de paso vamos a agreewgar /bin/zsh para el defecto de nuestro perfil de consola 


```bash
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
```
y con esto estara listo
