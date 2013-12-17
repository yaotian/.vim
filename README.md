Yaotian's Vim config
==================


## Installation

    curl -L https://raw.github.com/yaotian/.vim/master/install.sh|bash

## hot tips

* ,ee   # to open vimrc file
* ,zz   # to open markdown document folder
* ,n   # to open file list
* ,t   # to open function list
* ,q   # to quickly quite
* ,a   # to search
* ,j   # to check javascript using jshint
* F    # format the python codes


* ,w -> Beginning of the word.
* ,f + `{char}` -> Find {char} to the right.


* gs  # to git status
* ga  # to git add
* gc  # to git commit
* gp  # to git push origin master

## Code Completions

Such as completions for variable names and function names(neocomplcache), expanding snippets(snipMate), auto closing brackets/brace/quote(vim-smartinput) and fast expand expressions to HTML(ZenCoding).

* [neocomplcache](http://github.com/Shougo/neocomplcache) - Ultimate auto completion system for Vim.
* [ZenCoding](http://github.com/mattn/zencoding-vim) - High speed HTML and CSS coding.
* [UltiSnips]() -- A goodl snipMate replacement

### Shortcuts

* `Tab`  -> Rotate across the completion list
* `Tab` -> Expand snippets or jump to the next placeholder of snippet
* `shift + Tab` -> This is really the Tab
* `Ctrl` + `j` -> Call zen-coding expansion on html tags
* `Ctrl` + `tab` -> Call ultimate snippets list
* `Ctrl` + `j` -> Call zen-coding expansion on html tags

### Dependencies

Compile Vim with `--enable-pythoninterp` and `--enable-rubyinterp` to enable powerful syntax completion supplied by neocomplcache.

``` bash
brew install macvim --override-system-vim  # OS X
yaourt -S gvim                             # ArchLinux
sudo apt-get install vim-gtk               # Ubuntu
```

[Movie teaching zencoding.vim](http://mattn.github.com/zencoding-vim/)

### Screenshots

![Completions](https://raw.github.com/yaotian/.vim/master/screenshots/completions.gif)
![Snippets](https://raw.github.com/yaotian/.vim/master/screenshots/snippets.gif)

## Fast navigation

* [matchit](http://github.com/tsaleh/vim-matchit) - Extended % matching for HTML, LaTeX, and many other languages.
* [EasyMotion](https://github.com/Lokaltog/vim-easymotion) - Vim motions on speed!


### Shortcuts
* `%` -> Jump between brackets and html/xml tags
* `<leader>` + `w` -> Beginning of the word.
* `<leader>` + `f` + `{char}` -> Find {char} to the right.

#### Doing fixes should be as fast as possible!
## Fast editing

* [surround](http://github.com/tpope/vim-surround) - Easily delete, change and add such surroundings in pairs.
* [nerdcommenter](http://github.com/scrooloose/nerdcommenter) - Easy commenting of code for many filetypes.
* [Gundo](https://github.com/sjl/gundo.vim/) - visualize your Vim undo tree.
* [tabular](https://github.com/godlygeek/tabular) - Vim script for text filtering and alignment.
* [IndentGuides](https://github.com/nathanaelkane/vim-indent-guides) - A Vim plugin for visually displaying indent levels in code.

### Tutorial

``` vim
:help text-objexts
:help surround
:help tabular
```

### Shortcuts

* `%` -> Jump between brackets and html/xml tags
* `<leader>` + `c` + `<space>` -> Toggle comment
* `F3` -> Toggle Gundo viewer
* `F4` -> Toggle Indent Guides 
* `F6` -> Format code

## IDE features

* [nerdtree](http://github.com/scrooloose/nerdtree) - A tree explorer plugin for navigating the filesystem.
* [tabbar](http://github.com/yaotian/TabBar) -  Add tab bar and quickt tab switch with alt+1~9.
* [tagbar](http://github.com/majutsushi/tagbar) - Displays the tags of the current file in a sidebar.
* [ack-vim](http://github.com/mileszs/ack.vim) - Front for the Perl module App::Ack.
* [ctrlp](https://github.com/kien/ctrlp.vim) - Fuzzy file, buffer, mru and tag finder.
* [powerline](https://github.com/Lokaltog/vim-powerline) - The ultimate vim statusline utility.
* [fugitive](https://github.com/tpope/vim-fugitive/) - a Git wrapper so awesome, it should be illegal.
* [syntastic](https://github.com/scrooloose/syntastic) - Syntax checking hacks for vim.

### Dependencie

```bash
yaourt -S ack ctags                  # ArchLinux
sudo apt-get install ack-grep ctags  # Ubuntu
brew install ack ctags               # OS X
sudo easy_install autopep8           # This is for code format
go get github.com/nsf/gocode      # for golang  note: need setup GOPATH

```

For syntax check tools:

Languages    | Lint Tools    | Install guide
------------ | ------------- | ------------
C            | gcc           | built-in
CPP          | g++           | built-in
CoffeeScript | coffee        | `npm install -g coffeelint`
CSS          | csslint       | `npm install -g csslint`
Erlang       | escript       | built-in
Go           | go            | built-in
Haml         | haml          | built-in
Haskell      | ghc-mod       | `cabal install ghc-mod`
HTML         | tidy          | built-in
Java         | javac         | built-in
Javascript   | jslint/jshint | `npm install -g jslint/jshint`
Json         | jsonlint      | `npm install -g jsonlint`
Less         | lessc         | built-in
Lisp         | clisp         | built-in
Lua          | luac          | built-in
Perl         | perl          | built-in
PHP          | php           | built-in
Puppet       | puppet        | built-in
Python       | pylint/pyflakes/flake8 | `sudo pip install pylint/pyflakes/flake8`
Ruby         | ruby          | built-in
Scala        | scala         | built-in
Sass         | sass          | built-in
Scss         | scss/compass  | `gem install compass`
XML          | xmllint       | built-in
YAML         | js-yaml       | `npm install -g js-yaml`

### Shortcuts
* `F6` -> Format Code
* `Ctrl` + `p` -> Toggle ctrlp
* `Alt` + `1~9` -> Switch between multiple buffers
* `Ctrl` + `h/j/k/l` -> Moving between spilt windows
* `:Ack` or `<leader>` + `a` -> Toggle Ack searching

## Other Utils

* [fcitx-status](https://github.com/yaotian/fcitx-status) - automatic change status of fcitx in vim.
* [togglemouse](https://github.com/nvie/vim-togglemouse/) - Toggles the mouse focus between Vim and your terminal emulator, allowing terminal emulator mouse commands, like copy/paste.

### Shortcuts

* `F12` -> Toggle Mouse

## Better syntax/indent for language enhancement

* [markdown](http://github.com/tpope/vim-markdown) -  Syntax highlight for Markdown text files.
* [jquery](http://github.com/nono/jquery.vim) - Syntax file for jQuery in ViM.
* [javascript](http://github.com/pangloss/vim-javascript) - Vastly improved vim's javascript indentation.
* [coffee-script](https://github.com/kchmck/vim-coffee-script) - CoffeeScript support for vim.
* [html5](https://github.com/othree/html5.vim) - HTML5 omnicomplete and syntax.
* [haml](https://github.com/tpope/vim-haml) - Vim runtime files for Haml, Sass, and SCSS.

## Themes

* [blackboard](https://github.com/rickharris/vim-blackboard) - Textmate's Blackboard theme for vim (with iTerm2 theme)
* [molokai](https://github.com/rickharris/vim-monokai) - A port of the monokai scheme for TextMate
* [solarized](https://github.com/altercation/vim-colors-solarized) - precision colorscheme for the vim text editor
* [vividchalk](https://github.com/tpope/vim-vividchalk) - colorscheme based on the Vibrant Ink theme for TextMate
* [distinguished](https://github.com/Lokaltog/vim-distinguished) - A dark vim color scheme for 256-color terminals.

## Additional functions

1. File encoding auto detection
* Hightlight current line and column
* Automatically jump to the last edited location
* `:w`/`:wq` error correction
* Remove trailing white space
* Code folding is disabled, enable it as you wish
* Indent style:
   * JavaScript - Use soft-tabs with a two space indent(According to this [Post](http://atroche.org/post/30994290348/javascript-indentation)).
   * HTML/CSS - Use soft-tabs with a two space indent(According to Google and Github's HTML/CSS style guide, just Google it).
   * PHP - Use soft-tabs with a two space indent(According to [Apache PHP Style Guide](http://svn.apache.org/repos/asf/shindig/trunk/php/docs/style-guide.html)).
   * Python - Use soft-tabs with a four space indent([PEP8](http://www.python.org/dev/peps/pep-0008/)).


## Known issues

* Compeletions are not well supported for statically typed languages(c/c++)
* Snippets are not shown in completions popups
* May has some conflicts with GVIM
