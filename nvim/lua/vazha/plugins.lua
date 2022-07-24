local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  Packer_Bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
    use {"wbthomason/packer.nvim"}
    use {"windwp/nvim-autopairs"}
    use {"numToStr/Comment.nvim"}
    use {"dracula/vim"}
    use {"lewis6991/impatient.nvim"}
    use {"kyazdani42/nvim-web-devicons"}
    use {"akinsho/bufferline.nvim"}
    use {"akinsho/toggleterm.nvim"}
    use {"nvim-lua/plenary.nvim"}
    use {"nvim-telescope/telescope.nvim"}
    use {"folke/which-key.nvim"}
  if Packer_Bootstrap then
    require('packer').sync()
  end
end)
