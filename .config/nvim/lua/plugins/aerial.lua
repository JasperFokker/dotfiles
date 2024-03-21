return {
  {
    "stevearc/aerial.nvim",
    opts = {},
    -- Optional dependencies
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("aerial").setup({
        on_attach = function(bufnr)
          -- Jump forwards/backwards with '{' and '}'
          vim.keymap.set("n", "9", "<cmd>AerialPrev<CR>", { buffer = bufnr })
          vim.keymap.set("n", "0", "<cmd>AerialNext<CR>", { buffer = bufnr })
        end,
      })

      vim.keymap.set("n", "<leader>o", "<cmd>AerialToggle!<CR>")
    end,
  },
}
