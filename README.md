# vimrc-conf
---
## For first timers:<br>
1.- Download all files from git@github.com:includeovalle/vimrc-conf.git
1.- Primero descarga los archivos: git@github.com:includeovalle/vimrc-conf.git 
---
2.- Download this plugin in order to easily install this 4 pluggins
        curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

•Plug 'itchyny/lightline.vim'
•Plug 'mattn/emmet-vim'
•Plug 'morhetz/gruvbox'
•Plug 'Yggdroot/indentLine'

2.- Descarga  este manejador de plugins para instalar estos 4 plugins
        curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
•Plug 'itchyny/lightline.vim'
•Plug 'mattn/emmet-vim'
•Plug 'morhetz/gruvbox'
•Plug 'Yggdroot/indentLine'
---
3.- after that we open vim and execute this command :PlugInstall
3.- despues abrimos vim y corremos :PlugInstall
---
4.- In ~/ create a folder named .nodeSnips so you can access cd ~/.nodeSnips/
4.- En el directorio ~/ crea un folder llamado .nodeSnips de modo que sea cd ~/.nodeSnips/

cd ~/
mkdir .nodeSnips
---
5.-Copy all files of the this folder to ~/.nodeSnips/
5.-Copia todos los archivos de este folder a ~/.nodeSnips/
---
DONE enjoy from some snipets as well as some configurations
¡¡LISTO!!
DISFRUTA de tus templates para vim 
---
Mode  | Command | Result
---
Node-Snipets
__---
normal | <leader>ni| template estandar de index node
normal  <leader>nb = template estandar para insertar collation de node
normal  <leader>nc = template estandar de conexion mongo - node
__________________
React-Snipets
__________________
normal  <leader>rs = template estandar de useState react - node
normal  <leader>re = template estandar de useEffect react - node
normal  <leader>ra = template estandar de arrow function
normal  <leader>rc = template estandar de functionComponent react - node
normal  <leader>flex = template estandar de styled-components
normal  <leader>layout = template estandar de layout react 
normal  <leader>c insert a console.log()
__________________
Vim Commands
__________________
normal  <F1> = Enter to your ~/.nodeSnips folder
normal  <F2> = Enter to your ~/.vimrc
normal  <F4> = Buffer list and pick one same as :ls <cr> :b
normal  <F5> = Updates to last vimrc local conf ~/.vimrc  same as :so ~/.vimrc
normal  <leader><Tab> saves document and jumps to last document opened
normal  <leader>w saves the current document same as :w
normal  <leader>q saves the current document same as :q
normal  <leader>{1-9} =Jump to tab 1, 2,3, 4 etc as you need
normal  <leader>e = edit a file same as :e
normal  <leader>f = shows a command we need to put inside the quotes the word to look for in the current directory
normal  <leader>s = Search and replace a word for the word we enter on the entire document
normal  <leader>; =insert // at the begining of the line
normal  <leader>/ =insert <CR>
normal	<leader>h =moves to left window
normal	<leader>j =moves to down window
normal	<leader>k =moves to up window
normal	<leader>l =mover to right window
normal  <leader>a  =same as G may jump to {1-999} line or to last bottom of the document
normal  <leader>ff = shows all coincidences in the document from the word under the cursor 
normal  <leader>ss = Search and replace a word for the word we enter on the entire document
normal  <leader>cp = copies the whole document to the clipboard
normal  <leader>z{ folding { with a char infront example: function(){}	
normal  <leader>{ folding { with nothing infront example: {}	
normal  <leader>z[ folding
normal  <leader>[ folding
normal  <leader>z( folding
normal  <leader>( folding


normal  <shift>T  = open new tab
normal  <control>y =insert explore window same as :Lexplore


insert  <TAB> shows an autocomplete menu
__________________
MACROS
__________________
let @p puts the current word between quotes ""
let @o puts the current word between {}
let @u puts the current word between ()
let @i puts the current word between ''

  
"=========================================================
"comandos git/ comandos globales
"=========================================================
normal <Leader>gs :! git status<CR>
normal <Leader>gc :! git commit -a -m''
normal <Leader>ga :! git add .<CR>
normal <Leader>gp :! git push -u origin<CR>

