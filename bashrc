# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

DISPLAY=:0.0
PATH="$PATH:~/Dropbox/Scripts"
PATH="$PATH:~/JML/bin"
PATH="$PATH:/usr/local/share/android-sdk-linux_86/tools/"
EDITOR=vi; export EDITOR
complete -W http://www.google.com/ firefox
CDPATH=$HOME
export KMIX_PULSEAUDIO_DISABLE=1

alias wifi='/home/rap/Dropbox/Scripts/wifi/wifi'
alias mp3carol="ls *.mp3 | while read  FILE; do mpg123 $FILE; done"


# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
xterm-color)
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
    ;;
*)
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
    ;;
esac

# Comment in the above and uncomment this below for a color prompt
#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'
    ;;
*)
    ;;
esac

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

#if [ -f ~/.bash_aliases ]; then
#    . ~/.bash_aliases
#fi

# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    #alias dir='ls --color=auto --format=vertical'
    #alias vdir='ls --color=auto --format=long'
fi

# some more ls aliases
#alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi


alias apt-upgrade='apt-get update; apt-get upgrade -y'

JAVA_HOME="/usr/lib/jvm/java-6-sun"

# http://publicobject.com/2005/05/stupid-bash-tricks-open-file.html
alias fopen='find . -iname "*$1*" -print0 | xargs -0i bash -c "echo {} && open {}"'
alias t='~/Scripts/todo.sh'

OPENJML="/home/rap/Downloads/jml-20090502"
alias openjml='java -jar $OPENJML/openjml.jar -classpath . '
alias openjmldoc='java -classpath $OPENJML/openjml.jar org.jmlspecs.openjml.jmldoc.Main '

JMLDIR="/usr/local/JML"
# PATH=$PATH:$JMLDIR/bin

CLASSPATH="${JMLDIR}/bin/jml-release.jar:${JMLDIR}/specs:${CLASSPATH}"

alias jmlc2='java -Xms64m -Xmx128m org.jmlspecs.jmlrac.Main -Q'

alias jmlrac2:='java -Xbootclasspath/a:$JMLDIR/bin/jmlruntime.jar'

alias prueba='ls; sleep 100'

alias jsdoc="java -jar
/home/rap/jsdoc_toolkit-2.3.2/jsdoc-toolkit/jsrun.jar"
alias google-chrome=" google-chrome --enable-extension-timeline-api"
alias listening="netstat -lnptu"
alias freeinodes="tune2fs -l /dev/sda1 | grep Free"

echo ""
#echo "                   ##############"
#echo "                    ############"
#echo "                     ##########"
#echo "                      ########"
#echo "                       \$\$\$\$\$\$"
#echo "                       \$\$\$\$\$\$"
echo "                       ######"
echo "                      ########"
echo "                     ##########"
echo "                     ## #### ##"
echo "                     ### ## ###"
echo "                     ####  ####     Esto es realmente util?"
echo "                     ##########"
echo "                     ####  ####"
echo "                     ####  ####"
echo "                     ####  ####     Sólo una cosa a la vez!! "
echo "                     ##########"
echo "                     ##      ##"
echo "                     ##  ##  ##"
echo "                     ##      ##     Haz algo que puedas acabar hoy!!! "
echo "                     ##########"
echo "                       ######"
echo "                         ##"


