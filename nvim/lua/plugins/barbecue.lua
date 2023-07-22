return {
  {
    'utilyre/barbecue.nvim',
    name = "barbecue",
    version = "*",
    dependencies = { "SmiteshP/nvim-navic" },
    config = function()
      require("barbecue").setup()
    end
  }
}
