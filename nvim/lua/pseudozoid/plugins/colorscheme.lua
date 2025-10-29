return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  config = function()
    -- You can add optional configuration for gruvbox here if you want
    -- For example:
    -- require("gruvbox").setup({
    --   contrast = "dark", -- or "soft", "hard"
    --   -- ... other options
    -- })

    -- Set the colorscheme
    vim.cmd("colorscheme gruvbox")
  end,
}
