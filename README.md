# vimrc-conf
Primero descarga los archivos: 
1 index
2 collation
3 serverDb

Después, en tu archivo .vimrc agrega la siguiente linea => let mapleader =" ";

es Necesario tener el Plugin para manejar plugins => curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

despues abrimos vim y corremos :PlugInstall
para instalar todos los plugins de nuestro .vimrc
cd ~/
vim .vimrc

Presiona 'i' para cambiar a modo de inserción y después la combinación de teclas ctrl+ shift+ v para pegar desde la papelera

let mapleader =" " 

Para guardar tu archivo una vez que hayas agregado la linea de ´"ḿap leader",
presiona =>  'esc' + ':' +'w'+ 'q' + 'enter'.




En el directorio 'Home' crea .nodeSnips de modo que sea ~/.nodeSnips... dejo los comandos a continuación

cd ~/
mkdir .nodeSnips


Ahora suponiendo que descargaste los 3 archivos en el directorio 'Downloads' en linux

cd Downloads
mv -t ~/.nodeSnips serverDb index collation


¡¡LISTO!!
DISFRUTA de tus templates para vim con los comando en modo de edicion  NORMAL 


<espacio> + ni = template estandar de index node
  
<espacio> + nb = template estandar para insertar collation de node
  
<espacio> + nc = template estandar de conexion mongo - node
  
<espacio> + rs = template estandar de useState react - node
  
<espacio> + re = template estandar de useEffect react - node
  
<espacio> + ra = template estandar de classComponent react - node
  
<espacio> + rc = template estandar de functionComponent react - node
  

