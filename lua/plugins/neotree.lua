return {
  'nvim-neo-tree/neo-tree.nvim',
  cmd = 'Neotree',
  keys = {
    {
      '<leader>e',
      ':Neotree filesystem reveal<CR>',
      desc = 'Explorer Neotree (Root Dir)',
    },
    {
      '<leader>E',
      function()
        require('neo-tree.command').execute { toggle = true, dir = vim.uv.cwd() }
      end,
      desc = 'Explorer Neotree (current file)',
    },
    {
      '<leader>ge',
      ':Neotree git_status reveal<CR>',
      desc = 'Explorer Git Status',
    },
    {
      '<leader>be',
      ':Neotree buffers reveal<CR>',
      desc = 'Explore open buffers',
    },
  },
  deactivate = function()
    vim.cmd [[Neotree close]]
  end,
  opts = {
    sources = { 'filesystem', 'buffers', 'git_status' },
    window = {
      position = 'float',
    },
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
}
