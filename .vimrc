set nocompatible
set path +=**
filetype plugin on
set wildmenu
set encoding=utf-8
scriptencoding utf-8
set termencoding=utf-8
set fillchars =vert:▓,stlnc:░,fold:⤶,diff:◈,stl:_
"autocompletadoVerga
set omnifunc=syntaxcomplete#Complete

"Saludos Vergas
echo "A matarlos crack!"
autocmd VimEnter * echo 'We shall never surrender... ¿Comanzamos?'

set hlsearch
"set ignorecase
set autoindent
"set noshowmode
set cmdheight=2
"comando del lightline
set ls=1
set lbr

"set statusline=%<%f\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P
set laststatus=2  " always display the status line
"emmet
let g:user_emmet_leader_key=','
let g:user_emmet_mode='n'
" enable indentation
set breakindent
"wrap de la lineas
"set wrap
set so=8
set siso=2
"set wm=1 "wrapmargin
set shiftwidth=2
set si
set nolbr
set sta
set vsts=3
" append '>>' to indent
set showbreak=ᐓᐓᐓ  
"\'right':['bufnum']
" \'component': {
" \'inactive':'inactive',
" \},

let g:lightline = {
      \ 'active':{
      \'left':[['mode','paste'],[], ['relativepath','modified','readonly']],
      \'right':[['kitestatus'],['filetype','%n','percent', 'lineinfo','gitbranch']]
      \},
      \ 'inactive':{
      \'left':[['inactive'], ['relativepath']],
      \},
      \'component_function':{
      \'gitbranch':'fugitive#head',
      \'kitestatus':'kite#statusline',
      \'readonly': 'LightlineReadonly',
      \},
      \'colorscheme': 'one',
      \'subseparator':{
      \'left':'',
      \'right':''
      \}
      \}

function! LightlineReadonly()
  return &readonly && &filetype !=# 'help' ? 'RO' : ''
endfunction




"color del downline schme


"texto
syntax on
"interface
set ruler
set relativenumber
set title
set titlelen=100

"miscelaniuos
set confirm
set history=10000
set viminfo='10
set noswapfile
set undodir=~/.vim/undodir
set undofile


"debailitar las flechas
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>


"let g:coc_disable_startup_warning = 1
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'mattn/emmet-vim'
Plug 'morhetz/gruvbox'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'vim-scripts/CSS-one-line--multi-line-folding'
call plug#end()
"Plug 'leafgarland/typescript-vim'
"Plug 'scrooloose/nerdcommenter'
"Plug 'scrooloose/nerdtree'
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'mbbill/undotree'

"color del tema
colorscheme gruvbox
set background=dark

if executable('rg')
  let g:rg_derive_root='true'
endif


"set del espacioo como 'combo de habilidades'
let mapleader =" "
"mapeo del tab nueva tab
nnoremap <S-t> :tabnew<CR>
"mapeo de pantalla divida
nnoremap <C-y> :Vexplore<CR>
"mapo del movimiento entre tabs 
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt

"mapeo del movimiento en ventanas
nnorem	<leader>h :wincmd h<CR>
nnorem	<leader>j :wincmd j<CR>
nnorem	<leader>k :wincmd k<CR>
nnorem	<leader>l :wincmd l<CR>

"mapeo del Vsplit window size<---->
nnoremap <leader>> 10<C-w>>
nnoremap <leader>< 15<C-w><
"saltar  hasta abajo
nnoremap <leader>a G<CR>
vnoremap <leader>aa G<CR>
"guardado
nnoremap<leader>w :w<CR>
nnoremap<leader>q :q<CR>
"buscar y reemplazar
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/
nnoremap <Leader>ss :saveas 
nnoremap <Leader>e :e ./
"comandos git/ comandos globales
nnoremap <Leader>gs :! git status<CR>
nnoremap <Leader>gc :! git commit -a -m''
nnoremap <Leader>ga :! git add .<CR>
nnoremap <Leader>gp :! git push -u origin<CR>

"Tags
nnoremap <Leader>mktag :! ctags -R .<CR>
nnoremap <Leader>maketag :! ctags -R .<CR>
inoremap <C-\> <C-P>



"mapeo de la copia global
"copia a documento en la carpeta temporal del SO con el nombre de vitmp
vmap <leader>y :w! /tmp/vitmp<CR>
"lee y pega el documento vitmp
nmap <leader>p :r! cat /tmp/vitmp<CR>

"lee y pega el documento Console con lo que imprime un console log
nmap <leader>c :r! cat ~/.nodeSnips/Console<CR>
nmap <leader>zl :! clear<CR>
nmap<silent> <leader>zc :silent normal f{v%zf<CR>
nmap<silent> <leader>zcx :silent normal f[v%zf<CR>

"buscar un texto dento de los archivos de la carpeta
nmap <leader>f :! grep -Ril "" ./

"autocomplete
set complete +=kspell
set cole =2 "conseal level
set cocu =nc "conseal cursor
"set incsearch
"setlocal spell spelllang=en_us


"kite
let g:kite_supported_languages = ['*']
let g:kite_snippets=0
set cot=menu,menuone,longest,preview,noinsert,noselect "completeopt
"let g:kite_completions =0
"
inoremap <expr> . DotComplete()
inoremap <expr> - DashComplete()
inoremap <expr> / BarComplete()
inoremap <expr> ( BracketComplete()
inoremap <expr> < SquareBracketComplete()
inoremap <expr> { KeyComplete()
inoremap <expr> [ SquareKeyComplete()

func DotComplete()
  return ".\<C-X>\<C-U>"
endfunc

func DashComplete()
  return "-\<C-X>\<C-U>"
endfunc

func BarComplete()
  return "/\<C-X>\<C-U>"
endfunc

func BracketComplete()
  return "(\<C-X>\<C-U>"
endfunc

funct SquareBracketComplete()
  return "<\<C-X>\<C-U>"
endfunc

func KeyComplete()
  return "{\<C-X>\<C-U>"
endfunc

func SquareKeyComplete()
  return "[\<C-X>\<C-U>"
endfunc

"snipets node
nmap <leader>ni :r! cat ~/.nodeSnips/index<CR>
nmap <leader>nc :r! cat ~/.nodeSnips/collation<CR>
nmap <leader>nb :r! cat ~/.nodeSnips/serverDb<CR>
"snipets react
nmap <leader>rc :r! cat ~/.nodeSnips/reactComponent<CR>
nmap <leader>ra :r! cat ~/.nodeSnips/reactApp<CR>
nmap <leader>re :r! cat ~/.nodeSnips/Effect<CR>
nmap <leader>rs :r! cat ~/.nodeSnips/States<CR>
nmap <leader>rf :r! cat ~/.nodeSnips/Function<CR>

"media queries
nmap <leader>mq :r! cat ~/.workSnips/css/media-queries<CR>

"snipets html
nmap <leader>html :r! cat ~/.workSnips/html/boiler<CR>
nmap <leader>hmc :r! cat ~/.workSnips/html/Container<CR>
nmap <leader>hmt :r! cat ~/.workSnips/html/MainTitle<CR>
nmap <leader>hc :r! cat ~/.workSnips/html/card<CR>
nmap <leader>htemp :r! cat ~/.workSnips/html/template<CR>
"snipts css
nmap <silent> <leader>cmc :silent r! cat ~/.workSnips/css/Container<CR>
nmap <silent> <leader>css :silent r! cat ~/.workSnips/css/Boiler<CR>
nmap <silent> <leader>cc	 :silent r! cat ~/.workSnips/css/card<CR>
nmap <silent> <leader>ccl :silent r! cat ~/.workSnips/css/card-lf<CR>
nmap <silent> <leader>ccr :silent r! cat ~/.workSnips/css/card-rg<CR>
nmap <silent> <leader>cmt :silent r! cat ~/.workSnips/css/MainTitle<CR>
nmap <silent> <leader>cbi :silent r! cat ~/.workSnips/css/background-image<CR>
nmap <silent> <leader>csb :silent r! cat ~/.workSnips/css/border<CR>

" atajos de vim
nmap <silent><F5> :silent so ~/.vimrc <CR> 
nmap <silent> <F2> :silent e ~/.vimrc <CR> 

"scripts auto ejecutables 
autocmd CompleteDone * if !pumvisible() | pclose | endif
autocmd BufWritePre *.js   :silent normal mhgg=G`h 
autocmd BufWritePre *.html :silent normal mhgg=G`h
autocmd BufWritePre *.css  :silent normal mhgg=G`h

autocmd VimEnter * Lexplore "opens toggle left menu
autocmd VimEnter * vertical resize 15 "resizes the window 15 chars
autocmd VimEnter *  wincmd l "jump to left side
autocmd VimEnter *  browse oldfiles "call the function breowseoldfiles
 
autocmd TabNew * Lexplore "opens toggle left men
autocmd TabNew * vertical resize 15 "resizes the window 
autocmd TabNew *  wincmd l "jump to left side

"autocmd VimEnter * split 5
"autocmd VimEnter *  wincmd k<CR>
