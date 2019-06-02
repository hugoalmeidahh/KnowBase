# Linux -> Show branch name in terminal

> add in your .bashrc follow code:

```bash
is_git(){
    str=` git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
    if [ "$str" != "" ]; then
    if [ ! -z "$(git status --porcelain 2>/dev/null)" ]; then
        str=" (!"$str")"
    else
        str=" ("$str")"
    fi
    echo $str
    fi
}

### Long version
PS1='${debian_chroot:+($debian_chroot)}\[\033[38;5;11m\]\t\[$(tput sgr0)\] \[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[38;5;196m\] $(is_git)\[\033[00m\]\$ '

### Shorter version, without username@hostname
#PS1='${debian_chroot:+($debian_chroot)}\[\033[38;5;11m\]\t\[$(tput sgr0)\] \[\033[01;32m\]\w\[\033[38;5;196m\] $(is_git)\[\033[00m\]\n\$ '

PROMPT_COMMAND='(( PROMPT_CTR-- < 0 )) && {
  echo
  unset PROMPT_COMMAND PROMPT_CTR
  PROMPT_COMMAND=echo
}'

```
