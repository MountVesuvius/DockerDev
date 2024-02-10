source ~/.config/nvim/base/keys.vim
source ~/.config/nvim/base/settings.vim

call plug#begin('/root/.config/nvim/plugins')
	Plug 'catppuccin/nvim', { 'as': 'catppuccin' } 		    " Theme
    Plug 'nvim-lua/plenary.nvim'                            " Utility for other plugins

	Plug 'szw/vim-maximizer' 				                " Split Utility
	Plug 'numToStr/Comment.nvim' 				            " Comments
    Plug 'nvim-tree/nvim-tree.lua'                          " Dir tree
call plug#end()

" Plugin Config
" -------------
source ~/.config/nvim/plugin-config/vim-maximizer.config.vim
source ~/.config/nvim/plugin-config/comment.config.vim
source ~/.config/nvim/plugin-config/nvim-tree.config.vim

" Colorscheme
syntax on
set t_Co=256
colorscheme catppuccin-frappe
