# 💤 LazyVim

personal neovim settings based on the starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

Install
------------------------------------------------------------------------

### Windows

~~~bash
git clone https://github.com/koma75/nvConfig.git %LOCALAPPDATA%\nvim && nvim
~~~

Some pre-requisites should be installed as well.

~~~bash
choco install llvm zig ripgrep git lazygit fd
~~~

### Fonts

Install Nerdfont compatible fonts.  For Japanese support,
[HackGen NF](https://github.com/yuru7/HackGen) can be used.

You can install using chocolatey in Windows.

~~~bash
choco install font-hackgen-nerd
~~~

On Arch, install aur package `ttf-hackgen`

~~~bash
yay -Sy ttf-hackgen
~~~

### Arch Linux

~~~bash
git clone https://github.com/koma75/nvConfig.git ~/.config/nvim && nvim
~~~

Plugins
------------------------------------------------------------------------

Only notable changes to the LazyVim is described below.

### im-select

Replaced with zenhan for windows usage.
May be added in future for Linux/MacOS

* https://github.com/keaising/im-select.nvim

#### Pre-requisite

im-select must be installed prior to use.

### treesitter

* https://github.com/nvim-treesitter/nvim-treesitter

#### For Windows

Prerequisite is to install clang or zig compilers.

~~~bash
choco install llvm
~~~

~~~bash
choco install zig
~~~

Compiler option is overridden.

### theme

* https://github.com/neanias/everforest-nvim

### spzenhan

* https://zenn.dev/kaz399/articles/50b5f2fdc2afcf
* https://github.com/kaz399/spzenhan.vim

spzenhan.exe must be available in the %PATH%.

References
------------------------------------------------------------------------

Resources I refered to other than the plugin documents are as follows.

* https://www.youtube.com/watch?v=zHTeCSVAFNY&list=PLsz00TDipIffreIaUNk64KxTIkQaGguqn
    * https://github.com/cpow/neovim-for-newbs
* https://github.com/NvChad/NvChad
* https://github.com/nvim-lua/kickstart.nvim
    * https://github.com/dam9000/kickstart-modular.nvim

### Windows context menu

To add context menu, use the following (edited to be compatible with chocolaty neovim install).
Original registry is [here](https://gist.github.com/JAffleck/2ba6ca0bd0d5545fd17c396357b9abf0)

~~~ reg
Windows Registry Editor Version 5.00



;; Neovim-Qt

[HKEY_CLASSES_ROOT\*\shell\nvim-qt]
@="Edit with Neovim-Qt"
"Icon"="\"C:\\tools\\neovim\\nvim-win64\\bin\\nvim-qt.exe\""

[HKEY_CLASSES_ROOT\*\shell\nvim-qt\command]
@="\"C:\\tools\\neovim\\nvim-win64\\bin\\vim-qt.exe\" \"%1\""

[HKEY_CLASSES_ROOT\Directory\shell\nvim-qt]
@="Open with Neovim-Qt"
"Icon"="\"C:\\tools\\neovim\\nvim-win64\\bin\\nvim-qt.exe\""

[HKEY_CLASSES_ROOT\Directory\shell\nvim-qt\command]
@="\"C:\\tools\\neovim\\nvim-win64\\bin\\nvim-qt.exe\" \"%1\""

[HKEY_CLASSES_ROOT\Directory\Background\shell\nvim-qt]
@="Open Neovim-Qt here"
"Icon"="\"C:\\tools\\neovim\\nvim-win64\\bin\\nvim-qt.exe\""

[HKEY_CLASSES_ROOT\Directory\Background\shell\nvim-qt\command]
@="\"C:\\tools\\neovim\\nvim-win64\\bin\\nvim-qt.exe\" \"%v\""


;; NeoVim

[HKEY_CLASSES_ROOT\*\shell\nvim]
@="Edit with Neovim"
"Icon"="\"C:\\tools\\neovim\\nvim-win64\\bin\\nvim-qt.exe\""

[HKEY_CLASSES_ROOT\*\shell\nvim\command]
@="wt -p \"Windows PowerShell\" --title Neovim C:\\tools\\neovim\\nvim-win64\\bin\\nvim.exe \"%1\""

[HKEY_CLASSES_ROOT\directory\shell\nvim]
@="Open with Neovim"
"Icon"="\"C:\\tools\\neovim\\nvim-win64\\bin\\nvim-qt.exe\""

[HKEY_CLASSES_ROOT\directory\shell\nvim\command]
@="wt -p \"Windows PowerShell\" --title Neovim C:\\tools\\neovim\\nvim-win64\\bin\\nvim.exe \"%v\""

[HKEY_CLASSES_ROOT\directory\background\shell\nvim]
@="Open Neovim here"
"Icon"="\"C:\\tools\\neovim\\nvim-win64\\bin\\nvim-qt.exe\""

[HKEY_CLASSES_ROOT\directory\background\shell\nvim\command]
@="wt -p \"Windows PowerShell\" --title Neovim C:\\tools\\neovim\\nvim-win64\\bin\\nvim.exe \"%v\""
~~~

