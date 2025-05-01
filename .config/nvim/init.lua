require("athar.core")
require("athar.lazy")

--vim.cmd.colorscheme("catppuccin-mocha")

vim.keymap.set("n", "<C-j>", ":m .+1<CR>==", { noremap = true, silent = true }) -- Move current line down
vim.keymap.set("n", "<C-k>", ":m .-2<CR>==", { noremap = true, silent = true }) -- Move current line up

------- Insert mode mappings
-----vim.keymap.set("i", "<C-j>", "<Esc>:m .+1<CR>==gi", { noremap = true, silent = true })  -- Move line down and return to insert mode
-----vim.keymap.set("i", "<C-k>", "<Esc>:m .-2<CR>==gi", { noremap = true, silent = true })  -- Move line up and return to insert mode
-----
------- Visual mode mappings
-----vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })  -- Move selected lines down
-----vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })  -- Move selected lines up

--vim.lsp.set_log_level("debug")
--vim.lsp.log.set_format_func(vim.inspect)
