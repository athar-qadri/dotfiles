return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    local harpoon = require("harpoon")
    harpoon:setup()

    local conf = require("telescope.config").values
    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end

      require("telescope.pickers")
        .new({}, {
          prompt_title = "Harpoon",
          finder = require("telescope.finders").new_table({
            results = file_paths,
          }),
          previewer = conf.file_previewer({}),
          sorter = conf.generic_sorter({}),
        })
        :find()
    end

    require("which-key").add({
      { "<leader>h", group = "[h]arpoon" },
    })

    vim.keymap.set("n", "<leader>hh", function()
      toggle_telescope(harpoon:list())
    end, { desc = "open harpoon window" })

    vim.keymap.set("n", "<leader>th", function()
      toggle_telescope(harpoon:list())
    end, { desc = "[t]oggle [h]arpoon" })

    vim.keymap.set("n", "<leader>ha", function()
      harpoon:list():add()
    end, { desc = "[h]arpoon [a]dd" })

    vim.keymap.set("n", "<leader>hp", function()
      harpoon:list():prev()
    end, { desc = "[h]arpoon [p]revious buffer" })

    vim.keymap.set("n", "<leader>hn", function()
      harpoon:list():next()
    end, { desc = "[h]arpoon [n]ext buffer" })

    ---- harpoon github readme... ctrl + key mapping <C-h> is ctrl + h
    --vim.keymap.set("n", "<C-h>", function()
    --  harpoon:list():select(1)
    --end)

    --vim.keymap.set("n", "<C-t>", function()
    --  harpoon:list():select(2)
    --end)

    --vim.keymap.set("n", "<C-n>", function()
    --  harpoon:list():select(3)
    --end)

    --vim.keymap.set("n", "<C-s>", function()
    --  harpoon:list():select(4)
    --end)
  end,
  keys = {
    --{
    --  "<leader>a",
    --  function()
    --    require("harpoon"):list():add()
    --  end,
    --  desc = "harpoon file",
    --},
    {
      "<leader>a",
      function()
        local harpoon = require("harpoon")
        harpoon:setup({ settings = { save_on_toggle = true } })
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      desc = "harpoon quick menu",
    },
    ...,
  },
}
