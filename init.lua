-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local prefix
if vim.fn.has("win32") == 1 then
  -- spzenhan only for Windows
  prefix = vim.fn.expand("$LOCALAPPDATA") .. "/nvim"
  vim.cmd("source " .. prefix .. "/vimscript/spzenhan/spzenhan.vim")
  -- windows doesn't support standard compiler.
  require("nvim-treesitter.install").compilers = { "zig", "clang" }
end
