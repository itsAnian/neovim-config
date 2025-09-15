-- ~/.config/nvim/lua/plugins/monokai-pro.lua (for example)

return {
  {
    "loctvl842/monokai-pro.nvim",
    priority = 1000,        -- make sure it loads early so colorscheme is applied
    lazy = false,            -- load immediately (or you can lazy load on some event)
    config = function()
      require("monokai-pro").setup({
        -- your options, example:
        transparent_background = false,
        terminal_colors = false,
        devicons = true,
        styles = {
          comment = { italic = true },
          keyword = { italic = true },
          type = { italic = true },
          storageclass = { italic = true },
          structure = { italic = true },
          parameter = { italic = true },
          annotation = { italic = true },
          tag_attribute = { italic = true },
        },
        filter = "pro", -- classic | octagon | pro | machine | ristretto | spectrum
        background_clear = {
          "float_win", "toggleterm", "telescope"
        },
        -- etc...
      })
      vim.cmd([[colorscheme monokai-pro]])
    end,
  },
}
