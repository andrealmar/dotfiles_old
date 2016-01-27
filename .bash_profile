
# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# Git branch in prompt.

parse_git_branch() {

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}

# Tell ls to be colourful
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad
 
# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

	
export TERM="xterm-color"
PS1='\[\e[0;33m\]\u\[\e[0m\]🔰 \[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[1;31m\]$(parse_git_branch)\[\e[1;37m ⚡️  '


