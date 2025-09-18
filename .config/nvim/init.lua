require("config.lazy")

-- common --

vim.g.mapleader = ' '

-- vscode --

if vim.g.vscode then
  local opts = { noremap = true, silent = true }
  local mappings = {
    { 'n', 'w', 'cursorWordPartRight' },
    { 'n', 'b', 'cursorWordPartLeft' },
    { 'v', 'w', 'cursorWordPartRightSelect' },
    { 'v', 'b', 'cursorWordPartLeftSelect' },

    { 'n', '<leader>gi', 'editor.action.goToImplementation' },
    { 'n', '<leader>pd', 'editor.action.peekDefinition' },
    { 'n', '<leader>pi', 'editor.action.peekImplementation' },
    { 'n', '<leader>pt', 'editor.action.peekTypeDefinition' },
    { 'n', '<leader>gr', 'editor.action.goToReferences' },
    { 'n', '<leader>pt', 'editor.action.peekTypeDefinition' },
    { 'n', '<leader>sh', 'editor.action.showHover' },
    { 'n', '<leader>rs', 'editor.action.referenceSearch.trigger' },
    { 'n', '<leader>re', 'editor.action.rename' },
    { 'n', '<leader>oi', 'editor.action.organizeImports' },


    { 'n', '<leader>yu', 'editor.action.copyLinesUpAction' },
    { 'n', '<leader>yd', 'editor.action.copyLinesDownAction' },
    { 'n', '<leader>lu', 'editor.action.moveLinesUpAction' },
    { 'n', '<leader>ld', 'editor.action.moveLinesDownAction' },

    { 'n', '<leader>gs', 'workbench.action.gotoSymbol' },
    { 'n', '<leader>gl', 'workbench.action.gotoLine' },
    { 'n', '<leader>nl', 'workbench.action.navigateToLastEditLocation' },
    { 'n', '<leader>ss', 'workbench.action.showAllSymbols' },

    { 'n', '<leader>q', 'editor.action.quickFix' },

    { 'n', '<leader>fr', 'editor.action.startFindReplaceAction' },
    { 'n', '<leader>ff', 'workbench.action.findInFiles' },
    { 'n', '<leader>rf', 'workbench.action.replaceInFiles' },
    { 'n', '<leader>fd', 'editor.action.formatDocument' },
  }

  for _, mapping in ipairs(mappings) do
    local mode, key, command = mapping[1], mapping[2], mapping[3]

    vim.keymap.set(mode, key, function() vim.fn.VSCodeNotify(command) end, opts)
  end
end
