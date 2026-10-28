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

  {
    "nvimtools/none-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      opts.sources = vim.tbl_filter(function(s)
        return not (type(s) == "table" and (s.name or ""):find("markdownlint"))
      end, opts.sources or {})
      table.insert(
        opts.sources,
        nls.builtins.diagnostics.markdownlint_cli2.with({
          extra_args = { "--config", vim.fn.stdpath("config") .. "/.markdownlint-cli2.yaml" },
        })
      )
    end,
  },
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      linters = {
        ["markdownlint-cli2"] = {
          prepend_args = {
            "--config",
            vim.fn.stdpath("config") .. "/.markdownlint-cli2.yaml",
          },
        },
      },
    },
  },
}
