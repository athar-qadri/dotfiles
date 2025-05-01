return {
  --"athar-qadri/scratchpad.nvim",
  dir = "~/Developer/lua/git/scratchpad.nvim/",
  event = "VeryLazy",
  --  dependencies = {
  --    "nvim-lua/plenary.nvim",
  --  },
  --  config = function()
  --    local scratchpad = require("scratchpad")
  --    scratchpad:setup({ settings = { sync_on_ui_close = true, title = "Scratchpad" } })
  --  end,
  --  keys = {
  --    {
  --      "<Leader>es",
  --      function()
  --        local scratchpad = require("scratchpad")
  --        scratchpad.ui:new_scratchpad()
  --      end,
  --      desc = "show scratch pad",
  --
  --      vim.keymap.set({ "n", "v" }, "<leader>ps", function()
  --        local scratchpad = require("scratchpad")
  --        scratchpad.ui:sync()
  --      end, { desc = "Push selection / current line to scratchpad" }),
  --    },
  --  },
  --}
  --
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  keys = {
    {
      "<Leader>es",
      function()
        local scratchpad = require("scratchpad")
        scratchpad.ui:new_scratchpad() -- <-- LINE 29
      end,
      desc = "Open Scratchpad",
    },
    {
      "<leader>sp",
      function()
        local scratchpad = require("scratchpad")
        scratchpad.ui:sync()
      end,
      desc = "Push Selection to Scratchpad",
      mode = { "n", "v" },
    },
  },
  config = function()
    local scratchpad = require("scratchpad")
    scratchpad:setup({ settings = { sync_on_ui_close = true } })
  end,
}
