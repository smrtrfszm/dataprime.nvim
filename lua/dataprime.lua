local M = {}

function M.setup()
  vim.api.nvim_create_autocmd('User', {
    pattern = 'TSUpdate',
    callback = function()
      require('nvim-treesitter.parsers').dataprime = {
        install_info = {
          url = 'https://github.com/smrtrfszm/tree-sitter-dataprime',
          branch = 'master',
        },
      }
    end
  })

  vim.treesitter.language.register('dataprime', 'dataprime')

  local ok, ft = pcall(require, 'Comment.ft')
  if ok then
    ft.set('dataprime', {'//%s', '/*%s*/'})
  end
end

return M
