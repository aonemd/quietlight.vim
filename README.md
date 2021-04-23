<div align="center">
  <h1>
    quietlight.vim
  </h1>

  A nice light colorscheme for Vim ported from [Quiet Light for
  VSC](https://github.com/onecrayon/theme-quietlight-vsc).
</div>

## Installation

1.  Copy colors/quietlight.vim to:

    ```bash
    ~/.vim/colors/quietlight.vim
    ```

    or alternatively, use a plugin manger such as
    [vim-plug](https://github.com/junegunn/vim-plug),
    [NeoBundle](https://github.com/Shougo/neobundle.vim),
    [Vundle](https://github.com/gmarik/Vundle.vim), or
    [Pathogen](https://github.com/tpope/vim-pathogen).

2.  Terminal color modes:

    ### 256-color terminal

    To use the colorscheme in a 256-color terminal, add this to your ~/.vimrc:

    ```vim
    set t_Co=256
    ```

    ### True color terminal

    To use the true color mode, make sure to set this in your ~/.vimrc:

    ```vim
    set termguicolors
    ```

    This works in both true color terminals and GUI Vim clients such as GVim or
    MacVim.

    **Tip**: for some reason, Vim with termguicolors set inside Tmux might have
    a different background color (a little off) than the original background
    color. To work around this issue, please make sure you have this `set -g
    terminal-overrides ",xterm-256color:Tc"` in your tmux.conf file.

3.  Add to ~/.vimrc:

    ```vim
    set background=light
    colorscheme quietlight
    ```

## Extras

- The colorscheme has a special group to highlight Vim `popup` window called
    `InfoPopup`. To use the group, add the following to `.vimrc`:
    ```vim
    set completeopt=menu,menuone,popup               "enable popup window
    set completepopup=highlight:InfoPopup,border:off "configure the highlight group
    ```

## Contribution

Contributions are welcome. If you find something you want to change, open an
issue or send a pull request.

## License

See [LICENSE](https://github.com/aonemd/quietlight.vim/blob/master/LICENSE).
