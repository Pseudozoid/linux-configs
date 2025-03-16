vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.number = true

-- tabs and indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.wrap = true
opt.linebreak = true
opt.breakindent = true

-- search settings
opt.ignorecase = true
opt.smartcase = true

opt.background = "dark"
opt.termguicolors = true

opt.clipboard:append("unnamedplus")

opt.splitright = true
opt.splitbelow = true


