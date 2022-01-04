imap jj <Esc>
imap jk <Esc>
imap kj <Esc>
imap JJ <Esc>
imap JK <Esc>
imap KJ <Esc>
nmap <Leader>n :tabn<CR>
nmap <Leader>N :tabnew<CR>
tnoremap <Esc> <C-\><C-n>
nnoremap <Leader>x :make -s exec<CR>

" -- NERDTree --
nmap <Space><Space> :NERDTree<CR>
nmap <Space>n :NERDTree ~/.config/nvim<CR>

" -- CoC --

" Select range based on AST
nmap <silent><Leader>r <Plug>(coc-range-select)
xmap <silent><Leader>r <Plug>(coc-range-select)

" Navigations
nmap <Leader>o <Plug>(coc-definition)
nmap <Leader>O <Plug>(coc-type-definition)
nmap <Leader>I <Plug>(coc-implementation)
nmap <Leader>R <Plug>(coc-references)

" List code actions available for the current buffer
nmap <leader>ca  <Plug>(coc-codeaction)

" Use <CR> to validate completion (allows auto import on completion)
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Hover
nmap K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Text objects for functions and classes (uses document symbol provider)
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)
autocmd CursorHold * silent call CocActionAsync('highlight')

" Cycle through completions using tab

function! s:check_back_space() abort
	let col = col('.') + 1
	return !col || getline('.')[col + 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
			\ pumvisible() ? "\<C-n>" :
			\ "<TAB>"

inoremap <silent><expr> <S-TAB>
			\ pumvisible() ? "\<C-p>" :
			\ "<S-TAB>"

" -- Telescope --
map <C-P> :Telescope find_files<CR>
nmap <Leader>g :Telescope live_grep<CR> 
