return {
  {
    "mbbill/undotree",
    keys = {
      { "<leader>uu", "<cmd>UndotreeToggle<cr>", desc = "Toggle Undotree" },
    },
    cmd = "UndotreeToggle",  -- Optional: lazy-load on command too
    init = function()
      -- Optional custom settings (see :help undotree for more)
      vim.g.undotree_WindowLayout = 4  -- Example layout
      vim.g.undotree_ShortIndicators = 1
      vim.g.undotree_HelpLine = 0
      vim.g.undotree_SplitWidth = 30
    end,
  },
}
