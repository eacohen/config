""""""""""""""""""
" PLUGIN MANAGER "
""""""""""""""""""

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.

" Colorschemes "
Plug 'danilo-augusto/vim-afterglow'
Plug 'junegunn/seoul256.vim'
Plug 'NLKNguyen/papercolor-theme'

" Terraform highlighting + formatting
Plug 'https://github.com/hashivim/vim-terraform.git'
" Jenkinsfile highlighting
Plug 'martinda/Jenkinsfile-vim-syntax'

" Better status line
Plug 'itchyny/lightline.vim'

" Directory tree
Plug 'scrooloose/nerdtree'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

""""""""""""""""""
" PLUGIN OPTIONS "
""""""""""""""""""

" vim-terraform "

" *.tf files are automatically formatted on save
let g:terraform_fmt_on_save=1

" lightline "

" Helps with enabling 
set laststatus=2
" Don't show old line
set noshowmode

""""""""""""""""
" CUSTOM STUFF "
""""""""""""""""

" Colorscheme
set background=dark
colorscheme PaperColor

" IN SYSTEM VIMRC Allow hidden buffers
"   set hidden

" IN SYSTEM VIMRC Enabling filetype support provides filetype-specific indenting,
"   syntax highlighting, omni-completion and other useful settings.
"   filetype plugin indent on

" Allow better colors
if !has('gui_running')
  set t_Co=256
endif

" Make split bar look better
set fillchars+=vert:│

" Minimal automatic indenting for any filetype.
set autoindent
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
"backspace removes in tabs
set softtabstop=4

" Highlight all search matches
set hlsearch

" CursorLine is visible
" set cursorline
" hi clear CursorLine
" hi CursorLine ctermfg=NONE ctermbg=234

" Turn on (relative) line numbers
set number relativenumber
" Line number style
hi LineNr ctermfg=244 ctermbg=236
hi CursorLineNr ctermfg=226 ctermbg=240

" Turn on spell check
set spell
" Set misspelled words to be red and underlined
hi clear SpellBad
hi SpellBad cterm=underline ctermfg=yellow ctermbg=NONE
