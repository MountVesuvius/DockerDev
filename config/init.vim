source ~/.config/nvim/base/keys.vim
source ~/.config/nvim/base/settings.vim

call plug#begin('/root/.config/nvim/plugins')
	Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
	Plug 'szw/vim-maximizer'
call plug#end()

source ~/.config/nvim/vim-maximizer/settings.vim

" Colorscheme
syntax on
set t_Co=256
colorscheme catppuccin-frappe
