local colorscheme = "kanagawa"
vim.cmd("colorscheme " .. colorscheme)

local status, kanagawa = pcall(require, "kanagawa")
if not status then
    return
end
kanagawa.setup({
    undercurl = true,
    commentStyle = {
        italic = true
    },
    keywordStyle = {
        italic = true
    },
    statementStyle = {
        bold = true
    },
    variablebuiltinStyle = {
        italic = true
    },
    specialReturn = true,
    specialException = true,
    transparent = false,
    dimInactive = false,
    globalStatus = true,
    terminalColors = true,
    theme = "default"
})
