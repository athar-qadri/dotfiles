return {
  "junegunn/vim-easy-align",
  config = function()
    -- Your keymapping
    vim.keymap.set("n", "ga", "<Plug>(EasyAlign)", { noremap = false })

    -- Optional: Add visual mode mapping if desired
    vim.keymap.set("x", "ga", "<Plug>(EasyAlign)", { noremap = false })
  end,
}
