vim.cmd("set expandtab")
vim.cmd("set tabstop=3")
vim.cmd("set softtabstop=3")
vim.cmd("set shiftwidth=3")
vim.opt.nu = true

local modes = { "n", "i", "v", "x", "s", "o" }

for _, mode in ipairs(modes) do
  vim.keymap.set(mode, "<Up>", "<Nop>")
  vim.keymap.set(mode, "<Down>", "<Nop>")
  vim.keymap.set(mode, "<Left>", "<Nop>")
  vim.keymap.set(mode, "<Right>", "<Nop>")
end
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.opt.wrap = false
vim.opt.linebreak = false
vim.cmd("set nowrap")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.opt.relativenumber = true
vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.opt.iskeyword:append("-")
vim.opt.smartindent = true
vim.opt.clipboard = "unnamedplus"
vim.o.guifont = "Hack Nerd Font:h11.5"
vim.keymap.set("n", "<leader>l", "<C-w>l")
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.opt.sidescrolloff = 3
vim.keymap.set("n", "<leader>k", "<C-w>k")
vim.opt.scrolloff = 8
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
vim.diagnostic.config({
  virtual_text = {
    spacing = 2,
    virtual_text = false,
    virtual_lines = true,
  },
  float = {
    border = "rounded",
  },
})

