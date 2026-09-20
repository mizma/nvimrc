return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        marksman = {
          mason = false,
          cmd = { "marksman", "server" },
        },
      },
    },
  },
}
