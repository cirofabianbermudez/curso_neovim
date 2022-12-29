# Comandos de nvim



## Instalación

1. Instalar [Scoop](https://scoop.sh/) el cual es un package maneger para Windows.

   1. Abrir Windows PowerShell en modo administrador, copiar y pegar comando y después ejecutar.

      ```
      scoop --version
      ```

2. En Scoop dar clic en `Find Packages` y buscar `neovim`

   1. A 15/02/2022 esta la versión Neovim 0.6.1, dar clic en ver el comando que hay que ejecutar

   2. Abrir Windows PowerShell en modo administrador, copiar y pegar comando y después ejecutar.

      ```
      scoop install neovim
      scoop update neovim
      ```

3. Instalar el manejador de plugins `vim-plug`

   1. Abrir en la pagina de GitHub el repositorio.
   2. Abrir Windows PowerShell en modo administrador, copiar y pegar comando y después ejecutar.

4. En la ruta `C:\Users\UserName\AppData\Local` crear la carpeta `nvim`

   1. Crear un archivo con nombre `init.vim`
   2. En este archivo pegar todas las configuraciones y personalizaciones que se muestran en la plantilla

5. Para instalar los paquetes es necesario guardar el archivo `init.vim` con las configuraciones y plugins a instalar.

   1. Ejecutar `:PlugInstall` para ejecutar los comando dentro de `init.vim`
   2. Es necesario reiniciar nvim para que los cambiar surtan efecto
   3. Para desinstalar los paquetes únicamente es necesario modificar el archivo `init.vim`, guardarlo y después ejecutar `:PlugClean`



## Plantilla 

```
""set path+=**
""set wildmenu

set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
"set sw=4
set tabstop=4
set shiftwidth=4
set expandtab
"set relativenumber
set laststatus=2
set noshowmode

" Extras
"set smartindent
"set smartcase

call plug#begin('~/.vim/plugged')

" Temas
Plug 'morhetz/gruvbox'
" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
" Autocomplete
call plug#end()

colorscheme gruvbox 
"set background=dark
let g:gruvbox_contrast_dark = "hard"
let NERDTreeQuitOnOpen=1

let mapleader=" "

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

" Comandos custom
nmap <Leader>y :%y+<CR>
nmap <Leader>yy :%d<CR>

nmap <Leader>k :tabnext<CR>
nmap <Leader>j :tabprevious<CR>
nmap <Leader>h ^
nmap <Leader>l $
nmap <Leader>, a<
nmap <Leader>. a>

nnoremap ,<space> :nohlsearch<CR>
```



|                      |                                                 |
| -------------------- | ----------------------------------------------- |
| `set number`         | Números de linea                                |
| `set mouse=a`        | Interactuar con el mouse                        |
| `syntax eneable`     | Sintaxis                                        |
| `set showcmd`        |                                                 |
| `set encoding=utf-8` | Codificación                                    |
| `set showmatch`      | Mostrar resaltado par de corchetes o parentesis |
| `set relativenumber` | Números relativos para moverse más rápído.      |
| ``                   |                                                 |
| ``                   |                                                 |
| ``                   |                                                 |





```
set number
set mouse=a
syntax eneable
set showcmd
set encoding=utf-8
set showmatch

call plug#begin('~/.vim/plugged')
" Temas
Plug 'sainnhe/gruvbox-material'

call plug#end()


" GRUVBOX configuration
set background=dark
let g:gruvbox_material_background="medium"
colorscheme gruvbox-material

```



## Tutorial

Para abrir el tutorial abrir `nvim` en una terminal y después ejecutar `:Tutor`. Este tutorial es muy bueno para conocer los fundamentos de este editor de código.



## Cheat Sheet

En el siguiente [link](https://vim.rtorr.com/) hay una buena cantidad de comandos de nvim para checar después





## Comandos básicos

| Comando                     | Descripción                     |
| --------------------------- | ------------------------------- |
| `nvim <filename>`           | Abrir nvim                      |
| `:q`                        | Salir                           |
| `:w`                        | Guardar                         |
| `:w <filename>`             | Guardar archivo con otro nombre |
| `:qw` o `:x`                | Salir y guardar                 |
| `:q!`                       | Forzar salir                    |
| `:! <command>`              | Ejecutar comando de terminal    |
| `: Ctrl + p` y `: Ctrl + n` | Ver el último comando ejecutado |
| `:%y+`                      | Copiar todo el documento        |



## Comandos avanzados

| Comando                    | Descripción                                                  |
| -------------------------- | ------------------------------------------------------------ |
| `:s/<text_1>/<text_2>`     | Sustituir `<text_1>` por `<text_2>` en la misma línea una ocurrencia |
| `:s/<text_1>/<text_2>/g`   | Sustituir `<text_1>` por `<text_2>` en la misma línea todas las ocurrencias |
| `:%s/<text_1>/<text_2>/g`  | Sustituir `<text_1>` por `<text_2>` en el archivo todas las ocurrencias |
| `:%s/<text_1>/<text_2>/gc` | Sustituir `<text_1>` por `<text_2>` en el archivo todas las ocurrencias preguntando en cada ocurrencia |



## Movimiento

**Básico**

| Comando | Descripción |
| ------- | ----------- |
| `j`     | Abajo       |
| `k`     | Arriba      |
| `h`     | Izquierda   |
| `l`     | Derecha     |

**Avanzado**

| Comando    | Descripción                                                  |
| ---------- | ------------------------------------------------------------ |
| `w`        | Word - una palabra hacia delante, cursor al principio        |
| `b`        | Back - una palabra hacia atras, cursor al principio          |
| `e`        | End - una palabra hacia delante, cursor al final             |
| `0`        | Principio de línea                                           |
| `$`        | Final de línea                                               |
| `gg`       | Primera linea del archivo a la izquierda                     |
| `G`        | Última linea del archivo a la izquierda                      |
| `12G`      | Moverse a la línea 12                                        |
| `gd`       | Moverse a declaración local                                  |
| `gf`       | Goto file - Abre en la misma ventana                         |
| `Ctrl + o` | Buffer anterior                                              |
| `Ctrl + i` | Buffer posterior                                             |
| `/<texto>` | Busca del cursor en adelante las coincidencias del texto     |
| `?<texto>` | Busca del cursor en atrás las coincidencias del texto        |
| `n`        | Next - moverse a la siguiente aparición de la búsqueda       |
| `N`        | Next - moverse a la anterior aparición de la búsqueda        |
| `f<char>`  | Encuentra la primera aparición del carácter y salta a el     |
| `t<char>`  | Encuentra la primera aparición del carácter después          |
| `T<char>`  | Encuentra la primera aparición del carácter antes            |
| `%`        | Moverse entre paréntesis, llaves o corchetes correspondientes |





## Insertar

| Comando | Descripción                                                  |
| ------- | ------------------------------------------------------------ |
| `i`     | Insert - a la izquierda del cursor                           |
| `a`     | Append - a la derecha del cursor                             |
| `A`     | Append - a la derecha al final de la línea                   |
| `o`     | Insert - nueva línea abajo                                   |
| `O`     | Insert - nueva línea arriba                                  |
| `dd`    | Cortar línea                                                 |
| `2dd`   | Cortar 2 líneas                                              |
| `x`     | Borrar caracter                                              |
| `p`     | Paste - pegar en la linea de abajo                           |
| `P`     | Paste - pegar en la línea de arriba                          |
| `r`     | Replace - remplaza un carácter                               |
| `cw`    | Change Word - cambiar una palabra, ubicarse al principio de la palabra |
| `ciw`   | Change Inner Word - cambiar dentro de la palabra **IMPORTANTE** |
| `ci[`   | Change Inner Brackets - cambiar dentro de los corchetes      |
| `R`     | Modo remplazar                                               |
|         |                                                              |





| Comando    | Descripción                               |
| ---------- | ----------------------------------------- |
| `u`        | Undo -  deshacer                          |
| `Ctrl + r` | Redo - hacer                              |
| `>>`       | Indexar derecha                           |
| `>>`       | Indexar izquierda                         |
| `yy`       | Copiar una línea                          |
| `2yy`      | Copiar dos líneas                         |
| `yiw`      | Copiar una palabra                        |
| `J`        | Join - unir dos líneas dejando un espacio |



## Modo visual

| Comando | Descripción          |
| ------- | -------------------- |
| `v`     | Entrar a modo visual |
| `y`     | Yank - copiar        |
| `>`     | Shift text right     |
| `<`     | Shift text right     |



## Operadores

+ Se pueden combinar con los operadores de movimiento

| Comando | Descripción                             |
| ------- | --------------------------------------- |
| `d-`    | Operador borrar / cortar                |
| `dw`    | Cortar palabra                          |
| `de`    | Cortar hasta el final de la palabra     |
| `db`    | Cortar hasta el principio de la palabra |
| `d$`    | Cortar hasta el final de la linea       |
| `d5w`   | Cortar 5 palabras hasta el principio    |



## Atajos

| Comando                 | Descripción                  |
| ----------------------- | ---------------------------- |
| `ZZ`                    | Guardar y salir              |
| `ZQ`                    | Salir                        |
| `Ctrl + n` o `Ctrl + p` | Autocompletar                |
| `Shift + k`             | Ver documentación de función |
| `Ctrl + o`              | Último cursor hacia atrás    |
| `Ctrl + i`              | Último cursor hacia delante  |





## Configuraciones extra

1. Entrar a la ruta `blablabal` y crear una carpeta con el nombre de `nvim`.
2. Crear un archivo dentro con el nombre de `init.vim`
3. Modificar el archivo para tener todas nuestras configuraciones



* Para entrar desde nvim a nuestro archivo de configuración lo podemos hacer con `:e $MYVIMRC` 



1. Abrir una terminal como administrador y copiar los comandos





* En NERDTree presionar `m` para abrir menu
* En NERDTREE presionar `s` para hacer split





## Comandos extras



| Comando                 | Descripción                                                  |
| ----------------------- | ------------------------------------------------------------ |
| `:set path?`            | Ver que valor tiene `path`                                   |
| `:find <filename>`      | Abre el archivo que tenga ese nombre, es necesario tener `set path+=**` en `init.vim`. Ejemplos de filename `test.py`, `*.c`, `codes/*.c` |
| `:ls`                   | Checar los buffers abiertos                                  |
| `:b <string>`           | Cambiar al buffer con alguna coincidencia del string         |
| `:edit <filename>`      | Abrir y editar archivo en el mismo directorio                |
| `:bw`                   | Cerrar buffer                                                |
| `:bd` p `:bd#n`         | Cerrar buffer o numero de buffer                             |
| `Ctrl + n` o `Ctrl + p` | Autocompletado                                               |
| `Ctrl + xf`             | Autocompletado para nombres de archivo                       |
| `Ctrl + xn`             | Autocompletado palabras en el archivo                        |
| `:edit .`               | Abre un manejador de archivos. `t` abrir en una nueva pestaña, `s` abrir en split |
| `gt`                    | Ir a la tab posterior `:tabn`                                |
| `gT`                    | Ir a la tab anterior `:tabN` o `:tabp`                       |



## Comandos de PowerShell

| Comando            | Descripción                                    |
| ------------------ | ---------------------------------------------- |
| `tree` o `tree /f` | Lista en forma de árbol                        |
| `cd`               | Para cambiar de directorio                     |
| `ls` o `dir`       | Para listar el directorio                      |
| `mkdir`            | Crear un nuevo directorio                      |
| `rm`               | Borrar un archivo o directorio vacio           |
| `rmu -rf `         | Borrar recursivamente un directorio **CUSTOM** |
| `mv`               | Mover un archivo o renombrar                   |
| `cp`               | Copiar un archivo                              |





Vim tutor review

| Commands                 | Description                                                  |
| ------------------------ | ------------------------------------------------------------ |
| `k↑  j↓  h←  l→`         | Basic movement                                               |
| `w`                      | Move to the next word forward, and place the cursor at the beginnig. |
| `b`                      | Move to the previous word backward, and place the cursor at the beginnig. |
| `e`                      | Move to the next word forward, and place the cursor at the end. |
| `ge`                     | Move to the next word backward, and place the cursor at the end. |
| `f<any-letter>`          | Move to the next `<any-letter>` in the line,                 |
| `F<any-letter>`          | Move to the previous `<any-letter>` in the line,             |
| `$`                      | Move to the end of the line.                                 |
| `0`                      | Move to the star of the line.                                |
| `<C-u>`                  | Move up 1/2 page                                             |
| `<C-d>`                  | Move down 1/2 page                                           |
| `u`                      | Undo the last command.                                       |
| `U`                      | Fix a whole line.                                            |
| `<C-r>`                  | Control + r redo                                             |
| `<Esc>`                  | Normal mode                                                  |
| `:q!`                    | Exit vim                                                     |
| `:w`                     | Save current file                                            |
| `:wq`                    | Save and quit                                                |
| `x`                      | Delete character                                             |
| `i`                      | Enter insert mode to the left of the current character       |
| `I`                      | Enter insert mode at the first character in the current line. |
| `a`                      | Enter insert mode to the right of the current character      |
| `A`                      | Append. Enter insert mode at the end of the line.            |
| `o`                      | Open a new line below the cursor and place you in Insert mode |
| `O`                      | Open a new line above the cursor and place you in Insert mode |
| `operator motion`        | Many commands that chande text are made from an operator and a motion |
| `dw`                     | Delete the word until the start of the next word, the cursor has to be at the beginning of the word. |
| `de`                     | Delete the word to the end of the current word.              |
| `d$`   `D`               | Delete till the end of the line, including the cursor character. |
| `number motion`          | Typing a number before a motion repeats it that many times.  |
| `2w`                     | Move two words forward, place the cursor at the begininnig of the word |
| `3e`                     | Move two words forward, place the cursor at the end of the word |
| `operator number motion` | Combinations of operator number and motion                   |
| `d2w`                    | Delete two word until the start of the next word.            |
| `dd`                     | Delete current line and store it in a vim register           |
| `2dd`                    | Delete two lines including the one where the cursor is at.   |
| `p`                      | Put whatever the vim register have in the line below the cursor. Or to the right of the cursor if it is not a line |
| `P`                      | Put whatever the vim register have in the line above the cursor. Or to the left of the cursor if it is not a line |
| `r<any-letter>`          | Replace the character where the cursor ir with `<any-letter>` |
| `ce`      `cw`           | Change until the end of a word including the current character, is a combination of delete andinsert mode. |
| `c$`      `C`            | Change until the end of a word including the current line, including the current character. |
| `<C-g>`                  | Show the location in a file and the file status.             |
| `<any-number>G`          | Move to the `<any-number>` line                              |
| `gg`                     | Move to the start of the file                                |
| `G`                      | Move to the bottom of the file                               |
| `/<some-phase>`          | Type `/` followed by a phrase to search for the phrase. To search for the same phrase again, simply type `n`. To search for the same phrase in the opposite direction, type `N`. |
| `?<some-phase>`          | To search for a phrase in the backward direction, use `?`instead of `/` |
| `<C-o>`                  | Go back where you came from after a search                   |
| `<C-i>`                  | Go forward where you came from after a search                |
| `%`                      | Type `%`  to find a matching ),], or }.                      |
| `:s/old/new`             | Sustitute command, new for old, first mach                   |
| `:s/old/new/g`           | Sustitute command, new for old, the flag `g` means globally in the line |
| `:#,#s/old/new/g`        | To change every occurrence of a character string between two lines, where #,# are the line numbers of the range of lines where the substitution is to be done. |
| `:%s/old/new/g`          | to change every occurrence in the whole file.                |
| `:%s/old/new/gc`         | to find every occurrence in the whole file, with a prompt whether to substitute or not. |
| `:!<command>`            | Execute external commands                                    |
| `v`                      | Enter Visual selection                                       |
| `:'<,>w TEST'`           | While in Visual selection press `:` and then `w TEST` saves the selection in a new file call TEST |
| `:r FILE`                | Insert the content of a file                                 |
| `:0r FILE`               | Insert the content of a file with no extra line              |
| `:r !dir`                | Insert the output of the `dir` comman                        |
| `R`                      | Enters replace mode                                          |
| `y`                      | Yank command, the same as copy, it is used in combination with the visual mode and motion commands. |
| `yw`                     | Yank a to the end of the word.                               |
| `yiw`                    | Yank inside the current word.                                |
| `:set ic`                | ignorecase in a search                                       |
| `:set is`                | increment search to show partial matches                     |
| `:set hls`               | highlight all matching phrases                               |
| `:set invic`             | Invert the current configuration of ic                       |
| `:set noic`              | Switch off the option                                        |
| `:help` or `F1`          | To search for help                                           |
| `<C-w><C-w>`             | Change between split windows                                 |
| `:e<C-d>`                | Shows a list of command beginnig with e                      |
| `<C-w>s`  `:sp filenam`  | Split horizontally                                           |
| `<C-w>v`  `:vsp filenam` | Split vertically                                             |
|                          |                                                              |

