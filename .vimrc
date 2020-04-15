set visualbell

" set relative numbering
set number relativenumber

" set tab configurations
set tabstop=4
set expandtab
set softtabstop=4

" show vim command as it is typed
set showcmd

" jumpts to the last position left at when reopening a file
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
