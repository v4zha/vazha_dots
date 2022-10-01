local colorscheme = "kanagawa"
vim.cmd("colorscheme " .. colorscheme)

local status, kanagawa = pcall("require", "kanagawa")
if not status then
    return
end

kanagawa.setup({
    undercurl = true,
    commentStyle = {
        italic = true
    },
    functionStyle = {},
    keywordStyle = {
        italic = true
    },
    statementStyle = {
        bold = true
    },
    typeStyle = {},
    variablebuiltinStyle = {
        italic = true
    },
    specialReturn = true,
    specialException = true,
    transparent = false,
    dimInactive = false,
    globalStatus = true,
    terminalColors = true,
    colors = {},
    overrides = {},
    theme = "default"
})
