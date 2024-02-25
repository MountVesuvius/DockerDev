local lsp_zero_status, lsp_zero = pcall(require, 'lsp-zero')
if not lsp_zero_status then
    return
end

local mason_status, mason = pcall(require, 'mason')
if not mason_status then
    return
end

local lspconfig_status, lspconfig = pcall(require, 'mason-lspconfig')
if not lspconfig_status then
    return
end

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

mason.setup({})
lspconfig.setup({
    ensure_installed = {
      'bashls',
      'clangd',
      'html',
      'lua_ls',
      'pyright',
      'tsserver',
      'rust_analyzer',
    },
    handlers = {
        lsp_zero.default_setup,
    },
})

lspconfig.pyright.setup{}
