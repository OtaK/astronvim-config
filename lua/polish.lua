-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here
--
if vim.g.neovide then
  vim.opt.linespace = 2
  vim.g.neovide_refresh_rate = 120
  vim.g.neovide_cursor_vfx_mode = "pixiedust"
end

-- Set up custom filetypes
vim.filetype.add {
  extension = {
    foo = "fooscript",
  },
  filename = {
    ["Foofile"] = "fooscript",
  },
  pattern = {
    ["~/%.config/foo/.*"] = "fooscript",
  },
}
