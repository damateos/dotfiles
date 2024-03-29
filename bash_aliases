## Alias de directorios y navegación
#Directorios
#alias nombre='cd ruta_directorio_habitual'
alias td='cd $HOME/todo'

#Facilitar navegación
alias ..="cd .."                 # subir un directorio
alias ..2="cd ../.."             # subir dos directorios
alias ..3="cd ../../.."          # subir tres directorios
alias ..4="cd ../../../.."       # subir cuatro directorios
alias ..5="cd ../../../../.."    # subir cinco directorios

alias ..="cd .."                 # subir un directorio
alias ...="cd ../.."             # subir dos directorios
alias ....="cd ../../.."          # subir tres directorios
alias .....="cd ../../../.."       # subir cuatro directorios
alias ......="cd ../../../../.."    # subir cinco directorios

# ls
alias lsd="ls -l | grep '^d'"
alias ll="ls -lAhF"
alias lst='ls -lah'

alias proceso='ps -ef | grep'

##Cambiar el prompt
alias ps_normal='PS1="\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\u@\h:\w\$"'
alias ps_corto='PS1="\u:/\W/\$ "'
alias ps_largo='PS1="\e[33m{$(date)}\e[0m\e[1;36m[\j]\e[0m\e[1;32m<$?>\e[0m\e[2;36m(\u\e[0m@\e[1;34m\w)\e[0m\n\$>"'
# {fecha} [n_tareas en background] <código retorno comando anterior> (usuario@ruta_directorio)

ps_git='[\u: \W$(__git_ps1 " (%s)")]\$ ' #uso: PS1=$ps_git utiliza https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh


alias recargar='source ~/.bashrc'   # Recargar perfiles
alias cambiar_alias='$EDITOR $HOME/.bash_aliases'
alias buscar_ap='apt-cache search'
alias mostrar_ap='apt-cache show'

## información del sistema
alias informacion='uname -a; lsb_release -a; cat /etc/issue'  
alias get_ip='echo `hostname` `hostname -i` `dig +short +time=1 myip.opendns.com @resolver1.opendns.com`'

## Programas

# batcat
alias bat='batcat'


#Alias imagemagick
# Recorta una captura de pantalla del navegador (cambiar las medidas para ajustarlas a la pantalla)
alias recorte_nav='convert -crop 1347x575+0+90 -resize 50%'

alias reducir_pdf='gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile'
alias reducir_pdf_max='gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile'

# Borrar archivos `.DS_Store`
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

#TODO
alias t='todo.sh -d $HOME/todo/todo.cfg'
alias ver_todo='$EDITOR $HOME/todo/todo.txt'
alias ver_done='$EDITOR $HOME/todo/done.txt'

## Jekyll
alias jserver='bundle exec jekyll server --config _config.yml,_config_dev.yml'
alias jprod='bundle exec jekyll clean; JEKYLL_ENV=production bundle exec jekyll build'

##  Python
alias pserver='python -m SimpleHTTPServer'

# Wget
alias descargar_directorio='wget -r -np -k'

# YUI
alias yui='java -jar ~/bin/yuicompressor-2.4.8.jar'

# Flameshot 
alias flame='flameshot gui -d 3000'

##Alias de git
alias st='git status'
alias co='git checkout'
alias cob='git checkout -b'
alias ci='git commit -m'
alias cia='git commit -a -m'
alias br='git branch'
alias push='git push'
alias pushom='git push origin master'
alias add='git add'
alias nuevo="git log HEAD@{1}..HEAD@{0}" # Muestra commits desde el último pull
alias try_merge="git merge --no-commit --no-ff"
# Sincronizar un fork
alias sinc1="git fetch upstream"
alias sinc2="git checkout master"
alias sinc3="git merge upstream/master"
# Añade al último commit los cambios uncommitted y unstaged
alias gcaa="git commit -a --amend -C HEAD"
alias deshacer_ci='git reset --soft HEAD~1'
#log de cambios
alias cambios='git log --date-order --date=short --graph --full-history --all --pretty=format:"%h - %ad - %s"'
alias cambios_autor='git log --date-order --date=short --graph --full-history --all --pretty=format:"%h - %ad - %an - %s"'
