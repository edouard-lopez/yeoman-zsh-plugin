# Location of this plugin
__yeoman_pluginDir="$(dirname "$0")"
export __yeoman_pluginDir
. "$__yeoman_pluginDir"/helpers_yo


# Get the list of global generator and store it in a file
(__yo_setGlobalGenerators &)



# ALIAS
alias ymget='npm install -g yo grunt-cli bower'

alias ym='yo help'
alias ymv='yo --version'

alias ymi='yo'
alias ymb='grunt build'
alias ymsv='grunt server'
alias ymsd='grunt server:dist'
alias ymst='grunt server:test'
alias ymt='grunt test'
alias ymii='bower install'
alias ymui='bower uninstall'
alias ymu='bower update'
alias yml='bower list'
alias yms='bower search'
alias ymlu='bower lookup'

# new alias for Yoeman >=1.0 (using 'grunt' and 'bower')
alias grb='grunt build'
alias grsv='grunt server'
alias grsd='grunt server:dist'
alias grst='grunt server:test'
alias grt='grunt test'

alias bwii='bower install'
alias bwui='bower uninstall'
alias bwu='bower update'
alias bwl='bower list'
alias bws='bower search'
alias bwlu='bower lookup'
