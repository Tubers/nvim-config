return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier, -- js, ts, css, html, json
        null_ls.builtins.formatting.black,    -- python
        --null_ls.builtins.formatting.pylint,-- python
        null_ls.builtins.formatting.isort,    -- python

        null_ls.builtins.formatting.clang_format, -- c, cpp
      },
    })
    vim.keymap.set("n", "<leader>KK", vim.lsp.buf.format, {})
  end,
}
