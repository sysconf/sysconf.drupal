# Common bash.bashrc code (sysconf.nef.common)          -*- shell-script -*-
#
# /etc/profile  -  Fichier de demarrage du bash interactif
#		   commun à tous les utilisateurs
#
# Créé en Janvier 2002 par Jean-François Gigand
#

# Fonctions

#source /usr/share/emacs/current/etc/emacs.bash

# Shell prompt and options
################

export HISTTIMEFORMAT='%F %T '
export MC_SKIN=dark

# set a fancy prompt
case "$TERM" in
        # xterm-color)
xterm*)
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\H\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
    ;;
*)
    PS1='${debian_chroot:+($debian_chroot)}\u@\H:\w\$ '
    ;;
esac

shopt -s dirspell  # corrections mineures auto pour autocompl des rep.
#shopt -s failglob  # erreur si glob ne trouve pas de fichier
shopt -s globstar  # autoriser les "**"
shopt -s histverify
shopt -s hostcomplete
# extglob(on) force_ignore(on) FIGNORE
# nullglob

#. /etc/bash_completion
# Source http://blog.lefebvrepe.com/post/2008/05/08/Centos-5:-Activer-lauto-completion
# enable custom tab completion
#shopt -s progcomp


# Aliases / helper functions
################

alias l='ls -lh --color=auto'
alias df="df -h"
alias pstree="pstree -hGncp"
alias ps="ps aux"
alias dus='du -x 2>/dev/null | grep -v ".*/.*/.*" | sort -n'
alias xls='lxc-ls -f'
alias xstart='lxc-start -d -n'
alias xstop='lxc-stop -n'
xat() {
    lxc-attach --clear-env -n "$1" -- env USER=root HOME=/root TERM="$TERM" bash -l
}
