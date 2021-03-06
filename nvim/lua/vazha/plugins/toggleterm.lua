local status, term = pcall(require, "toggleterm")
if not status then
    return
end
term.setup({
    size = 20,
    open_mapping = [[<c-\>]],
    hide_numbers = true,
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = 2,
    start_in_insert = true,
    insert_mappings = true,
    persist_size = true,
    direction = "float",
    close_on_exit = true,
    shell = vim.o.shell,
    float_opts = {
        border = "curved",
        winblend = 0,
        highlights = {
            border = "Normal",
            background = "Normal",
        },
    },
})
function _G.set_terminal_keymaps()
    local opts = { noremap = true }
    local keybind = vim.api.nvim_buf_set_keymap;
    keybind(0, 't', '<esc>', [[<C-\><C-n>]], opts)
    keybind(0, 't', 'jk', [[<C-\><C-n>]], opts)
    keybind(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
    keybind(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
    keybind(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
    keybind(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

local terminal=require("toggleterm.terminal").Terminal

local vazha=terminal:new({cmd="vazha-gen"})

function _VAZHA_TOGGLE()
    vazha:toggle()
end