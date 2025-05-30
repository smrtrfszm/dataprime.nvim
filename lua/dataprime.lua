local M = {}

function M.setup()
  vim.filetype.add({
    extension = {
      dataprime = 'dataprime',
    },
  })

  require('nvim-treesitter.parsers').dataprime = {
    install_info = {
      url = 'https://github.com/smrtrfszm/tree-sitter-dataprime',
      files = {'src/parser.c'},
    },
  }

  vim.treesitter.language.register('dataprime', 'dataprime')

  vim.api.nvim_create_autocmd('FileType', {
    pattern = 'dataprime',
    callback = function ()
      vim.bo.commentstring = '//%s'
    end,
  })

  local ok, ft = pcall(require, 'Comment.ft')
  if ok then
    ft.set('dataprime', {'//%s', '/*%s*/'})
  end
end

return M
