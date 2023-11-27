call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'romainl/Apprentice'
Plug 'AlessandroYorba/Alduin'
Plug 'jeetsukumaran/vim-nefertiti'
Plug 'racer-rust/vim-racer'
Plug 'rust-lang/rust.vim'
Plug 'vim-crystal/vim-crystal'
Plug 'arcticicestudio/nord-vim'
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ulwlu/elly.vim'
Plug 'masahiko-ofgp/unsui'
Plug 'aktersnurra/no-clown-fiesta.nvim'
Plug 'matveyt/vim-modest'


call plug#end()

set number
set expandtab
set autoindent
set softtabstop=4
set shiftwidth=2
set tabstop=4
set cursorline
set cursorcolumn
set wildmenu
set wildmode=full
set splitbelow
syntax on
colorscheme modest
set bg=dark

"nvimのマウスクリックを有効化
set mouse=a
"nvimを閉じた後のカーソル置換を修正
set guicursor=
"Shift + Tabで逆タブ
inoremap <S-Tab> <C-d>

"空白を出力
set list listchars=tab:>\ ,trail:+,eol:$

"行末に達したら次の行に折り返す
set whichwrap+=<,>,[,]
