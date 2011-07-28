set nocompatible "no plain vi compatability
syntax on
set ts=2
set ai
set number
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set hlsearch
set incsearch
set mouse=a

"filetype on "Auto detect filetypes
filetype plugin indent on

"Add recently accessed projects menu (project plugin)
set viminfo^=!

"Stuff from Steve's
set cursorline
set title
set ruler
set ls=2

set ttyfast "better support for faster terms
set hidden "stop annoying multi buffer loaded thing

set wildmode=longest,list "bash style autocomplete options
set wildmenu "help autocomplete vim commands


"Open all buffers in new tabs
"au BufAdd,BufNewFile * nested tab sball
"Ctrl-Tab switch tabs
nmap <C-Tab> :tabn<CR>

"In visual mode, selecton with keypress # will do #{selection}
vmap # c#{}<Esc>hpl

"Map Ctrl-t to launch commant-t
map <C-T> :CommandT<CR>
let g:CommandTMaxHeight=10

"Scroll follow at least 10 lines
set scrolloff=10

if has('gui') == 0
  "avoiding annoying CSApprox warning message
  let g:CSApprox_verbose_level = 0
  colorscheme desert
else
  set t_Co=256
  "colorscheme candycode  "quite like this theme
  colorscheme inkpot "nice theme too
endif

"Stuff from using vim as rails IDE
"alt+n, alt_p navigate beween entires in QuickFix
map <slient> <m-p> :cp <cr>
map <slient> <m-n> :cn <cr>

set autowrite "Writes on make/shell commands

"Look at these and decide if want:
"set nocp incsearch
"set cinoptions=:0,p0,t0
"set cinwords=if,else,while,do,for,switch,case
"set formatoptions=tcqr
"set cindent

" Visual stuff
set showmatch "Show matching brackets
set mat=5 "Bracket blinking
set list
"Show $ at end of line and tailing spaces as ~
"set lcs=tab:\ \,eol:$,trail:~,extends:>,precedes:<
set lcs=trail:~
"^^^ seems invalid

"Launch NERDTree on open
autocmd VimEnter * NERDTree
