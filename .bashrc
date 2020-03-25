export PATH=/bin:/usr/bin:/usr/local/bin:$PATH:~/AppData/Local/hyper/app-3.0.2/resources/bin

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\033]0;$TITLEPREFIX:$PWD\007\]\n\[\033[31m\]robert\[\033[0m\] \[\033[33m\]\w\[\033[36m\]\$(parse_git_branch)\[\033[0m\] $ "

alias ll='ls -la'
alias open='explorer'
alias edit='"C:\Program Files\Sublime Text 3\sublime_text.exe" -a'
alias sublime='"C:\Program Files\Sublime Text 3\sublime_text.exe" -a'

alias bashedit='edit ~/.bashrc; echo "Reloading .bash_profile.."; source ~/.bash_profile; echo "Success!";'
alias bashreload='source ~/.bash_profile'
alias hosts='edit /etc/hosts'

alias git-undo='git reset --soft HEAD~'
alias git-redo='git reset HEAD@{1}'

alias gitedit='edit ~/.gitconfig'