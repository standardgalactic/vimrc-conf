set nocompatible
set path +=**
filetype plugin on
set wildmenu
"wig = wildignore
set wig +=**/node_modules/** 
"set wildchar=1  "numero de chars para que wild se active
set encoding=utf-8
"Pum menu"
set ph=7
scriptencoding utf-8
set termencoding=utf-8
set fillchars =vert:▓,stlnc:░,fold:•,diff:◈,stl:_

"Saludos Vergas
echo "React?!!!"
autocmd VimEnter * echo '¿Comanzamos?'

"busqueda en tiempo real de texto
set hlsearch
set incsearch 
"set ignorecase
set autoindent
"set noshowmode
set cmdheight=2
"comando del lightline
set noshowmode "quta el insert text por defecto de vim"
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
set wm=1 "wrapmargin
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
      \'kitestatus':'kite#statusline',
let g:lightline = {
      \ 'active':{
      \'left':[['mode','paste'],[], ['relativepath','modified','readonly']],
      \'right':[['%n'],['filetype','percent', 'lineinfo','gitbranch']]
      \},
      \ 'inactive':{
      \'left':[['inactive'], ['relativepath']],
      \},
      \'component_function':{
      \'gitbranch':'fugitive#head',
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
set viminfo='15
set noswapfile
set undodir=~/.vim/undodir
set undofile


"debailitar las flechas
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>



call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'mattn/emmet-vim'
Plug 'morhetz/gruvbox'
Plug 'Yggdroot/indentLine'
if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif
call plug#end()
"Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
"Plug 'leafgarland/typescript-vim'
"Plug 'scrooloose/nerdcommenter'
"Plug 'scrooloose/nerdtree'
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'mbbill/undotree'
"Plug 'mgechev/vim-jsx'
"Plug 'vim-scripts/CSS-one-line--multi-line-folding'

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
nnoremap <leader>a G
"nnoremap <leader>au :set omnifunc=javascriptcomplete#CompleteJS<CR>
"guardado
nnoremap<leader>w :w<CR>
nnoremap<leader>q :q<CR>
"buscar y reemplazar
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/
nnoremap <Leader>sf  :find 
nnoremap <Leader>ss :saveas 
"abrir archivo
"comandos git/ comandos globales
nnoremap <Leader>gs :! git status<CR>
nnoremap <Leader>gc :! git commit -a -m''
nnoremap <Leader>ga :! git add .<CR>
nnoremap <Leader>gp :! git push -u origin<CR>

"Tags
noremap <leader>gd mA gd 4w gf ggn

"indentar
nnoremap <leader>ind ma gg v G= `a 


nmap <silent><F1> :silent e ~/.nodeSnips/<CR> 
" vimrc
nmap <silent> <F2> :silent e ~/.vimrc <CR> 
"Trabajo
nmap <silent><F3> :silent e ~/.workSnips/<CR> 
"list buffers
nmap <silent><F4> :ls<CR>:b 
"vim Source
nmap <silent><F5> :silent so ~/.vimrc <CR> 

"mapeo de la copia global
"copia a documento en la carpeta temporal del SO con el nombre de vitmp
vmap <silent><leader>y :w! /tmp/vitmp<CR>
"lee y pega el documento vitmp
nmap <leader>p :r! cat /tmp/vitmp<CR>

"lee y pega el documento Console con lo que imprime un console log
nmap <leader>c :r! cat ~/.nodeSnips/Console<CR>fds
"clearconsole
nmap<leader>zl :! clear<CR> 
"folding
nmap<silent> <leader>z{	   :silent normal f{v%=f{v%zf<CR> 
nmap<silent> <leader>{	   :silent normal f{v%=v%zf<CR> 
nmap<silent> <leader>z[	   :silent normal f[v%=f[v%zf<CR>
nmap<silent> <leader>[	   :silent normal f[v%=v%zf<CR>
nmap<silent> <leader>z(	   :silent normal f(v%=f(v%zf<CR>
nmap<silent> <leader>(	   :silent normal f(v%=v%zf<CR>
"este comando guarda los cambios en el documento actual y despues al ultimo
"documento editadou"
nmap<silent> <leader><Tab> :w<CR><C-^>

"buscar un texto dento de los archivos de la carpeta
nmap <leader>f :! grep -Ril "" ./
nmap <leader>ff :g/\<<C-r><C-w>\>/#

"directory tree
let g:netrw_banner=0	      "disables banner"
let g:netrw_liststyle=3	      "Tree view"
let g:netrw_list_hide= '.*\.swp$'
let g:netrw_list_hide= netrw_gitignore#Hide().'.*\.swp$'
"autocomplete
set complete +=kspell	"abreviacion cpt
set cole =2 "conseal level
set cocu =nc "conseal cursor
set cot=menu,menuone,longest,preview,noinsert,noselect "completeopt

"GLOBAL COMPLETIONS"
inoremap <expr> <space> SpaceComplete()
inoremap <expr> . DotComplete()
inoremap <expr> - DashComplete()
inoremap <expr> / BarComplete()
inoremap <expr> ( BracketComplete()
inoremap <expr> < SquareBracketComplete()
inoremap <expr> { KeyComplete()
inoremap <expr> [ SquareKeyComplete()
inoremap <expr> ' SimpleQuote()
inoremap <expr>  " DoubleQuote()
"DIVERSOS MODOS DE COMPLETADO DE VIM"
inoremap <expr> ;f FileCompletion()
inoremap <expr> ;i CurrentFiles()
inoremap <expr> ;l LineComplete()
inoremap <expr> ;o LanguajeComplete() 
inoremap <expr> ;n NormalComplete() 
inoremap <expr> ;j Normal2Complete() 
inoremap <expr> ;a SelectOption()
inoremap <expr> ;w SaveInsert()
inoremap <expr> ;q Quit()
inoremap <expr> hh Return() 
"completado del abecedario"
inoremap <expr> a ACompletion() 
inoremap <expr> b BCompletion() 
inoremap <expr> c CCompletion() 
inoremap <expr> d DCompletion() 
inoremap <expr> e ECompletion() 
inoremap <expr> f FCompletion() 
inoremap <expr> g GCompletion() 
inoremap <expr> h HCompletion() 
inoremap <expr> i ICompletion() 
inoremap <expr> j JCompletion() 
inoremap <expr> k KCompletion() 
inoremap <expr> l LCompletion() 
inoremap <expr> m MCompletion() 
inoremap <expr> n NCompletion() 
inoremap <expr> o OCompletion() 
inoremap <expr> p PCompletion() 
inoremap <expr> q QCompletion() 
inoremap <expr> r RCompletion() 
inoremap <expr> s SCompletion() 
inoremap <expr> t TCompletion() 
inoremap <expr> u UCompletion() 
inoremap <expr> v VCompletion() 
inoremap <expr> w WCompletion() 
inoremap <expr> x XCompletion() 
inoremap <expr> y YCompletion() 
inoremap <expr> z ZCompletion() 
func ACompletion()
  return "a\<C-x>\<C-o>"
endfunc
func BCompletion()
  return "b\<C-x>\<C-n>"
endfunc
func CCompletion()
  return "c\<C-x>\<C-n>"
endfunc
func DCompletion()
  return "d\<C-x>\<C-n>"
endfunc
func ECompletion()
  return "e\<C-x>\<C-o>"
endfunc
func FCompletion()
  return "f\<C-x>\<C-n>"
endfunc
func GCompletion()
  return "g\<C-x>\<C-n>"
endfunc
func HCompletion()
  return "h\<C-x>\<C-n>"
endfunc
func ICompletion()
  return "i\<C-x>\<C-o>"
endfunc
func JCompletion()
  return "j\<C-x>\<C-n>"
endfunc
func KCompletion()
  return "k\<C-x>\<C-n>"
endfunc
func LCompletion()
  return "l\<C-x>\<C-n>"
endfunc
func MCompletion()
  return "m\<C-x>\<C-n>"
endfunc
func NCompletion()
  return "n\<C-x>\<C-n>"
endfunc
func OCompletion()
  return "o\<C-x>\<C-o>"
endfunc
func PCompletion()
  return "p\<C-x>\<C-n>"
endfunc
func QCompletion()
  return "q\<C-x>\<C-n>"
endfunc
func RCompletion()
  return "r\<C-x>\<C-n>"
endfunc
func SCompletion()
  return "s\<C-x>\<C-n>"
endfunc
func TCompletion()
  return "t\<C-x>\<C-n>"
endfunc
func UCompletion()
  return "u\<C-x>\<C-o>"
endfunc
func VCompletion()
  return "v\<C-x>\<C-n>"
endfunc
func WCompletion()
  return "w\<C-x>\<C-n>"
endfunc
func XCompletion()
  return "x\<C-x>\<C-n>"
endfunc
func YCompletion()
  return "y\<C-x>\<C-n>"
endfunc
func ZCompletion()
  return "z\<C-x>\<C-n>"
endfunc
"TERMINA COMPLETADO DEL ABCEDARIO"
func SpaceComplete()
  return "\<space>\<C-x>\<C-l>"
endfunc
func FileCompletion()
  return "\<C-y>\<C-x>\<C-f>"
endfunc

func NormalComplete()
  return "\<C-n>"
endfunc
func Normal2Complete()
  return "\<C-x>\<C-n>"
endfunc
func SelectOption()
  return "\<C-y>"
endfunc

func SaveInsert()
  return "\<esc>\:w\<CR>"
endfunc

func Quit()
  return "\<esc>"
endfunc

func Return()
  return "\<C-h>"
endfunc

func LineComplete()
  return "\<C-x>\<C-l>"
endfunc

func CurrentFiles()
  return "\<C-x>\<C-i>"
endfunc

func LanguajeComplete()
  return "\<C-x>\<C-o>"
endfunc

func DotComplete()
  return ".\<C-x>\<C-o>"
endfunc

func DashComplete()
  return "-\<C-x>\<C-i>"
endfunc

func BarComplete()
  return "/\<C-x>\<C-f>"
endfunc

func BracketComplete()
  return "()\<esc>$F(a\<C-X>\<C-O>"
endfunc

funct SquareBracketComplete()
  return "<>\<esc>$F<a\<C-X>\<C-O>"
endfunc

func KeyComplete()
  return "{}\<esc>$F{a\<C-X>\<C-O>"
endfunc
func SquareKeyComplete()
  return "[]\<esc>\$F[a\<C-X>\<C-O>"
endfunc

func SimpleQuote()
  return "''\<C-o>F\'"
endfunc


func DoubleQuote()
  return "\"\"\<C-o>$\<C-o>h"
endfunc

"snipets node
nmap <leader>ni	     :r! cat ~/.nodeSnips/index<CR>
nmap <leader>nc      :r! cat ~/.nodeSnips/collation<CR>
nmap <leader>nb      :r! cat ~/.nodeSnips/serverDb<CR>
"snipets react{
nmap <leader>rc	     :r! cat ~/.nodeSnips/reactComponent<CR>9jw<space>s
nmap <leader>re      :r! cat ~/.nodeSnips/Effect<CR>
nmap <leader>rs      :r! cat ~/.nodeSnips/States<CR>wwce
nmap <leader>rf      :r! cat ~/.nodeSnips/Function<CR>2kfx<space>s
nmap <leader>rfe     :r! cat ~/.nodeSnips/FunctionEvent<CR>2kfx<space>s
nmap <leader>ra      :r! cat ~/.nodeSnips/ArrowFunction<CR>2kJbf{o
nmap <leader>rae     :r! cat ~/.nodeSnips/ArrowFunctionEvent<CR>2kJbf{o
nmap <leader>for     :r! cat ~/.nodeSnips/For<CR>2kfx<space>s
nmap <leader>if      :r! cat ~/.nodeSnips/If<CR>3ko
nmap <leader>btn     :r! cat ~/.nodeSnips/Button<CR>/Fecha<CR>
nmap <leader>lay     :r! cat ~/.nodeSnips/Layout<CR>
nmap <leader>e :e ./
"media queries
nmap <leader>mq	      :r! cat ~/.workSnips/css/media-queries<CR>
"}

"Line-jump
nmap <leader>/ A<CR><ESC>
"File replace several files
"Find
nmap <leader>gf :vimgrep /\<<C-r><C-w>\>/gj *.js<CR>
"View
nmap <leader>gv :cl<CR>
"Replace
nmap  <leader>gr :cfdo %s/\<<C-r><C-w>\>/ /g | update 
"Auto change directory"
set autochdir
"set verbose=9
"scripts auto ejecutables 
autocmd CompleteDone * if !pumvisible() | pclose | endif
"cambiar de directorio al entrar a uh buff

"Scripts por grupos
augroup JavascriptFiles
  autocmd!
  autocmd BufRead *.javascript set filetype=javascript
  autocmd BufRead *.javascript lcd %:p:h
  autocmd Filetype javascript setlocal omnifunc=javascriptcomplete#CompleteJS 
augroup end

augroup HtmlFiles
  autocmd!
  autocmd BufRead *.html set filetype=html
  autocmd Filetype html setlocal omnifunc=htmlcomplete#CompleteHTML
  autocmd BufRead *.html lcd %:p:h
augroup end

augroup CssFiles
  autocmd!
  autocmd BufRead *.css set filetype=css
  autocmd Filetype css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd BufRead *.css lcd %:p:h
augroup end

"augroup NetwrBuffer
"  autocmd!
"  autocmd BufLeave  netrw bw .<C-R>
"augroup end

augroup EnteringOnVim 
  autocmd!
  autocmd VimEnter * browse oldfiles "call the function breowseoldfiles
augroup end

augroup MakingTabs
  autocmd!
  autocmd TabNew * Lexplore "opens toggle left men
  autocmd TabNew * vertical resize 15 "resizes the window 
  autocmd TabNew *  wincmd l "jump to left side
augroup end


augroup remember_folds
  autocmd!
  autocmd BufWinLeave *.* mkview!
  autocmd BufWinEnter *.* silent loadview 
augroup END

"autocmd VimEnter * split 5
"utocmd VimEnter *  wincmd k<CR>
