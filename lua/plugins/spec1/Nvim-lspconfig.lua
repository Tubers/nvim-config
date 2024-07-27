return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
  },

  config = function()
    local lspconfig = require("lspconfig")
    lspconfig.lua_ls.setup({})
    lspconfig.clangd.setup({})
    lspconfig.pyright.setup({
       settings = {
                python = {
                    pythonPath = "C:/Users/ljcg3/AppData/Local/Programs/Python/Python312",
                },
            },
    })
    lspconfig.zls.setup({})
    lspconfig.sqlls.setup({})

    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
    vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
    vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
  end,
}
