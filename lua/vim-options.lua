vim.cmd("set expandtab")
vim.cmd("set tabstop=3")
vim.cmd("set softtabstop=3")
vim.cmd("set shiftwidth=3")
vim.opt.nu = true vim.opt.relativenumber = true vim.opt.wrap = true
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
vim.keymap.set("n", "<leader>f", function ()
   vim.cmd("!npx prisma format")
end)
