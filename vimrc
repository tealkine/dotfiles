" Custom Vim Configuration
"
" ~Teal


"-----------------------------------------------
"                   Plugins
"-----------------------------------------------

call plug#begin('~/.vim/plugged')

    "Syntax better
    "    Plug 'vim-syntastic/syntastic'
         Plug 'Valloric/YouCompleteMe'
    "    Plug 'dbakker/vim-lint'

    "For Learning Vim
        Plug 'wikitopian/hardmode'

    "Compile and run
        Plug 'xuhdev/SingleCompile'

    "Large Projects
        Plug 'majutsushi/tagbar'
        Plug 'scrooloose/nerdtree'
        Plug 'wincent/Command-T'

    "Code Completion
        "Plug 'Shougo/neocomplete'
        "Plug 'Shougo/neosnippet'

    "Powerline
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'

    "Latex Editing
        Plug 'vim-latex/vim-latex'

    "Syntax Improvements
        Plug 'othree/yajs.vim'
        Plug 'plasticboy/vim-markdown'
        Plug 'elzr/vim-json'
        Plug 'pangloss/vim-javascript'
        Plug 'rust-lang/rust.vim'
        Plug 'chrisbra/csv.vim'
        Plug 'octol/vim-cpp-enhanced-highlight'

    "Bracket Completion
        "Plug 'Raimondi/delimitMate'

    "Markdown Editing
        Plug 'junegunn/goyo.vim'
        Plug 'amix/vim-zenroom2'

    "Tpope is the man!
        Plug 'tpope/vim-speeddating'
        Plug 'tpope/vim-surround'
        Plug 'tpope/vim-fugitive'
        Plug 'tpope/vim-repeat'
        Plug 'tpope/vim-commentary'

    "Misc
        "Plug 'neomake/neomake'
        Plug 'fmoralesc/vim-tutor-mode'
        " Plug 'tpope/vim-sensible'
        " Plug 'uguu-org/vim-matrix-screensaver'
        Plug 'dylanaraps/wal'
        Plug 'godlygeek/tabular'

call plug#end()

" Rebind <Leader> key
    let mapleader = ","
    let maplocalleader = ","

"Commands
"
"MakeTags
command! MakeTags !ctags -R .

" Color Scheme Fixes
set t_Co=256            "256 Color support
"color jellybeans        "Jellybeans!
colorscheme wal

"Shortcuts
"
"DEMOS
    nnoremap <leader>dmp  :silent !cp -n /usr/share/templates/example.py  /tmp/example.py <CR>:silent edit /tmp/example.py <CR>:redraw!<CR>
    nnoremap <leader>dmc  :silent !cp -n /usr/share/templates/example.cpp /tmp/example.cpp<CR>:silent edit /tmp/example.cpp<CR>:redraw!<CR>
    nnoremap <leader>dmr  :silent !cp -rn /usr/share/templates/rustdemo /tmp/rustdemo     <CR>:silent edit /tmp/rustdemo/Cargo.toml<CR>:silent edit /tmp/rustdemo/src/main.rs<CR>:redraw!<CR>
    nnoremap <leader>ndmp :silent !cp /usr/share/templates/example.py  /tmp/example.py    <CR>:silent edit /tmp/example.py <CR>:redraw!<CR>
    nnoremap <leader>ndmc :silent !cp /usr/share/templates/example.cpp /tmp/example.cpp   <CR>:silent edit /tmp/example.cpp<CR>:redraw!<CR>
"
"VIMRC edit
    nnoremap <leader>vrc :edit /root/.vimrc<CR>
"
"Compiling
    autocmd FileType c silent! nnoremap <leader>ll :silent !clear<CR>:silent !gcc %<CR>silent !./a.out<CR>:silent !rm a.out<CR>:silent !read<CR>:redraw!<CR>
    autocmd FileType cpp silent! nnoremap <leader>ll :silent !clear<CR>:silent !g++ %<CR>:silent !./a.out<CR>:silent !rm a.out<CR>:silent !read<CR>:redraw!<CR>
    autocmd FileType python silent! nnoremap <leader>ll :silent !clear<CR>:!python3 %<CR>:silent !read<CR>:redraw!<CR>
    autocmd FileType rust silent! nnoremap <leader>ll :silent !clear<CR>:!cargo run<CR>:silent !read<CR>:redraw!<CR>
    autocmd FileType markdown silent! nnoremap <leader>ll :silent !mdview % <CR>:redraw!<CR>
    autocmd FileType java silent! nnoremap <leader>ll :silent !clear<CR>:silent !javac %<CR>:!echo % \| awk -F. '{print $1}' \| xargs java<CR>:silent !read<CR>:redraw!<CR>
    autocmd BufRead *.b silent! nnoremap <leader>ll :silent !clear<CR>:silent !bfi %<CR>:silent !read<CR>:redraw!<CR>
"
"Buffers
    nnoremap <leader>bn :bn<CR>
    nnoremap <leader>bp :bp<CR>
    nnoremap <leader>cb :bw<CR>
"
"Swap semicolon and colon
    noremap ; :
    noremap : ;
"
"Bind a quit key
    noremap <leader>e :bw<CR>
"
" Learn to stop arrow keys
    noremap <Up> <NOP>
    noremap <Down> <NOP>
    noremap <Left> <NOP>
    noremap <Right> <NOP>
"
"Goyo for miminalist work
    noremap <leader>\ :Goyo<CR>:set nu<CR>:set relativenumber<CR>
"
"NerdTree
    noremap <leader>nt <Esc>:NERDTreeToggle<CR>
"
"TagBar
    noremap <leader>tb <Esc>:TagbarToggle<CR>
"
" Unhilight search
    noremap  <C-n> :nohl<CR>
    vnoremap <C-n> :nohl<CR>
    inoremap <C-n> :nohl<CR>
"
"Move between splits infinitly easier
    map <c-j> <c-w>j
    map <c-k> <c-w>k
    map <c-l> <c-w>l
    map <c-h> <c-w>h
"
"Let K be the opposite of J
    noremap K i<Enter><Esc>
"
"Block Indent
    vnoremap < <gv
    vnoremap > >gv
"
"OmniComplete better menu navigation
    inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
    inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>
"
" Learn to stop using BASIC NAVIGATION
" noremap h <NOP>
" noremap j <NOP>
" noremap k <NOP>
" noremap l <NOP>
"
"Map sort function to a key
"       vnoremap <Leader>s :sort<CR>




"Some Lovely Spacing



"Autowrite on :make or :next
set autowrite


"Spell  Checking
autocmd BufRead *.tex,*.md setlocal spell spelllang=en_au
set spellfile=~/.vim/spell.en.add
nmap <leader>= 1z=


"You Complete me fix
let g:ycm_filetype_blacklist = { 'config': 1, 'binary': 1, 'vim': 1 }

"Vim latex
let g:Tex_DefaultTargetFormat = "pdf"

"Function Keys
set notimeout
set ttimeout
set timeoutlen=10


"Fixes Backspace
set backspace=2


"Disable folding
set nofoldenable
let g:vim_markdown_folding_disabled=1


" NerdTree Config
let NERDTreeHijackNetrw=1 "Put Nerdtree into a window
autocmd FileType nerdtree silent! noremap <buffer> j <down>
autocmd FileType nerdtree silent! noremap <buffer> k <up>
autocmd FileType nerdtree silent! map <buffer> h o
autocmd FileType nerdtree silent! map <buffer> l o


" Disable Mouse Support
autocmd BufEnter * set mouse=


" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc nested source %


"Stop Gross Paste Bugs
autocmd! InsertLeave * set nopaste


"Save on focus lost
:au FocusLost * :wa


" Better copy & paste
set pastetoggle=<F2>
set clipboard=unnamed

" Show whitespace
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/


" Enable syntax highlighting
filetype off
filetype plugin indent on
syntax on


" Showing line numbers and length
set number  " show line numbers
set relativenumber
set tw=79               " width of document (used by gd)
set nowrap              " don't automatically wrap on load
set fo-=t               " don't automatically wrap text when typing
set colorcolumn=120     " Maximum line length
highlight ColorColumn ctermbg=234


"Warning when line is getting too long
highlight LineTooLong ctermbg=magenta
call matchadd('LineTooLong', '\%81v', 100)


" Useful settings
set history=700     "Stores 700 Commands in history"
set undolevels=700  "Stores lots of undos


" Real programmers don't use TABs but spaces
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set smartindent


" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase


" Disable stupid backup and swap files
set nobackup
set nowritebackup
set noswapfile


" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif


" Settings for Goyo
let g:goyo_width = 120


" Settings for vim-airline
set laststatus=2
let g:airline_theme='monochrome'
let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_c = '%{fugitive#statusline()}'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
set noshowmode


"Ignore bad files for fuzzyfinder
set wildignore+=tags
set wildignore+=*.un~
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*
set wildignore+=*.o,*.obj,*~
set wildignore+=*.class


" Better navigating through omnicomplete option list
set completeopt=longest,menuone
function! OmniPopup(action)
    if pumvisible()
        if a:action == 'j'
            return "\<C-N>"
        elseif a:action == 'k'
            return "\<C-P>"
        endif
    endif
    return a:action
endfunction

"Color Scheme Fixes
hi Normal ctermfg=250 ctermbg=none
hi NonText ctermfg=250 ctermbg=none
hi Search ctermfg=red ctermbg=none
hi MatchParen cterm=none ctermbg=green ctermfg=black



"Troll Command
"exec 'set colorcolumn=' . join(range(2,200,3), ',')


"End Of File
