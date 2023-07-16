return {
  {
    'kdheepak/tabline.nvim',
    config = function()
      require'tabline'.setup({
        options = {
          show_tabs_always = true,
        },
    })
    end
  }
}
