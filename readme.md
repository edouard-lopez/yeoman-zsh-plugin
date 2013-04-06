# Yeoman plugin for Oh My ZSH

This is a [Yeoman](http://yeoman.io/) plugin for [Oh My ZSH](https://github.com/robbyrussell/oh-my-zsh), compatible with `yeoman` version `≥1.0`. It provide command line aliases and zsh *autocomplete functions*.

This version is a full revamp of [@sayanee/yeoman-oh-my-zsh](sayanee/yeoman-oh-my-zsh)  original plugin (for version `≤0.9.6`).

## Installation

1. In the command line, navigate to the folder:

    ```
    cd ~/.oh-my-zsh/custom/plugins/
    ```
2. Clone the repository into a new folder called `yeoman`:

    ```
    git clone https://github.com/sayanee/yeoman-oh-my-zsh.git yeoman
    ```

## Configuration

1. Edit your `~/.zshrc` and add `yeoman` to the list of plugins to load:

    ```
    plugins=( ... yeoman )
    ```

2. Then, restart your command line application. Alternatively, you can source your current shell to see changes :

    ```
    source ~/.zshrc
    ```

## Commands Completion

You can use `zsh` completion by typing `tab` after the three commands `yo`, `bower` and ~~`grunt`~~ and get some insight of the possibility:

### `yo` completion

* List installed generators :

    ```
    $ yo<tab>
    ember                                     -- Ember - JavaScript Application Framework
    generator-angular                         -- Yeoman generator for AngularJS
    generator-backbone-amd                    -- generator-backbone-amd
    generator-bootstrap                       -- Yeoman generator for Twitter Bootstrap
    generator-karma                           -- Yeoman generator for Karma
    generator-mocha         generator-mocha   -- Yeoman generator for Mocha
    generator-testacular                      -- Yeoman generator for Testacular
    generator-webapp        generator-webapp  -- Default Yeoman generator for scaffolding out a front-end web app
    yeoman-generator        yeoman-generator  -- Rails-inspired generator system that provides scaffolding for your apps
    ```

 * List of options :

    ```
    $ yo -<tab><tab>
    --help                  -- show the help message and quit
    --version               -- show version information and quit
    ```

### `bower` completion

* List of subcommands :

    ```
    $ bower<tab>
    cache-clean      -- Cleans all the bower cache or the specified packages cache
    completion       -- Tab Completion for bower
    info             -- Version info and description of a particular package.
    init             -- Creates a component.json file based on answers to questions
    install          -- Installs a browser package locally into a components directory
    link             -- The link functionality allows developers to easily test their packages. Linking is a two-step process.
    list         ls  -- Lists all packages
    lookup           -- Looks up a package url by name
    register         -- Register a package.
    search           -- Finds all packages or a specific package.
    uninstall        -- Uninstalls a browser package locally from your components directory
    update           -- Refreshes a package install
    ```
* List of options are available both for top level and subcommands :

    ```
    $ bower<tab>
    --help                  -- Show the help message and quit
    --no-color              -- Do not print colors (available in all commands)
    --version               -- Show version information and quit
    ```

* Subcommand options:

```
$ bower list<tab><tab>
--help                  -- Show the help message and quit
--map                   -- Generates a deep dependency JSON source mapping
--no-color              -- Do not print colors (available in all commands)
--offline               -- Avoid checking for newer versions
--paths                 -- Generates a simple JSON source mapping
--sources               -- Generates list of source files in order of dependency
--version               -- Show version information and quit
```


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