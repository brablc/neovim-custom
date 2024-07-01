local autocmd = vim.api.nvim_create_autocmd

autocmd("FileType", {
  pattern = "sh",
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.expandtab = true
    vim.opt_local.smartindent = true
    vim.opt_local.softtabstop = 4
  end,
})
