local cmp_status, cmp = pcall(require, "cmp")
if not cmp_status then
    return
end

local luasnip_status, luasnip = pcall(require, "luasnip")
if not luasnip_status then
    return
end


-- friendly-snippets
require("luasnip/loaders/from_vscode").lazy_load()

vim.opt.completeopt = "menu,menuone,noselect"

cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end
    },
    mapping = cmp.mapping.preset.insert({
        ["<C-i>"] = cmp.mapping.select_prev_item(),
        ["<C-k>"] = cmp.mapping.select_next_item(),
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4), 
        ["<C-Space>"] = cmp.mapping.complete(), -- show completion
        ["<C-e>"] = cmp.mapping.abort(), -- close completion window
        ["<CR>"] = cmp.mapping.confirm({ select = false }),
    }),
    sources = cmp.config.sources({
        { name = "luasnip" },
        { name = "buffer" }, -- text within current buffer
        { name = "path" }, -- file system paths
    }),
})
