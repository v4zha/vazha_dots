local status,pairs=pcall(require , "nvim-autopairs")
if not status then
    return 
end
pairs.setup{}