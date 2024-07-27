return {
  'nvim-treesitter/nvim-treesitter',
  run = ':TSUpdate',

  config = function ()
    local installs = require("nvim-treesitter.install")
    installs.compilers = { "zig", "clang"}

    local configs = require("nvim-treesitter.configs")

    configs.setup({
      auto_install = true,
      sync_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
