" Custom Vim Configuration

" ~Teal

set encoding=utf-8

"-----------------------------------------------
"                   Plugins
"-----------------------------------------------

call plug#begin('~/.vim/plugged')

    "Startify
        Plug 'mhinz/vim-startify'

    "Git Gutter
        Plug 'airblade/vim-gitgutter'

    "Syntax better
        Plug 'Valloric/YouCompleteMe'
        Plug 'w0rp/ale'

    "Large Projects
        Plug 'majutsushi/tagbar'
        Plug 'scrooloose/nerdtree'

    "fzf
        "Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
        Plug 'junegunn/fzf.vim'

    "Code Completion
        "Plug 'Shougo/neocomplete'
        "Plug 'Shougo/neosnippet'

    "Powerline
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'

    "Latex Editing
    "    Plug 'vim-latex/vim-latex'
        Plug 'lervag/vimtex'

    "Syntax Improvements
        Plug 'plasticboy/vim-markdown'
        Plug 'elzr/vim-json'
        "Plug 'pangloss/vim-javascript'
        Plug 'othree/yajs.vim'
        Plug 'rust-lang/rust.vim'
        Plug 'octol/vim-cpp-enhanced-highlight'
        Plug 'mephux/bro.vim'
        Plug 'kongo2002/fsharp-vim'

    "Bracket Completion
        "Plug 'Raimondi/delimitMate'

    "Themes
        Plug 'dracula/vim'

    "Tpope is the man!
        Plug 'tpope/vim-speeddating'
        Plug 'tpope/vim-surround'
        Plug 'tpope/vim-fugitive'
        Plug 'tpope/vim-repeat'
        Plug 'tpope/vim-commentary'
        " Plug 'tpope/vim-sensible'

    "Misc
        Plug 'dylanaraps/wal'
        Plug 'godlygeek/tabular'
        Plug 'christoomey/vim-tmux-navigator'
        Plug 'morhetz/gruvbox'
        Plug 'dbeniamine/cheat.sh-vim'

call plug#end()

" Rebind <Leader> key
    let mapleader      = ","
    let maplocalleader = ","

"Commands

"MakeTags
command! MakeTags !ctags -R .

" Color Scheme Fixes
set t_Co=256            "256 Color support

"color jellybeans        "Jellybeans!
"colorscheme vorange
"colorscheme rupza
color wal


"Shortcuts

"VIMRC edit
    nnoremap <leader>vrc :edit ~/.vimrc<CR>

"Compiling
augroup compile
    autocmd!
    autocmd FileType c silent! nnoremap <leader>ll :silent !clear<CR>:!make<CR>:silent !read<CR>:redraw!<CR>
    autocmd FileType c silent! nnoremap <leader>lt :silent !clear<CR>:!make test<CR>:silent !read<CR>:redraw!<CR>
    autocmd FileType cpp silent! nnoremap <leader>ll :silent !clear<CR>:!make<CR>:silent !read<CR>:redraw!<CR>
    autocmd FileType cpp silent! nnoremap <leader>lt :silent !clear<CR>:!make test<CR>:silent !read<CR>:redraw!<CR>
    autocmd FileType cs silent! nnoremap <leader>ll :silent !clear<CR>:silent !mcs *.cs -out:out.exe<CR>:silent !read<CR>:silent !./out.exe<CR>:silent !read<CR>:silent !rm out.exe<CR>:silent !color<CR>:redraw!<CR>
    autocmd FileType python silent! nnoremap <leader>ll :silent !clear<CR>:!python3 %<CR>:silent !read<CR>:redraw!<CR>
    autocmd FileType go silent! nnoremap <leader>lt :silent !clear<CR>:!go test<CR>:silent !read<CR>:redraw!<CR>
    autocmd FileType ruby silent! nnoremap <leader>ll :silent !clear<CR>:!ruby %<CR>:silent !read<CR>:redraw!<CR>
    autocmd FileType rust silent! nnoremap <leader>ll :silent !clear<CR>:!cargo run<CR>:silent !read<CR>:redraw!<CR>
    autocmd FileType rust silent! nnoremap <leader>lt :silent !clear<CR>:!cargo test<CR>:silent !read<CR>:redraw!<CR>
    autocmd FileType rust silent! nnoremap <leader>ld :silent !clear<CR>:!cargo doc --open<CR>:silent !read<CR>:redraw!<CR>
    autocmd FileType rust silent! nnoremap <leader>lit :silent !clear<CR>:!cargo test -- --ignored<CR>:silent !read<CR>:redraw!<CR>
    autocmd FileType java silent! nnoremap <leader>ll :silent !clear<CR>:!gradle run<CR>:silent !read<CR>:redraw!<CR>
    autocmd FileType java silent! nnoremap <leader>lt :silent !clear<CR>:!gradle test<CR>:silent !read<CR>:redraw!<CR>
    autocmd BufRead *.b silent! nnoremap <leader>ll :silent !clear<CR>:silent !bfi %<CR>:silent !read<CR>:redraw!<CR>
augroup END

" FZF keybindings
    noremap <leader>f <Esc>:Files<CR>
    noremap <leader>ta <Esc>:Tags<CR>

" Startify
    let g:startify_files_number = 5

"Gutter
    let g:gitgutter_sign_added = '∙'
    let g:gitgutter_sign_modified = '∙'
    let g:gitgutter_sign_removed = '∙'
    let g:gitgutter_sign_modified_removed = '∙'

"Buffers
    nnoremap <leader>bn :bn<CR>
    nnoremap <leader>bp :bp<CR>
    nnoremap <leader>cb :bw<CR>

"Swap semicolon and colon
    noremap ; :
    noremap : ;

"Bind a quit key
    noremap <leader>e :bw<CR>

"Learn to stop arrow keys
    nnoremap <Left> :echoe "Use h"<CR>
    nnoremap <Right> :echoe "Use l"<CR>
    nnoremap <Up> :echoe "Use k"<CR>
    nnoremap <Down> :echoe "Use j"<CR>


"Goyo for miminalist work
    noremap <leader>\ :Goyo<CR>:set nu<CR>:set relativenumber<CR>

"NerdTree
    noremap <leader>nt <Esc>:NERDTreeToggle<CR>

"TagBar
    noremap <leader>tb <Esc>:TagbarToggle<CR>

" Unhilight search
    noremap  <C-n> :nohl<CR>
    vnoremap <C-n> :nohl<CR>
    inoremap <C-n> :nohl<CR>

"Move between splits infinitly easier
    nnoremap <c-j> <c-w>j
    nnoremap <c-k> <c-w>k
    nnoremap <c-l> <c-w>l
    nnoremap <c-h> <c-w>h
    set splitbelow
    set splitright

"Let K be the opposite of J
    noremap K i<Enter><Esc>

"Block Indent
    vnoremap > >gv

"OmniComplete better menu navigation
    inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
    inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>

" Learn to stop using BASIC NAVIGATION
" noremap h <NOP>
" noremap j <NOP>
" noremap k <NOP>
" noremap l <NOP>

"Map sort function to a key
"       vnoremap <Leader>s :sort<CR>




"Some Lovely Spacing



"Autowrite on :make or :next
set autowrite


"Spell  Checking
augroup spellcheck
    autocmd!
    autocmd FileType mail setlocal spell spelllang=en_au
    autocmd BufRead *.tex,*.md setlocal spell spelllang=en_au
augroup END
set spellfile=~/.vim/spell.en.add
nmap <leader>= 1z=


"You Complete me fix
let g:ycm_filetype_blacklist = { 'config': 1, 'binary': 1, 'vim': 1 }
let g:ycm_rust_src_path = '$HOME/Sources/rust/src'

let g:ale_completion_enabled = 0



"Vim latex
"let g:Tex_MathMenus = 0
"let g:Tex_DefaultTargetFormat = "pdf"
"let g:Tex_MultipleCompileFormats = "pdf,bib,pdf"

let g:vimtex_compiler_latexmk = {
    \ 'backend' : 'jobs',
    \ 'background' : 1,
    \ 'build_dir' : '',
    \ 'callback' : 0,
    \ 'continuous' : 1,
    \ 'executable' : 'latexmk',
    \ 'options' : [
    \   '-pdf',
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \   '-shell-escape',
    \ ],
\}

let g:vimtex_view_method = "zathura"

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

" Disable Mouse Support
set mouse=

augroup misc
    autocmd!
    " Automatic reloading of .vimrc
    autocmd! bufwritepost .vimrc nested source %

    "Stop Gross Paste Bugs
    autocmd! InsertLeave * set nopaste
augroup END

"Save on focus lost
:au FocusLost * :wa


" Better copy & paste
set pastetoggle=<F2>
set clipboard^=unnamed

" Show whitespace
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/


" Enable syntax highlighting
filetype off
filetype plugin indent on
syntax on


" Showing line numbers and length
set nu  " show line numbers
set nuw=6
set relativenumber
set tw=79               " width of document (used by gd)
set nowrap              " don't automatically wrap on load
set fo-=t               " don't automatically wrap text when typing
set colorcolumn=128     " Maximum line length
highlight ColorColumn ctermbg=237

"Warning when line is getting too long
highlight LineTooLong ctermbg=magenta
call matchadd('LineTooLong', '\%81v', 100)

" Useful settings
set history=700     "Stores 700 Commands in history
set undolevels=700  "Stores lots of undos
set ruler           "Show cursor at all times


" Spaces as tabs ;P
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set smartindent


" Make searchs better
set hlsearch
set incsearch
set ignorecase
set smartcase
set wrapscan


" Disable stupid backup and swap files
set nobackup
set nowritebackup
set noswapfile

" Settings for Goyo
let g:goyo_width = 120


" Settings for vim-airline
set laststatus=2
let g:airline_theme='minimalist'
let g:airline_section_b = '%{strftime("%H:%M")}'
let g:airline_section_c = ' %m'
""" Spacer ""
let g:airline_section_x = '%f'
let g:airline_section_y = '%Y'
let g:airline_section_z = '%p%% ☰  %l/%L'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#format = 2
let g:airline_powerline_fonts = 1
set noshowmode

""" Unicode ""
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

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
            return "\<C-N>
        elseif a:action == 'k'
            return "\<C-P>
        endif
    endif
    return a:action
endfunction

"Color Scheme Fixes
hi Normal ctermfg=250 ctermbg=none
hi NonText ctermfg=250 ctermbg=none
hi Search ctermfg=red ctermbg=none
hi MatchParen cterm=none ctermbg=green ctermfg=black

" Italic comments
set t_ZH=[3m
set t_ZR=[23m
hi Comment cterm=italic



"Troll Command
"exec 'set colorcolumn=' . join(range(2,200,3), ',')


command ExercismSubmit !exercism submit %:t

"if $SSH_CONNECTION
"    colorscheme dracula
"endif


"End Of File

"colorscheme dracula
