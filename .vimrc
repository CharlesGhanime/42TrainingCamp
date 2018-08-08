"Changing VIM Font
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

" enable syntax highlighting
syntax enable

" show line numbers
set number

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

" enable all C syntax highlighting features
let c_highlight_all = 1

"let myvar="my vimrc loaded"

"execute pathogen#infect()

""COLORS :
"let g:solarized_termcolors=256
set background=dark
"colorscheme solarized "awesome colorscheme
"syntax enable "enable syntax processing
"
""SPACES AND TABS :
"set tabstop=4 "number of visual spaces per TAB
"set softtabstop=4 "number of spaces in a tab when editing
"set expandtab "tabs are spaces
"
""UI CONFIG :
"set number "show line number 
"set showcmd "show command in bottom bar
"set cursorline "highlight current line
"filetype indent on "load filetype-specific indent files
"set wildmenu "visual autocomplete for command menu
"set lazyredraw "redraw only when need to
"set showmatch "highlight matching [{()}]
"
""SEARCHING :
"set incsearch "search as characrers are entered
"set hlsearch "highlight matches
"
""turn off search highlight
"nnoremap <leader><space> :nohlsearch<CR>
"
""FOLDING :
"set foldenable "enable folding
"set foldlevelstart=10 "open most folds by default
"set foldnestmax=10 "10 nested folder max
"
""space open/close folds
"nnoremap <space> za
"
"set foldmethod=indent "fold based on indent level
"
"MOVEMENT :

"more vertically by visual line

"nnoremap j gj
"nnoremap k gk

"move to beqinning/end of line
			
"nnoremap B ^
"nnoremap E $

"$/^does'nt do anything

"nnoremap $ <nop>
"nnoremap ^ <nop>

"highlight inserted text

"nnoremap  p gV `[v`]

"LEADER SHORTCUTS :

"let mapleader="," "leader is coma

"jk is escape

"inoremap jk <esc>

"toggle grundo

"nnoremap <leader>u :GrundoToggle<CR>

"edit vimrc/zshrc and load vimrc bindings

"nnoremap <leader>ev :vsp $MYVIMRC<CR>
"nnoremap <leader>ez :vsp ~/.zshrc<CR>
"nnoremap <leader>sv :source $MYVIMRC<CR>

"save session 

"nnoremap <leader>s :mksession<CR>

"open ag.vim
"nnoremap <leader>a :Ag


"controlP settings

"let g:ctrlp_match_window = 'bottom,order:ttb'
"let g:ctrlp_switch_buffer = 0
"let g:ctrlp_working_path_mode = 0
"let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
"let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'


"LAUNCH CONFIG :
"
"call pathogen#infect()                      " use pathogen
"call pathogen#runtime_append_all_bundles()  " use pathogen

"TMUX :
" allows cursor change in tmux mode

"if exists('$TMUX')
"    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
"    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
"else
"    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
"endif
 
"AUTOGROUPS :

"augroup configgroup
"    autocmd!
"    autocmd VimEnter * highlight clear SignColumn
"    autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md
"                \:call <SID>StripTrailingWhitespaces()
"    autocmd FileType java setlocal noexpandtab
"    autocmd FileType java setlocal list
"    autocmd FileType java setlocal listchars=tab:+\ ,eol:-
"    autocmd FileType java setlocal formatprg=par\ -w80\ -T4
"    autocmd FileType php setlocal expandtab
"    autocmd FileType php setlocal list
"    autocmd FileType php setlocal listchars=tab:+\ ,eol:-
"    autocmd FileType php setlocal formatprg=par\ -w80\ -T4
"    autocmd FileType ruby setlocal tabstop=2
"    autocmd FileType ruby setlocal shiftwidth=2
"    autocmd FileType ruby setlocal softtabstop=2
"    autocmd FileType ruby setlocal commentstring=#\ %s
"    autocmd FileType python setlocal commentstring=#\ %s
"    autocmd BufEnter *.cls setlocal filetype=java
"    autocmd BufEnter *.zsh-theme setlocal filetype=zsh
"    autocmd BufEnter Makefile setlocal noexpandtab
"    autocmd BufEnter *.sh setlocal tabstop=2
"    autocmd BufEnter *.sh setlocal shiftwidth=2
"    autocmd BufEnter *.sh setlocal softtabstop=2
"augroup END

"BACKUPS :

"set backup
"set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
"set backupskip=/tmp/*,/private/tmp/*
"set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
"set writebackup

"CUSTOM FUNCTIONS :
" toggle between number and relativenumber
"function! ToggleNumber()
"    if(&relativenumber == 1)
"        set norelativenumber
"        set number
"    else
"        set relativenumber
"    endif
"endfunc
"
"" strips trailing whitespace at the end of files. this
"" is called on buffer write in the autogroup above.
"function! <SID>StripTrailingWhitespaces()
"    " save last search & cursor position
"    let _s=@/
"    let l = line(".")
"    let c = col(".")
"    %s/\s\+$//e
"    let @/=_s
"    call cursor(l, c)
"endfunction
"
""ORGANIZATION :
"" Doug Black
"+--  5 lines: " Colors -------------------------------------
"+--  5 lines: " Misc ---------------------------------------
"+--  9 lines: " Spaces & Tabs ------------------------------
"+--  8 lines: " UI Layout ----------------------------------
"+--  5 lines: " Searching ----------------------------------
"+--  8 lines: " Folding ------------------------------------
"+--  9 lines: " Line Shortcuts -----------------------------
"+-- 21 lines: " Leader Shortcuts ---------------------------
"+--  7 lines: " Powerline ----------------------------------
"+--  6 lines: " CtrlP --------------------------------------
"+--  3 lines: " NERDTree -----------------------------------
"+--  4 lines: " Syntastic ----------------------------------
"+--  6 lines: " Launch Config ------------------------------
"+--  9 lines: " Tmux ---------------------------------------
"+--  4 lines: " MacVim -------------------------------------
"+-- 25 lines: " AutoGroups ---------------------------------
"+--  7 lines: " Backups ------------------------------------
"+-- 50 lines: " Custom Functions ---------------------------
"
"foldmethod=marker
"
"foldlevel=0
"
"set modelines=1
"
"" vim:foldmethod=marker:foldlevel=0
"
"" Section Name {{{
"set number "This will be folded
"" }}}
"
"so ~/.vim/plugins.vim
"
"
