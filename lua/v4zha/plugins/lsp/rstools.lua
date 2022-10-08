local rt = require("rust-tools")
local crates=require("crates")
rt.setup({
hover_actions={
    auto_focus=true,
}
})
crates.setup()