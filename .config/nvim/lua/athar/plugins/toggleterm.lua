return {
  {
    "akinsho/toggleterm.nvim",
    config = true,
    cmd = "ToggleTerm",
    shell = vim.o.shell,
    keys = {
      { "<F4>", "<cmd>ToggleTerm<cr>", desc = "Toggle floating terminal" },
      { "<leader>0", "<Cmd>2ToggleTerm<Cr>", desc = "Terminal #2" },
      {
        "<leader>tv",
        function()
          local count = vim.v.count1
          require("toggleterm").toggle(count, 0, vim.loop.cwd(), "vertical")
        end,
        desc = "ToggleTerm (vertical)",
      },
      {
        "<leader>th",
        function()
          local count = vim.v.count1
          require("toggleterm").toggle(count, 10, vim.loop.cwd(), "horizontal")
        end,
        desc = "ToggleTerm (horizontal)",
      },
    },
    opts = {
      open_mapping = [[<F4>]],
      direction = "float",
      shade_filetypes = {},
      hide_numbers = true,
      insert_mappings = true,
      terminal_mappings = true,
      start_in_insert = true,
      close_on_exit = true,
    },
  },
}
