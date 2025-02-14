local M = {}

function M.setup()
  vim.filetype.add({
    pattern = {
      ['.*.dataprime'] = 'dataprime',
    },
  })

  local parser_config = require('nvim-treesitter.parsers').get_parser_configs()

  parser_config.dataprime = {
    install_info = {
      url = 'https://github.com/smrtrfszm/tree-sitter-dataprime',
      files = {'src/parser.c'},
    },
    filetype = 'dataprime',
  }

  vim.treesitter.language.register('dataprime', 'dataprime')
end

return M
