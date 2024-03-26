-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Use jk instead of <Esc> to exit insert mode
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true, silent = true, desc = "<Esc>" })


local function replace_word()
  -- Get the word under the cursor
  local word = vim.fn.expand('<cword>')

  -- Prompt for user input
  vim.ui.input({
    prompt = 'Enter replacement: ',
    completion = 'custom,OmniFunc',
    -- Other options for vim.ui.input go here
  }, function(input)
    -- Build the search pattern and replacement string
    local pattern = vim.fn.escape(word, '\\/.*[^A-Za-z0-9_]')
    local replacement = vim.fn.escape(input, '\\/')

    -- Replace all occurrences in the file, confirming each one
    vim.cmd('%s/' .. pattern .. '/' .. replacement .. '/gc')
  end)
end

-- Create the keymapping
vim.keymap.set('n', '<leader>rw', replace_word, { desc = 'Replace all occurrences of word under cursor with input' })
