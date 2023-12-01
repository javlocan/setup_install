-- set leader key to space
vim.g.mapleader = " "

require("config.lazy")
require("config.keymaps")
require("config.options")

require("lazy").setup({
  { import = "theme.onedark" },
  { import = "plugins" },
  { import = "plugins.lsp" },
}, {
  install = {
    colorscheme = { "onedark" },
  },
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
})
