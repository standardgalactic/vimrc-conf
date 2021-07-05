set hlsearch
set ignorecase
set autoindent
"set noshowmode
set cmdheight=1
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
set wrap
set so=8
set siso=2
set shiftwidth=2
set si
set nolbr
set sta
 	set vsts=3
" append '>>' to indent
set showbreak=>>>



"color del downline schme
let g:lightline = {
			\ 'active':{
			\'left':[['mode','paste'],[], ['relativepath','modified']],
			\'right':[['kitestatus'],['filetype','percent', 'lineinfo'],['gitbranch']]
			\},
			\ 'inactive':{
			\'left':[['inactive'], ['relativepath']],
			\'right':['bufnum']
			\},
			\'component': {
			\'bufnum': '%n',
			\'inactive': 'inactive',
			\},
			\'component_function':{
			\'gitbranch':'fugitive#head',
			\'kitestatus':'kite#statusline'
			\},
			\'colorscheme': 'one',
			\'subseparator':{
			\'left':'',
			\'right':''
			\}
			\}


function! MyMode()
  let fname = expand('%:t')
  return fname == '__Tagbar__' ? 'Tagbar' :
        \ fname == 'ControlP' ? 'CtrlP' :
        \ fname == '__Gundo__' ? 'Gundo' :
        \ fname == '__Gundo_Preview__' ? 'Gundo Preview' :
        \ fname =~ 'NERD_tree' ?  NERDTreeStatusline():
        \ &ft == 'unite' ? 'Unite' :
        \ &ft == 'vimfiler' ? 'VimFiler' :
        \ &ft == 'vimshell' ? 'VimShell' :
        \ winwidth(0) > 60 ? lightline#mode() : ''
endfunction
augroup filetype_nerdtree
	au!
	au FileType nerdtree call s:disable_lightline_on_nerdtree()
	au WinEnter,BufWinEnter,TabEnter * call s:disable_lightline_on_nerdtree()
augroup END

fu s:disable_lightline_on_nerdtree() abort
	let nerdtree_winnr = index(map(range(1, winnr('$')), {_,v -> getbufvar(winbufnr(v), '&ft')}), 'nerdtree') + 1
	call timer_start(0, {-> nerdtree_winnr && setwinvar(nerdtree_winnr, '&stl', '%#Normal#')})
endfu



"texto
syntax on
"interface
set ruler
set relativenumber
set title

"miscelaniuos
set confirm
set history=10000
set noswapfile
set undodir=~/.vim/undodir
set undofile


"debailitar las flechas
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>

let g:coc_disable_startup_warning = 1

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'
Plug 'mattn/emmet-vim'
Plug 'morhetz/gruvbox'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
"Plug 'mbbill/undotree'
"Plug 'leafgarland/typescript-vim'
Plug 'vim-scripts/CSS-one-line--multi-line-folding'
"Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
call plug#end()

"color del tema
colorscheme gruvbox
set background=dark

if executable('rg')
	let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']




"set del espacioo como 'combo de habilidades'
let mapleader =" "
"mapeo del tab nueva tab
nnoremap <C-t> :tabnew<CR>
"mapo del movimiento entre tabs 
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt

"mapeo del movimiento en ventanas
nnorem	<leader>h :wincmd h<CR>
nnorem	<leader>j :wincmd j<CR>
nnorem	<leader>k :wincmd k<CR>
nnorem	<leader>l :wincmd l<CR>

"mapeo del Vsplit window size<---->
nnoremap <leader>> 10<C-w>>
nnoremap <leader>< 15<C-w><
"saltar  hasta abajo
nnoremap<leader>a G<CR>
"guardado
nnoremap<leader>w :w<CR>
nnoremap<leader>q :q<CR>

vnoremap <leader>aa G<CR>


"kite
let g:kite_supported_languages = ['*']
let g:kite_tab_complete=0
let g:kite_snippets=0
"let g:kite_auto_complete=0
"let g:kite_completions = 0
set cot=menu,preview,menuone,noinsert

autocmd filetype javascript "let b:coc_suggest_disable = 1
autocmd filetype HTML/CSS "let b:coc_suggest_disable = 1

"if &filetype=="javascript" || &filetype=="HTML/CSS"
"	inoremap <C-space><C-x><C-u>
"else
"	inoremap <silent><expr><C-space> coc#fresh()
"endif


autocmd CompleteDone * if !pumvisible() | pclose | endif


"mapeo de la copia global
vmap <leader>y :w! /tmp/vitmp<CR>                                           
nmap <leader>p :r! cat /tmp/vitmp<CR>
nmap <leader>ni :r! cat ~/.nodeSnips/index<CR>
nmap <leader>nc :r! cat ~/.nodeSnips/collation<CR>
nmap <leader>nb :r! cat ~/.nodeSnips/serverDb<CR>
nmap <leader>rc :r! cat ~/.nodeSnips/reactComponent<CR>
nmap <leader>ra :r! cat ~/.nodeSnips/reactApp<CR>
nmap <leader>re :r! cat ~/.nodeSnips/Effect<CR>

