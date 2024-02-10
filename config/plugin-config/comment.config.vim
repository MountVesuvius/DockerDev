lua << EOF

local setup, comment = pcall(require, "Comment")
if not setup then
	return
end

comment.setup()

EOF

" Comment keybinds
nmap <leader>cl gcc
vmap <leader>cl gc
