"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
  " call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9' })

  " File operation
  " ファイルをtree表示してくれる Ctrl + E
  call dein#add('scrooloose/nerdtree')

  " For Rails
  " Rails向けのコマンドを提供する
  call dein#add('tpope/vim-rails')
  " Ruby向けにendを自動挿入してくれる
  call dein#add('tpope/vim-endwise')
  " コメントON/OFFを手軽に実行 Ctrl + - を2回
  call dein#add('tomtom/tcomment_vim')
  " シングルクオートとダブルクオートの入れ替え等 cs'"
  call dein#add('tpope/vim-surround')
  " インデントに色を付けて見やすくする
  call dein#add('nathanaelkane/vim-indent-guides')
  " ログファイルを色づけしてくれる
  call dein#add('vim-scripts/AnsiEsc.vim')
  " 行末の半角スペースを可視化(うまく動かない？)
  call dein#add('bronson/vim-trailing-whitespace')
  " less用のsyntaxハイライト
  call dein#add('KohPoll/vim-less')
  " RubyMineのように自動保存する
  " call dein#add('907th/vim-auto-save')
  " let g:auto_save = 1

  " Required:
  call dein#end()
  call dein#save_state()
endif

" vim-indent-guides設定
colorscheme default
set background=dark
let g:indent_guides_enable_on_vim_startup = 1

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

"Vim Settings-----------------------------
" Deleteキーを効かせる
set backspace=indent,eol,start
" 文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd
" Git-最終行の改行メッセージ
set binary noeol
" ヤンクでクリップボードコピー
set clipboard=unnamed,autoselect

" 見た目系
" 行番号を表示
set number
" 現在の行を強調表示
set cursorline
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" ビープ音を可視化
set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest

" Tab系
" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2
" 行頭でのTab文字の表示幅
set shiftwidth=2
" 連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set softtabstop=2
" 改行時に前の行のインデントを継続する
set autoindent
" 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set smartindent
" Tab文字を半角スペースにする
set expandtab

" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

"End Vim Settings-------------------------

"KeyBindings------------------------------
nnoremap <silent><C-e> :NERDTreeToggle<CR>
"End KeyBindings--------------------------

