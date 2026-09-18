return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        marksman = {
          mason = false, -- Tells LazyVim/Mason to use system `marksman`
        },
      },
    },
  },
}
