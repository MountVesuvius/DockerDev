source ~/.config/nvim/base/keys.vim
source ~/.config/nvim/base/settings.vim

call plug#begin('/root/.config/nvim/plugins')
	Plug 'catppuccin/nvim', { 'as': 'catppuccin' } 		" Theme
    Plug 'nvim-lua/plenary.nvim'                        " Utility for other plugins
    Plug 'nvim-tree/nvim-web-devicons'                  " Utility icons

	Plug 'szw/vim-maximizer' 				            " Split Utility
	Plug 'numToStr/Comment.nvim' 				        " Comments
    Plug 'nvim-tree/nvim-tree.lua'                      " Dir tree
    Plug 'nvim-lualine/lualine.nvim'                    " status line

    " NOT CURRENTLY SETUP, & MISSING FZF
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' } " fuzzy search
call plug#end()

" Plugin Config
" -------------
source ~/.config/nvim/plugin-config/comment.config.lua
source ~/.config/nvim/plugin-config/nvim-tree.config.lua
source ~/.config/nvim/plugin-config/lualine.config.lua

" Plugin keybinds
source ~/.config/nvim/plugin-config/plugin-keybinds.vim

" Colorscheme
syntax on
set t_Co=256
colorscheme catppuccin-frappe
