# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If running interactively, then:
if [ "$PS1" ]; then

    # don't put duplicate lines in the history. See bash(1) for more options
    # export HISTCONTROL=ignoredups

    # check the window size after each command and, if necessary,
    # update the values of LINES and COLUMNS.
    #shopt -s checkwinsize

    # enable color support of ls and also add handy aliases
    if [ "$TERM" != "dumb" ]; then
	eval `dircolors -b`
	alias ls='ls --color=auto'
	#alias dir='ls --color=auto --format=vertical'
	#alias vdir='ls --color=auto --format=long'
    fi

    # some more ls aliases
    alias ls='ls --color=auto'
    #alias la='ls -A'
    #alias l='ls -CF'

    # this computer specific
    alias du='du -h'
    alias update='sudo /usr/bin/apt update'
    alias upgrade='sudo /usr/bin/apt upgrade'
    alias ins='sudo /usr/bin/apt install'
    alias remove='sudo /usr/bin/apt remove'
    alias autoremove='sudo /usr/bin/apt autoremove'
    alias dupgrade='sudo /usr/bin/apt dist-upgrade --no-remove'
    alias clean='sudo /usr/bin/apt clean'
    alias search='/usr/bin/apt search'
    alias add='vim ~/.reminders'
    alias rem='remind ~/.reminders'
    alias present-start='i810switch crt on'
    alias present-end='i810switch crt off'
    alias getip='sudo /sbin/dhclient3'
    alias findhome='find ~ -iname'
    alias findmydoc='find ~/doc -iname'
    alias finddoc='find /usr/share/doc -iname'
    alias ssp='ssh -p 2288 kcma@192.168.1.33 /etc/acpi/screenblank.sh'
    alias homepage='gvim ~/public_html/otherside.html'
    alias addref='gvim ~/doc/ref/references.bib'
    alias sys='gnome-system-monitor'
    alias we='weather -f jfk'
    alias scn='screen -e^gg'
    alias scx='screen -e^gg -x'
    alias mp='mplayer'
    alias mpn='mplayer -novideo'
    alias info='info --vi-keys'
    alias vi='vim'
    alias mdb='mount /dev/sdb1'
    alias umdb='umount /dev/sdb1'
    alias mda='mount /dev/sda1'
    alias mdvd='mount /dev/hdc'
    alias umdvd='umount /dev/hdc'
    alias umda='umount /dev/sda1'
    alias td='todo -G'
    alias tdag='tda -G'
    alias tdrg='tdr -G'
    alias tdeg='tde -G'
    alias tddg='tdd -G'
    alias lock='xtrlock'
    alias vpdf='apvlv'

    # general
    alias lynx='lynx -vikeys'
    alias j='jobs -l'
    alias d='pushd'
    alias pd='popd'
    alias di='dirs'
    alias R='R --no-save -q'
    alias tss='flameshot gui -d 2000'
    alias qi='qiv -w 1000'
    alias IR='ibus restart'


    #bind 'TAB:menu-complete'
    # set a fancy prompt
    #PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
    PS1='\[\e[0;32m\]${debian_chroot:+($debian_chroot)}\u@\h:\w \d \t \n\$\[\e[0m\] '

    # If this is an xterm set the title to user@host:dir
    case $TERM in
    xterm*)
        PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'
        ;;
    *)
        ;;
    esac

    # enable programmable completion features (you don't need to enable
    # this, if it's already enabled in /etc/bash.bashrc).
    if [ -f /etc/bash_completion ]; then
      . /etc/bash_completion
    fi
fi


# This line was appended by KDE
# Make sure our customised gtkrc file is loaded.
# (This is no longer needed from version 0.8 of the theme engine)
# (This is no longer needed from version 0.8 of the theme engine)
# export GTK2_RC_FILES=$HOME/.gtkrc-2.0

#rem
#fortune|cowsay -f $(~/lib/python/randomcow)

# added by Anaconda2 4.0.0 installer
export BSTINPUTS=$BSTINPUTS:/home/kcma/all/res/ref
export BIBINPUTS=$BIBINPUTS:/home/kcma/all/res/ref

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

case ":$PATH:" in
    *:/home/kcma/.juliaup/bin:*)
        ;;

    *)
        export PATH=/home/kcma/.juliaup/bin${PATH:+:${PATH}}
        ;;
esac

# <<< juliaup initialize <<<
