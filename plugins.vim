call plug#begin()

Plug 'tpope/vim-surround' " Surrounding ysw)
Plug 'preservim/nerdtree' " NerdTree
Plug 'tpope/vim-commentary' " For Commenting gcc & gc
Plug 'vim-airline/vim-airline' " Status bar
Plug 'ap/vim-css-color' " CSS Color Preview
Plug 'rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'neoclide/coc.nvim', {'branch':'release'}  " Auto Completion
Plug 'tpope/vim-fugitive' " Git commands
Plug 'nvim-lua/plenary.nvim' " lua functions
Plug 'nvim-telescope/telescope.nvim' " Fuzzy finder 
Plug 'ellisonleao/glow.nvim' " Markdown preview
Plug 'windwp/nvim-autopairs' " Self-closing tags
" Plug 'BurntSushi/ripgrep' " telescope dependencie
" Plug 'neovim/nvim-lspconfig'
" Plug 'phpactor/phpactor', {'for': 'php', 'tag': '*', 'do': 'composer install --no-dev -o'}

call plug#end()

lua <<EOF
require('nvim-autopairs').setup{}
EOF
