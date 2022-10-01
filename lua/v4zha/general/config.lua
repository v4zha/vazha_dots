local config = {
    termguicolors = true,
    number = true,
    relativenumber = true,
    numberwidth = 4,
    expandtab = true,
    mouse = "a",
    hlsearch = true,
    ignorecase = true,
    showmode = false,
    showtabline = 2,
    swapfile = false,
    signcolumn = "yes",
    sidescrolloff = 8,
    backup = false,
    clipboard = "unnamedplus",
    cmdheight = 2,
    completeopt = { "menuone", "noselect" },
    conceallevel = 0,
    fileencoding = "utf-8",
    pumheight = 10,
    smartcase = true,
    smartindent = true,
    splitbelow = true,
    splitright = true,
    timeoutlen = 100,

    undofile = true,
    updatetime = 300,
    writebackup = false,
    shiftwidth = 2,

    tabstop = 2,
    cursorline = true,
    wrap = false,

    scrolloff = 8,
}
for k, v in pairs(config) do
    vim.opt[k] = v
end
