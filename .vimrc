set visualbell

" set relative numbering
set number relativenumber

" set tab configurations
set expandtab
set tabstop=4
set softtabstop=4

" set smart coding 
set autoindent
set shiftwidth=4
set smartindent

inoremap " ""<left>
inoremap <expr> " strpart(getline('.'), col('.')-1, 1) == "\"" ? "\<Right>" : "\"\"\<Left>"
inoremap ' ''<left>
inoremap <expr> ' strpart(getline('.'), col('.')-1, 1) == "\'" ? "\<Right>" : "\'\'\<Left>"
inoremap ( ()<left>
inoremap <expr> ) strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
inoremap [ []<left>
inoremap <expr> ] strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"
inoremap { {}<left>
inoremap <expr> } strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" show vim command as it is typed
set showcmd

" set a column at the 81st character 
"set textwidth=80
"set colorcolumn=+1
set colorcolumn=81
highlight ColorColumn ctermbg=lightgrey guibg=lightgrey

" jumps to the last position left at when reopening a file
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
