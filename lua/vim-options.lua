vim.cmd("set expandtab")
vim.cmd("set tabstop=3")
vim.cmd("set softtabstop=3")
vim.cmd("set shiftwidth=3")
vim.opt.nu = true vim.opt.relativenumber = true vim.opt.wrap = true
vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>l", "<C-w>l")
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>k", "<C-w>k")
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.lazyredraw = false
vim.opt.ttyfast = true
vim.opt.termguicolors = true
vim.opt.lazyredraw = false
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
