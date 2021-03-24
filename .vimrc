
"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/sheep/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/sheep/.cache/dein')
  call dein#begin('/Users/sheep/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/sheep/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('jistr/vim-nerdtree-tabs')
  call dein#add('Xuyuanp/nerdtree-git-plugin')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('vim-airline/vim-airline')
  call dein#add('bronson/vim-trailing-whitespace')
  call dein#add('Yggdroot/indentLine')
  call dein#add('Shougo/neocomplete.vim')
  call dein#add('tpope/vim-endwise')
  call dein#add('lervag/vimtex')
  call dein#add('thinca/vim-quickrun')
  call dein#add('osyo-manga/vim-monster')
  call dein#add('vim-scripts/surround.vim' )
  call dein#add('mattn/webapi-vim')
  call dein#add('tell-k/vim-browsereload-mac')
  call dein#add('hail2u/vim-css3-syntax')
  call dein#add('taichouchou2/html5.vim')
  call dein#add('kchmck/vim-coffee-script')
  call dein#add('altercation/vim-colors-solarized')
  call dein#add('simeji/winresizer')
  call dein#add('scrooloose/nerdtree')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
" setting
"文字コードをUFT-8に設定
set encoding=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set showcmd
set number
set cursorline
set cursorcolumn
set virtualedit=onemore
set smartindent
set visualbell t_vb=
set showmatch
set laststatus=2
set wildmode=list:longest
nnoremap j gj
nnoremap k gk
set list listchars=tab:\▸\-
set expandtab
set tabstop=2
set shiftwidth=2
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>


" matchit {{{
" if や for などの文字にも%で移動できるようになる
source $VIMRUNTIME/macros/matchit.vim
let b:match_ignorecase = 1
" }}}

" usability {{{
" set t_Co=256は256色対応のターミナルソフトでのみ作用するので、Winのコマンドプロンプト使っている人などは ダブルコーテーションでコメントアウトしといて
set t_Co=256
" 色づけを on にする
syntax on
" カラースキーマを設定する。jellybeansは最初はないカラースキーマだが、次回説明するプラグインにて説明する。
"colorscheme jellybeans
colorscheme desert
set nowrap
set noswapfile
set hlsearch
set ignorecase
set smartcase
set ruler
set number
set list
set wildmenu
set showcmd
set clipboard=unnamed
set autoindent
set shiftwidth=2
set softtabstop=2
set expandtab
set tabstop=2
set laststatus=2
set showtabline=2
set splitbelow
set splitright
set whichwrap=b,s,h,l,<,>,[,]
"" texのconcealを無効化（#^ω^）
let g:tex_conceal=''

" インクリメント、デクリメントを16進数にする(0x0とかにしなければ10進数です。007をインクリメントすると010になるのはデフォルト設定が8進数のため)
set nf=hex
" マウス使えます
set mouse=a

" インサートモードの時に C-j でノーマルモードに戻る
imap <C-j> <esc>
" [ って打ったら [] って入力されてしかも括弧の中にいる(以下同様)
imap [ []<left>
imap ( ()<left>
imap { {}<left>

" ２回esc を押したら検索のハイライトをヤメる
nmap <Esc><Esc> :nohlsearch<CR><Esc>
" }}}

"nerdtreeの自動起動
autocmd VimEnter * execute 'NERDTree'

"viとの互換性を無効にする(INSERT中にカーソルキーが有効になる)
set nocompatible
"カーソルを行頭，行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]
"BSで削除できるものを指定する
" indent  : 行頭の空白
" eol     : 改行
" start   : 挿入モード開始位置より手前の文字
set backspace=indent,eol,start
" emmet keybind
let g:user_emmet_leader_key='<c-y>'


"neosnnippet keybind"
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
" SuperTab like snippets behavior.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

"set snippet file dir
let g:neosnippet#snippets_directory='~/.vim/bundle/neosnippet-snippets/snippets/,~/.vim/snippets'

" ノーマルモード時だけ ; と : を入れ替える
nnoremap ; :
nnoremap : ;
