:set relativenumber
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a


call plug#begin('~/.config/nvim/plugged')

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors

Plug 'lervag/vimtex'
Plug 'arzg/vim-colors-xcode'


Plug 'dccsillag/magma-nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'dccsillag/magma-nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'akinsho/toggleterm.nvim', {'tag' : 'v1.*'}
call plug#end()

"Nerdtree
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapseible="~"
nnoremap <C-f> :NERDTreeToggle<CR>


"Coc
nnoremap <C-l> :call CocAtionAsync('jumpDefinition')<CR>
inoremap <silent><expr> <Tab> pumvisible() ? coc#_select_confirm() : "\<Tab>"

"Vimtex
let g:vimtex_view_method = 'zathura'

"Xcode
colorscheme xcode
let g:xcode_green_comments = 1 
let g:xcode_emph_funcs = 1 
let g:xcode_emph_types= 0



"ToggleTerm
lua require("toggleterm").setup()

" set
autocmd TermEnter trm://*toggleterm#*
      \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

" By applying the mappings this way you can pass a count to your
" mapping to open a specific window.
" For example: 2<C-t> will open terminal 2
nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>e

"magma-nvim
nnoremap <silent><expr> <LocalLeader>w  :MagmaEvaluateOperator<CR>
nnoremap <silent>       <LocalLeader>ww :MagmaEvaluateLine<CR>
xnoremap <silent>       <LocalLeader>w  :<C-u>MagmaEvaluateVisual<CR>
nnoremap <silent>       <LocalLeader>wc :MagmaReevaluateCell<CR>
nnoremap <silent>       <LocalLeader>wd :MagmaDelete<CR>
nnoremap <silent>       <LocalLeader>wo :MagmaShowOutput<CR>

let g:magma_automatically_open_output = v:false
let g:python3_host_prog = '/home/nealx/miniconda3/bin/python3'
let g:magma_image_provider = "kitty"
