-- line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- tabs and indentation
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true

vim.opt.smartindent = true

-- line wrapping
vim.opt.wrap = false

-- editor history
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- text searching
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- appearance
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.colorcolumn = "80"

vim.opt.scrolloff = 8 -- Always have 8 line at the bottom of the screen
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- backspace
vim.opt.backspace = "indent,eol,start"

-- split windows
vim.opt.splitright = true
vim.opt.splitbelow = true

-- update time, the length of Vim waits before you stop
-- typing before it triggers it triggers the plugin governed by setting
vim.opt.updatetime = 500
