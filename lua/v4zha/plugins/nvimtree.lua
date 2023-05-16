local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
  return
end

-- from LunarVim config : )

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
  return
end

local tree_cb = nvim_tree_config.nvim_tree_callback


nvim_tree.setup {
  on_attach = on_attach,
  actions = {
    open_file = {
      quit_on_open = true
    }
  },
  sync_root_with_cwd = true,
  respect_buf_cwd = true,
  update_focused_file = {
    enable = true,
    update_root = true
  },
  renderer = {
    root_folder_modifier = ":t",
    icons = {
      glyphs = {
        default = "",
        symlink = "",
        folder = {
          arrow_open = "",
          arrow_closed = "",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = ""
        },
        git = {
          unstaged = "",
          staged = "S",
          unmerged = "",
          renamed = "➜",
          untracked = "U",
          deleted = "",
          ignored = "◌"
        }
      }
    }
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = ""
    }
  },
  view = {
    width = 30,
    side = "left",
    mappings = {
      list = { {
        key = { "l", "<CR>", "o" },
        cb = tree_cb "edit"
      }, {
        key = "h",
        cb = tree_cb "close_node"
      }, {
        key = "v",
        cb = tree_cb "vsplit"
      } }
    }
  }
}

local function open_nvim_tree()
  local no_name = data.file == "" and vim.bo[data.buf].buftype == ""


  -- buffer is a [No Name]
  local no_name = data.file == "" and vim.bo[data.buf].buftype == ""

  -- buffer is a directory
  local directory = vim.fn.isdirectory(data.file) == 1

  if not no_name and not directory then
    return
  end


  -- change to the directory
  if directory then
    vim.cmd.cd(data.file)
  end

  -- open the tree
  require("nvim-tree.api").tree.open()
end
