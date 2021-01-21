"" vim 8.0
colorscheme elflord
"colorscheme desert
"colorscheme morning

syntax on
set wildmenu wildmode=list:full
set clipboard=unnamed,autoselect
set noswapfile
set nobackup

"" Character code setting
set encoding=utf-8
set fileencoding=utf-8                        " 保存時の文字コード
set fileencodings=ucs-boms,utf-8,euc-jp,cp932 " 読み込み時の文字コードの自動判別. 左側が優先される
set fileformats=unix,dos,mac                  " 改行コードの自動判別. 左側が優先される
set ambiwidth=double                          " □や○文字が崩れる問題を解決

"" Statusline
set laststatus=2                       " ステータスラインを常に表示
set statusline+=%f                     " ファイル名表示
set statusline+=%=                     " これ以降は右寄せ表示
set statusline+=[ENC=%{&fileencoding}] " file encoding
set statusline+=[LOW=%l/%L]            " 現在行数/全行数

"" Delete Backspace
set backspace=indent,eol,start

"" Tab setting
"set expandtab
set tabstop=4
set shiftwidth=4

"" Autoindent
set autoindent
set smartindent

"" About search
vnoremap * "zy:let @/ = @z<CR>n " 選択した部分を検索
set ignorecase
set smartcase
set incsearch
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

"" Number
set number

"" 文末の空白をハイライト
augroup HighlightTrailingSpaces
  autocmd!
  autocmd VimEnter,WinEnter,ColorScheme * highlight TrailingSpaces term=underline guibg=Red ctermbg=Red
  autocmd VimEnter,WinEnter * match TrailingSpaces /\s\+$/
augroup END

"" Vimgrep
nnoremap [q :cprevious<CR>   " 前へ
nnoremap ]q :cnext<CR>       " 次へ
nnoremap [Q :<C-u>cfirst<CR> " 最初へ
nnoremap ]Q :<C-u>clast<CR>  " 最後へ

"" Check syntax for php
augroup PHP
  autocmd!
  autocmd FileType php set makeprg=php\ -l\ %
  autocmd BufWritePost *.php silent make | if len(getqflist()) != 1 | copen | else | cclose | endif
augroup END

"" Tab page jump
for n in range(1, 9)
  execute 'nnoremap <silent> [Tag]'.n  ':<C-u>tabnext'.n.'<CR>'
endfor

"" The prefix key.
nnoremap    [Tag]   <Nop>
nmap      t [Tag]

"" Move tab pages
nnoremap <C-g> gt
nnoremap <C-t> gT

" Hight Light Active Line
:hi TabLineSel ctermfg=Red

"" Undofile
if has('persistent_undo')
  set undodir=~/.vim/undo
  set undofile
endif

"" 補完系
filetype plugin on
imap <C-f> <C-x><C-o>
imap <C-d> <C-x><C-i>

" オムニ補完の設定（insertモードでCtrl+oで候補を出す、Ctrl+n Ctrl+pで選択、Ctrl+yで確定）
set omnifunc=pythoncomplete#Complete
set omnifunc=javascriptcomplete#CompleteJS
set omnifunc=htmlcomplete#CompleteTags
set omnifunc=csscomplete#CompleteCSS
set omnifunc=xmlcomplete#CompleteTags
set omnifunc=phpcomplete#CompletePHP

" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go'
Plug 'othree/vim-autocomplpop'
Plug 'vim-scripts/L9'
call plug#end()
