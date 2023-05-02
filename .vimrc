" Install vim-plug
"> curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
":PlugInstall
call plug#begin('~/.vim/plugged')
"Plug 'yegappan/taglist'

" Make sure you use single quotes


" Unmanaged plugin (manually installed and updated)
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree',{'on': 'NERDTreeToggle'}
Plug 'morhetz/gruvbox'
Plug 'gosukiwi/vim-atom-dark'
Plug 'tomasr/molokai'
Plug 'Chiel92/vim-autoformat'
Plug 'tpope/vim-commentary'



" Initialize plugin system
call plug#end()
"mappings
map <C-n> :NERDTreeToggle<CR>

" nnoremap <Tab> <Esc>
"vnoremap <Tab> <Esc>gV
"onoremap <Tab> <Esc>
"cnoremap <Tab> <C-C><Esc>
"cnoremap <Tab><Tab> <Tab>
"inoremap <Tab> <Esc>`^
"inoremap <Leader><Tab> <Tab>

syntax on
syntax enable

":setlocal spelli
":setlocal nospell
":setlocal spelllang = en_us,ru


"Status-line
set statusline=
set statusline+=%#IncSearch#
set statusline+=\ %y
set statusline+=\ %r
set statusline+=%#CursorLineNr#
set statusline+=\ %F
set statusline+=%= "Right side settings
set statusline+=%#Search#
set statusline+=\ %l/%L
set statusline+=\ [%c]




" set background=dark
colorscheme gruvbox
" colorscheme atom-dark
"colorscheme molokai
let g:molokai_original = 1
"let g:rehash256 = 1
set hlsearch
set incsearch
" Настройки табов для Python, согласно рекомендациям
set tabstop=4 
set shiftwidth=4
set smarttab
set expandtab "Ставим табы пробелами
set softtabstop=4 "4 пробела в табе
" Авто отступ
set autoindent
" Подсвечиваем все что можно подсвечивать
let python_highlight_all = 1
" Включаем 256 цветов в терминале, мы ведь работаем из иксов?
" Нужно во многих терминалах, например в gnome-terminal
set t_Co=256

syntax on "Включить подсветку синтаксиса

set nu "Включаем нумерацию строк
"set rnu
set mousehide "Спрятать курсор мыши когда набираем текст
set mouse=a "Включить поддержку мыши
set termencoding=utf-8 "Кодировка терминала
set novisualbell "Не мигать 
set t_vb= "Не пищать! (Опции 'не портить текст', к сожалению, нету)
" Удобное поведение backspace
set backspace=indent,eol,start whichwrap+=<,>,[,]
" Вырубаем черточки на табах
set showtabline=1

set encoding=utf-8 " Кодировка файлов по умолчанию
set fileencodings=utf8,cp1251

set clipboard=unnamed
set ruler
set showcmd       " display incomplete commands
set laststatus=2  " Always display the status line
set hidden
"To turn off highlighting until the next search[:noh]
"To turn off highlighting completely:
"set nohlsearch
"To toggle ihighlighting:
set hlsearch!
nnoremap <F3> :set hlsearch!<CR>
