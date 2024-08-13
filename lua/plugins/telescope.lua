return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    end
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }

          }
        }
      }
      require("telescope").load_extension("ui-select")
    end
  }, {
  'nvim-telescope/telescope-fzf-native.nvim',
  config = function()
    require('telescope').load_extension('fzf')
  end
}, {

  "nvim-telescope/telescope-file-browser.nvim",
  config = function()
    require("telescope").load_extension("file_browser")
      vim.keymap.set("n", "<space>fb", ":Telescope file_browser path=%:p:h select_buffer=true<CR><ESC>")
  end
},
}
