local client = vim.lsp.start_client({
  name = "my_lsp",
  --cmd = { "/Users/atharqadri/Developer/rust/zev/target/release/zev" },
  cmd = { "/Users/atharqadri/Developer/rust/zev/target/debug/zev" },
  on_exit = function(_, code, _)
    if code == 0 then
      print("LSP server exited cleanly")
    else
      print("LSP server exited with error code: " .. code)
    end
  end,
})

if not client then
  vim.notify("LSP Client Issue")
  return
end

--vim.api.nvim_create_autocmd("FileType", {
--  pattern = "markdown",
--  callback = function()
--    vim.lsp.buf_attach_client(0, client)
--  end,
--})
vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*.scr",
  callback = function()
    vim.lsp.buf_attach_client(0, client)
  end,
})
