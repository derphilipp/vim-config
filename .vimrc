set nocompatible
filetype off

let Tlist_Ctags_Cmd='/opt/local/bin/ctags'

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'vim-scripts/Lucius'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'Syntastic'
Bundle 'taglist.vim'
Bundle 'ctags.vim'
Bundle 'minibufexpl.vim'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" Git Integration
Bundle "git.zip"
Bundle "fugitive.vim"
" (HT|X)ml tool
Bundle "ragtag.vim"




filetype plugin indent on     " required! 
syntax on

set showmatch  " Show matching brackets.
set matchtime=5  " Bracket blinking.
set tabstop=4    " Set the default tabstop
set softtabstop=4
set shiftwidth=4 " Set the default shift width for indents
set expandtab   " Make tabs into spaces (set by tabstop)
set smarttab " Smarter tab levels

set nowrap
set textwidth=0		" Don't wrap lines by default
set wildmode=longest,list " At command line, complete longest common string, then list alternatives.

set backspace=indent,eol,start	" more powerful backspacing

set fo+=o " Automatically insert the current comment leader after hitting 'o' or 'O' in Normal mode.
set fo-=r " Do not automatically insert a comment leader after an enter
set fo-=t " Do no auto-wrap text using textwidth (does not apply to comments)

set autowrite  " Writes on make/shell commands
set autoread  
set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)

set pastetoggle=<F10> "  toggle between paste and normal: for 'safer' pasting from keyboard
set tags=./tags;$HOME " walk directory tree upto $HOME looking for tags

set number

"let g:syntastic_auto_loc_list=1
"let g:syntastic_disabled_filetypes=['html']
"let g:syntastic_enable_signs=1
"let g:syntastic_python_checker = 'flake8'



":#set mouse=nicr
set mouse=a

colorscheme lucius

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
map P :TlistToggle<CR>

" Einstellungen für C++ autocompletion
autocmd FileType python set omnifunc=pythoncomplete#Complete

" Einstellungen für C++ Checker
let g:syntastic_cpp_compiler_options = ' -std=c++11 -D_GLIBCXX_USE_NANOSLEEP'

"Einstellungen für C++ Autocompletion
"
let OmniCpp_NamespaceSearch = 1      
let OmniCpp_GlobalScopeSearch = 1      
let OmniCpp_ShowAccess = 1      
let OmniCpp_MayCompleteDot = 1      
let OmniCpp_MayCompleteArrow = 1      
let OmniCpp_MayCompleteScope = 1      
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]  
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif      
set completeopt=menuone,menu,longest,preview

set tags+=~/.vim/tags/stl
"set tags+=~/.vim/tags/gl
"set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/qt4

set list
set list listchars=tab:▸\ ,trail:⋅,nbsp:⋅

set clipboard=unnamed
