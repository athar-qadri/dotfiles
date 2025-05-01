return {
  --"athar-qadri/scratchpad.nvim",
  dir = "~/Developer/lua/git/quake.nvim/",
  -- event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "rcarriga/nvim-notify",
  },
  config = function()
    local quake = require("quake")
    quake:setup({
      --settings = { update_interval = 60 * 1000, minimum_magnitude = 3.5 },
      --settings = { update_interval = 60 * 1000, minimum_magnitude = 4, location = { lat = 21.4241, lon = 39.8173 } },
      --settings = { update_interval = 60 * 1000, minimum_magnitude = 4, location = { lat = 52.54, lon = 17.39 } },
      --home
      settings = {
        update_interval = 60 * 10 * 1000,
        minimum_magnitude = 5,
        location = { lat = 34.0698, lon = 74.8090 },
      },
      --settings = { update_interval = 20 * 1000, minimum_magnitude = 4, temperature_unit = "celsius" },
    })
    --quake.start()
    require("quake.notify").start()
  end,
}
