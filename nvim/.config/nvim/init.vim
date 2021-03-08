" Automatically install vim-plug
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Reloads vimrc after saving but keep cursor position
if !exists('*ReloadVimrc')
   fun! ReloadVimrc()
       let save_cursor = getcurpos()
       source $MYVIMRC
       call setpos('.', save_cursor)
   endfun
endif
autocmd! BufWritePost $MYVIMRC call ReloadVimrc()

"" GENERAL
" Use 2 spaces and some magic
set tabstop=2
set softtabstop=0
set shiftwidth=2
" Expand tabs into spaces
set expandtab
" Highlight searches
set hlsearch
" Add line marker at 81th character
set cc=81
" Show line numbers
set number
" Show partial commands at bottom right
set showcmd
" Process syntax indefinitely
set synmaxcol=0

" Set undo files and backup files in ~/.vimtmp
set undofile backup
set backupdir=~/.vimtmp,.
set directory=~/.vimtmp,.
set undodir=~/.vimtmp,.

" Enable mouse (sorry)
set mouse=a

"" NEOVIM
" Escape terminal
tnoremap <esc> <C-\><C-n>

"" PLUGINS
call plug#begin()

" Use sensible defaults
Plug 'tpope/vim-sensible'
" Pretty status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" File browser in sidebar
Plug 'scrooloose/nerdtree'
" Molokai colorscheme
Plug 'tomasr/molokai'

call plug#end()

" Set colorscheme
colorscheme molokai


"" NERDTREE - file browser in sidebar
" Enter NERDTree on start
autocmd VimEnter * :NERDTree

let NERDTreeIgnore = ['\.pyc$', '__pycache__']
nnoremap <Space> :NERDTreeFind<CR>


"" LANGUAGE-SPECIFIC

" Swift: use 4 spaces
autocmd FileType swift setlocal shiftwidth=4 tabstop=4

