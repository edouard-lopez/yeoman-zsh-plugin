#Yeoman plugin for Oh My ZSH

This is a [Yeoman](http://yeoman.io/) plugin for [Oh My ZSH](https://github.com/robbyrussell/oh-my-zsh) with command line aliases and zsh autocomplete functions.

##Installation

1. In the command line, navigate to the folder:

    ```
    cd ~/.oh-my-zsh/custom/plugins/
    ```
2. Clone the repository into a new folder called `yeoman`:

    ```
    git clone https://github.com/sayanee/yeoman-oh-my-zsh.git yeoman
    ```
3. In your `~/.zshrc`, add `yeoman` to the list of plugins to load:

    ```
    ...
    plugins=(git nanoc yeoman)
    ...
    ```
4. Restart your command line application

##Features

1. Common aliases with prefix `ym` for `yeoman`:

    ```
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
    ```
2. You can also tab your way into the various commands with zsh autocomplete functions that comes with this plugin:
    - commond commands

        ```
        $ yeoman <tab>
        build      -- Build an optimized version of your app, ready to deploy
        init       -- Initialize and scaffold a new project using generator templates
        install    -- Install a package from the client-side package registry
        list       -- List the packages currently installed
        lookup     -- Look up info on a particular package
        search     -- Query the registry for matching package names
        server     -- Launch a preview server which will begin watching for changes
        test       -- Run a Mocha test harness in a headless PhantomJS
        uninstall  -- Uninstall the package
        update     -- Update a package to the latest version
        ```
    - common generators
    
    
        ```
        $ yeoman init <tab>
        angular        bbb            ember          generator      quickstart   
        backbone       chromeapp      ember-starter  mocha          testacular 
        ```