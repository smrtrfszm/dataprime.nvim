local M = {}

function M.setup()
  require('nvim-treesitter.parsers').dataprime = {
    install_info = {
      url = 'https://github.com/smrtrfszm/tree-sitter-dataprime',
      files = {'src/parser.c'},
    },
  }

  vim.treesitter.language.register('dataprime', 'dataprime')

  local ok, ft = pcall(require, 'Comment.ft')
  if ok then
    ft.set('dataprime', {'//%s', '/*%s*/'})
  end
end

return M
