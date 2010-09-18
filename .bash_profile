export GEM_PATH=/System/Library/Frameworks/Ruby.framework/Versions/Current/usr/lib/ruby/gems/1.8/gems

export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH="/usr/local/bin:/usr/local/sbin:/Users/aenima/homebrew/bin:/Users/aenima/bin/:/usr/local/mysql/bin:$PATH"
export PATH="/data/db/mongo/bin:/Developer/SDKs/flex_sdk_4/bin:$PATH"

export GEM_PATH="/usr/local/lib/ruby/gems/1.8:/Users/aenima/.gem/ruby/1.8:$GEM_PATH"
export GEM_HOME="/usr/local/lib/ruby/gems/1.8"

alias go-codementory="cd /Users/aenima/projects/codymentory"
alias ls="ls -G"
alias qrss="ruby script/server"
alias qrsc="ruby script/console"

export GIT_EDITOR='mvim -f -c"au VimLeave * !open -a Terminal"'
# alias qgs="git status"
# alias qgc="git commit -m"
# alias qgl="git log"
# alias qgd="git diff"
# alias qrld="tail -f log/development.log"
# alias qrlp="tail -f log/production.log"
# alias qrlc="tail -f log/cucumber.log"
# alias qrlt="tail -f log/test.log"
# alias qcf="cucumber features/"
alias qqp="/Applications/Preview.app/Contents/MacOS/Preview"
##
# Your previous /Users/aenima/.bash_profile file was backed up as /Users/aenima/.bash_profile.macports-saved_2010-01-29_at_23:02:01
##

# MacPorts Installer addition on 2010-01-29_at_23:02:01: adding an appropriate PATH variable for use with MacPorts.

# Finished adapting your PATH environment variable for use with MacPorts.

if [[ -s /Users/aenima/.rvm/scripts/rvm ]] ; then source /Users/aenima/.rvm/scripts/rvm ; fi


###############
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function proml {
  local        BLUE="\[\033[0;34m\]"
  local         RED="\[\033[0;31m\]"
  local   LIGHT_RED="\[\033[1;31m\]"
  local       GREEN="\[\033[0;32m\]"
  local LIGHT_GREEN="\[\033[1;32m\]"
  local       WHITE="\[\033[1;37m\]"
  local  LIGHT_GRAY="\[\033[0;37m\]"
  case $TERM in
    xterm*)
    TITLEBAR='\[\033]0;\u@\h:\w\007\]'
    ;;
    *)
    TITLEBAR=""
    ;;
  esac

# DEFAULT
# PS1="${TITLEBAR}\
# $BLUE[$RED\$(date +%H:%M)$BLUE]\
# $BLUE[$RED\u@\h:\w$GREEN\$(parse_git_branch)$BLUE]\
# $GREEN\$ "
# PS2='> '
# PS4='+ '
# }
# proml

PS1="${TITLEBAR}\
$BLUE[$RED\u:\w$GREEN\$(parse_git_branch)$BLUE]\
$GREEN\$ "
PS2='> '
PS4='+ '
}
proml

###############


#
#
# Rake Autocomplete
#
#export COMP_WORDBREAKS=${COMP_WORDBREAKS/\:/}
#
#_rakecomplete() {
#  COMPREPLY=($(compgen -W "`rake -s -T 2>/dev/null | awk '{{print $2}}'`" -- ${COMP_WORDS[COMP_CWORD]}))
#  return 0
#}
#
#_capcomplete() {
#  COMPREPLY=($(compgen -W "`cap  -T  2>/dev/null| awk '{{ if ( $3 ~ /\#/ ) print $2}}'`" -- ${COMP_WORDS[COMP_CWORD]}))
#  return 0
#}
#
#_thorcomplete() {
#  COMPREPLY=($(compgen -W "`THOR_COLUMNS=1000 thor -T 2>/dev/null| awk '{{ if ( $2 ~ /./ ) print $2}}'`" -- ${COMP_WORDS[COMP_CWORD]}))
#  return 0
#}
#
#complete -o default -o nospace -F _rakecomplete rake
#complete -o default -o nospace -F _capcomplete cap
#complete -o default -o nospace -F _thorcomplete thor
#




complete -C ~/.bash/rake_autocomplete -o default rake
source ~/.git-completion.bash




