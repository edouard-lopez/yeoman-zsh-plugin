# Location of this plugin
__yeoman_pluginDir="$(dirname "$0")"
# location of generator-list file
__yeoman_generatorListFile="$__yeoman_pluginDir"/generators-list.txt

# @description fetch local (if a directory if given) or global generators
# @param    $1|$workingDir  working directory for local generator look-up
# @return    stream
__yo_getGlobalGenerators() {
  pluginDir="$1"

  npm list --global --parseable 2> /dev/null \
      | grep '/generator-[^/]*$' \
      | while read line; do basename "$line"; done \
      | sort -u \
  > "$__yeoman_generatorListFile"

  chmod u=rw,g=r,o= "$__yeoman_generatorListFile"
}

# Get the list of global generator and store it in a file
(__yo_getGlobalGenerators "$__yeoman_pluginDir" &)



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
