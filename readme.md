# Yeoman plugin for (Oh My) ZSH

This is a [Yeoman](http://yeoman.io/) plugin for [Oh My ZSH](https://github.com/robbyrussell/oh-my-zsh), **compatible with _yeoman_ version `≥1.0`**. It provides:
* aliases ;
* **zsh autocomplete** functions and options.

`Note:` originally a fork of [@sayanee/yeoman-oh-my-zsh](sayanee/yeoman-oh-my-zsh) (for version `≤0.9.6`). It's has since been _fully redesign_ to work with yeoman `≥v1.0`.

## Installation

1. In the command line, change to _oh-my-zsh_'s directory :

    ```
    cd ~/.oh-my-zsh/custom/plugins/
    ```
2. Clone the repository into a new into `yeoman` directory:

    ```
    git clone git@github.com:edouard-lopez/yeoman-zsh-plugin.git yeoman
    ```

## Configuration

1. Edit your `~/.zshrc` and add `yeoman` – same as clone directory– to the list of plugins to enable:

    ```
    plugins=( ... yeoman )
    ```

2. Then, restart your terminal application to **refresh context** and use the plugin. Alternatively, you can source your current shell configuration:

    ```
    source ~/.zshrc
    ```

## Commands Completion

You can use `zsh` completion by typing `tab` after the three commands `yo`, `bower` and ~~`grunt`~~ and get some insight of the possibility:

### `yo` completion

#### List installed generators

```bash
$ yo<tab>
angular            -- Yeoman generator for AngularJS
backbone-amd       -- generator-backbone-amd
bootstrap          -- Yeoman generator for Twitter Bootstrap
karma              -- Yeoman generator for Karma
mocha              -- Yeoman generator for Mocha
webapp             -- Default Yeoman generator for scaffolding out a front-end web app
```

#### List of options

```bash
$ yo -<tab><tab>
--help             -- show the help message and quit
--version          -- show version information and quit
```

### `bower` completion

#### List of subcommands :

```bash
$ bower<tab>
cache-clean        -- Cleans all the bower cache or the specified packages cache
completion         -- Tab Completion for bower
info               -- Version info and description of a particular package.
init               -- Creates a component.json file based on answers to questions
install            -- Installs a browser package locally into a components directory
link               -- The link functionality allows developers to easily test their packages. Linking is a two-step process.
list         ls    -- Lists all packages
lookup             -- Looks up a package url by name
register           -- Register a package.
search             -- Finds all packages or a specific package.
uninstall          -- Uninstalls a browser package locally from your components directory
update             -- Refreshes a package install
```

#### List of options are available both for top level and subcommands :

```bash
$ bower<tab>
--help             -- Show the help message and quit
--no-color         -- Do not print colors (available in all commands)
--version          -- Show version information and quit
```

#### Subcommand options:

```bash
$ bower list<tab><tab>
--help             -- Show the help message and quit
--map              -- Generates a deep dependency JSON source mapping
--no-color         -- Do not print colors (available in all commands)
--offline          -- Avoid checking for newer versions
--paths            -- Generates a simple JSON source mapping
--sources          -- Generates list of source files in order of dependency
--version          -- Show version information and quit
```

### `grunt` completion

    todo

## Aliases (for _yeoman_)

Old aliases have been updated to *use new yeoman's `≥1.0` commands*, i.e. `yo`, `bower`, `grunt` :

* `ym...` prefix stand for `yeoman`:

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
    ```

## Aliases (for _grunt_ and _bower_)

**New aliases**  have been added to be **more intituive** with yeoman version `≥1.0` commands (i.e. `yo`, `bower` and `grunt`). They respectly use the following prefixes:

### `g...` for `grunt` commands :

```bash
# new alias for Yoeman ≥1.0 (using 'grunt' and 'bower')
alias grb='grunt build'
alias grsv='grunt server'
alias grsd='grunt server:dist'
alias grst='grunt server:test'
alias grt='grunt test'
```

### `bw...` for `bower` commands.

```bash
alias bwii='bower install'
alias bwui='bower uninstall'
alias bwu='bower update'
alias bwl='bower list'
alias bws='bower search'
alias bwlu='bower lookup'
```
