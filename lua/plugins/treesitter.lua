return {
   {
      "nvim-treesitter/nvim-treesitter",
      branch = "main",
      build = ":TSUpdate",
      config = function()
         require("nvim-treesitter").setup({
            install_dir = vim.fn.stdpath("data") .. "/treesitter",
         })

         local group = vim.api.nvim_create_augroup("MyTreesitterSetup", { clear = true })

         local langs = {
            lua = true,
            vim = true,
            vimdoc = true,
            javascript = true,
            typescript = true,
            tsx = true,
            json = true,
            bash = true,
            prisma = true,
         }

         vim.api.nvim_create_autocmd("FileType", {
            group = group,
            callback = function(args)
               local ft = vim.bo[args.buf].filetype
               if langs[ft] then
                  vim.treesitter.start(args.buf)
                  vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
               end
            end,
         })
      end,
   },
}
