return {
    "ggandor/leap.nvim",
    config = function()
      require('leap') -- Инициализация плагина с настройками по умолчанию
      -- Привязка клавиши '\' к активации Leap
      vim.keymap.set({'n','x','o'}, '\\', '<Plug>(leap)')
    end,
}

