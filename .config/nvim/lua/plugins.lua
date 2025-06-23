local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')
Plug('navarasu/onedark.nvim')
Plug('windwp/nvim-autopairs')
Plug('neovim/nvim-lspconfig')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-vsnip')
Plug('hrsh7th/vim-vsnip')
vim.call('plug#end')

vim.cmd('silent! colorscheme onedark')
vim.cmd('highlight Normal guibg=none ctermbg=none')
vim.cmd('highlight NonText guibg=none ctermbg=none')
vim.cmd('highlight EndOfBuffer guibg=none ctermbg=none')

require('nvim-autopairs').setup {}
