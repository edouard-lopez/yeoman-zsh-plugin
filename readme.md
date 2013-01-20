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
3. Include `yeoman` plugin to your `.zshrc` file along with other plugins:
    
    ```
    ...
    plugins=(git nanoc yeoman)
    ...
    ```
4. Restart your command line application

##Features

1. Common aliases with prefix `ym` for `yeoman`:

    ```
    alias ymget='curl -L get.yeoman.io | bash'

    alias ym='yeoman help'
    alias ymv='yeoman --version'
    
    alias ymi='yeoman init'
    alias ymb='yeoman build'
    alias ymsv='yeoman server'
    alias ymsd='yeoman server:dist'
    alias ymst='yeoman server:test'
    
    alias ymt='yeoman test'
    alias ymii='yeoman install'
    alias ymui='yeoman uninstall'
    alias ymu='yeoman update'
    alias yml='yeoman list'
    alias yms='yeoman search'
    alias ymlu='yeoman lookup'
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