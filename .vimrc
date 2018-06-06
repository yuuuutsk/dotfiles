"#####表示設定#####
"set number "行番号を表示する
set title "編集中のファイル名を表示
set showmatch "括弧入力時の対応する括弧を表示
set number
syntax on "コードの色分け
syntax enable
set expandtab "タブをスペースで展開します
set tabstop=2 shiftwidth=2 softtabstop=2 "タブ幅の設定です
set autoindent "オートインデントの設定
set smartindent "オートインデント
set hlsearch "検索ワードのハイライト
set clipboard=unnamed,autoselect "ヤンクでクリプボードにコピー
set backspace=2 "改行を削除できるよう
set statusline=%<[%n]%m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}%y\ %F%=%l,%c%V%8P
set list
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%

augroup fileTypeIndent
autocmd!
  autocmd BufNewFile,BufRead *.pl setlocal tabstop=4 softtabstop=4 shiftwidth=4
  autocmd BufNewFile,BufRead *.pm setlocal tabstop=4 softtabstop=4 shiftwidth=4
  autocmd BufNewFile,BufRead *.t setlocal tabstop=4 softtabstop=4 shiftwidth=4
augroup END

"#####検索設定#####
set ignorecase "大文字/小文字の区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan "検索時に最後まで行ったら最初に戻る
  let g:arrowWarning = "Use [h][j][k][l] to Move!!!"
fun! ShowWarning(message)
  echo a:message
endfun

nnoremap <buffer> <Left> <Esc>:call ShowWarning(g:arrowWarning)<CR>
nnoremap <buffer> <Right> <Esc>:call ShowWarning(g:arrowWarning)<CR>
nnoremap <buffer> <Up> <Esc>:call ShowWarning(g:arrowWarning)<CR>
nnoremap <buffer> <Down> <Esc>:call ShowWarning(g:arrowWarning)<CR>
inoremap <buffer> <Left> <Esc>:call ShowWarning(g:arrowWarning)<CR>
inoremap <buffer> <Right> <Esc>:call ShowWarning(g:arrowWarning)<CR>
inoremap <buffer> <Up> <Esc>:call ShowWarning(g:arrowWarning)<CR>
inoremap <buffer> <Down> <Esc>:call ShowWarning(g:arrowWarning)<CR>
vnoremap <buffer> <Left> <Esc>:call ShowWarning(g:arrowWarning)<CR>
vnoremap <buffer> <Right> <Esc>:call ShowWarning(g:arrowWarning)<CR>
vnoremap <buffer> <Up> <Esc>:call ShowWarning(g:arrowWarning)<CR>
vnoremap <buffer> <Down> <Esc>:call ShowWarning(g:arrowWarning)<CR>

"map ,pt <Esc>:%! plenv exec perltidy -se<CR>
"map ,pr <Esc>:%! plenv exec carton exec prove<CR>
"map ,ptv <Esc>:'<,'>! plenv exec perltidy -se<CR>
nnoremap <silent><C-e> :NERDTreeToggle<CR>

"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'

" 今後このあたりに追加のプラグインをどんどん書いて行きます！！"

" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'

" NERDTreeを設定
NeoBundle 'scrooloose/nerdtree'

" NeoBundle 'vim-rails'

call neobundle#end()

" Required:
filetype plugin indent on

" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck

"-------------------------
" End Neobundle Settings.
"-------------------------
