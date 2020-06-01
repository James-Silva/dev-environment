" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Nerdy File explorer
    Plug 'scrooloose/NERDTree'
   
    " Status bar
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Better window resizing using CTRL+E and h, j, k,or l 
    Plug 'simeji/winresizer' 
    
    " Vim Colorschemes
    Plug 'flazz/vim-colorschemes'

    " Better commenting
    Plug 'tpope/vim-commentary'

    " Intellisense engine
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif