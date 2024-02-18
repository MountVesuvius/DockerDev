source ~/.config/nvim/base/keys.vim
source ~/.config/nvim/base/settings.vim

call plug#begin('/root/.config/nvim/plugins')
	Plug 'catppuccin/nvim', { 'as': 'catppuccin' } 		" Theme
    Plug 'nvim-lua/plenary.nvim'                        " Utility for other plugins
    Plug 'nvim-tree/nvim-web-devicons'                  " Utility icons

    " Basic Editor Utilities
	Plug 'szw/vim-maximizer' 				            " Split Utility
	Plug 'numToStr/Comment.nvim' 				        " Comments
    Plug 'nvim-tree/nvim-tree.lua'                      " Dir tree
    Plug 'nvim-lualine/lualine.nvim'                    " status line
    Plug 'windwp/nvim-autopairs'                        " pairing

    " Autocomplete
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'

    " Snippets
    Plug 'L3MON4D3/LuaSnip'
    Plug 'saadparwaiz1/cmp_luasnip'
    Plug 'rafamadriz/friendly-snippets'

    " Fuzzy Search
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' } " fuzzy search
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

call plug#end()

" Plugin Config
" -------------
source ~/.config/nvim/plugin-config/comment.config.lua
source ~/.config/nvim/plugin-config/nvim-tree.config.lua
source ~/.config/nvim/plugin-config/lualine.config.lua
source ~/.config/nvim/plugin-config/telescope.config.lua
source ~/.config/nvim/plugin-config/autopair.config.lua
source ~/.config/nvim/plugin-config/nvim-cmp.config.lua

" Plugin keybinds
source ~/.config/nvim/plugin-config/plugin-keybinds.vim

" Colorscheme
syntax on
set t_Co=256
colorscheme catppuccin-frappe
