---@type ChadrcConfig
 local M = {}
 M.ui = {theme = 'chadracula'}
 M.plugins = "custom.plugins"
 M.mappings = require "custom.mappings"
 require("custom.ncbackup")
 require("custom.autocmds")
 return M
