local status,treesitter=pcall(require,"nvim-treesitter.config")
if not status then
  return
end

treesitter.setup({
   ensure_installed = { "c", "lua", "rust" },
  highlight={
    enable=true,
  },
  autopairs={
    enable=true,
  },
  indent={enable=true},
  sync_install = false,
  auto_install = true,
})
