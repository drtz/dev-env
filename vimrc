let g:pathogen_disabled = ['syntastic']
if !has('gui_running')
	call add(g:pathogen_disabled, 'YouCompleteMe')
endif

call pathogen#infect()
call pathogen#helptags()

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*

set shiftwidth=4
set tabstop=4
set expandtab
autocmd FileType go setlocal shiftwidth=2 tabstop=2 expandtab!
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType hbs setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd FileType scss setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

set smartindent
set hlsearch
set incsearch
set noswapfile

"if exists("g:did_load_filetypes")
"	filetype off
"	filetype plugin indent off
"endif
"set runtimepath+=$GOROOT/misc/vim " replace $GOROOT with the output of: go env GOROOT
"filetype plugin indent on
"

filetype plugin indent on
syntax on

set guifont=Menlo:h10

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Command line mappings
:noremap <F1> :!grunt build<CR> 

colorscheme koehler

set splitbelow
set splitright

" CtrlP
let g:ctrlp_working_path_mode = ''

" vim-go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1

" vim-jsx
let g:jsx_ext_required = 0

" YCM
if has("gui_running")
	let g:ycm_autoclose_preview_window_after_insertion = 1
endif

" Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildignore+=*/public/*,*/node_modules/*,*/bower_components/*,*/vendor/*

" Clipboard
"vnoremap <C-c> "*y
"vnoremap <C-v> "+

