## Alias de directorios y navegación
#Directorios
#alias nombre='cd ruta_directorio_habitual'

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

alias proceso='ps -ef | grep'

##Cambiar el prompt
alias ps_normal='PS1="\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\u@\h:\w\$"'
alias ps_corto='PS1="\u:/\W/\$ "'
alias ps_largo='PS1="\e[33m{$(date)}\e[0m\e[1;36m[\j]\e[0m\e[1;32m<$?>\e[0m\e[2;36m(\u\e[0m@\e[1;34m\w)\e[0m\n\$>"'
# {fecha} [n_tareas en background] <código retorno comando anterior> (usuario@ruta_directorio)

ps_git='[\u: \W$(__git_ps1 " (%s)")]\$ ' #uso: PS1=$ps_git utiliza https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh


alias recargar='source ~/.bashrc'
alias instalar='sudo apt-get install'
alias reinstalar='sudo apt-get --reinstall install'
alias buscar_ap='apt-cache search'
alias mostrar_ap='apt-cache show'
alias actualizar='sudo apt-get install --only-upgrade'
alias desinstalar='sudo apt-get remove --purge'

## Programas 

#Alias imagemagick 
# Recorta una captura de pantalla del navegador
alias recorte_nav='convert -crop 1347x575+0+90 -resize 50%'  

# Borrar archivos `.DS_Store`
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

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
# Añade al último commit los cambios uncommitted y unstaged
alias gcaa="git commit -a --amend -C HEAD"
alias deshacer_ci='git reset --soft HEAD~1'
#log de cambios
alias cambios='git log --date-order --date=short --graph --full-history --all --pretty=format:"%h - %ad - %s"'
alias cambios_autor='git log --date-order --date=short --graph --full-history --all --pretty=format:"%h - %ad - %an - %s"'