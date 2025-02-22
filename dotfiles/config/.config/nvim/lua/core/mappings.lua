local map = vim.api.nvim_set_keymap
local function add_desc(desc)
    if desc == nil then
        desc = ''
    end
    return { noremap = true, silent = true, desc = desc }
end

map('', '<space>', '<nop>', add_desc('Leader'))
vim.g.mapleader = ' '
vim.g.maplocalleader = ','

-- Basics
map('n', 'j', 'gj', add_desc('To go down just one line if line is wrapped.'))
map('n', 'k', 'gk', add_desc('To go up just one line if line is wrapped.'))

map('n', 'Y', 'y$', add_desc('Yank to the end of line'))

map('n', 'n', 'nzzzv', add_desc('Centered search'))
map('n', 'N', 'Nzzzv', add_desc('Centered search'))

map('n', 'J', 'mzJ`z', add_desc('Maintain cursor position when deleting line break'))

map('i', ',', ',<c-g>u', add_desc('Add break point in insert mode'))
map('i', '.', '.<c-g>u', add_desc('Add break point in insert mode'))
map('i', '!', '!<c-g>u', add_desc('Add break point in insert mode'))
map('i', '?', '?<c-g>u', add_desc('Add break point in insert mode'))
map('i', ':', ':<c-g>u', add_desc('Add break point in insert mode'))

-- Windows
map('n', '<leader>v', '<c-w>v<c-w>l', add_desc('Create a vertical split window and move the cursor to it'))
map('n', '<leader>h', '<c-w>h', add_desc('Move to left window'))
map('n', '<leader>j', '<c-w>j', add_desc('Move to down window'))
map('n', '<leader>k', '<c-w>k', add_desc('Move to up window'))
map('n', '<leader>l', '<c-w>l', add_desc('Move to right window'))

map('n', '<c-up>', '<cmd>resize +2<cr>', add_desc('Increase window height'))
map('n', '<c-down>', '<cmd>resize -2<cr>', add_desc('Decrease window height'))
map('n', '-', '<cmd>5winc <<cr>', add_desc('Decrease window width'))
map('n', '=', '<cmd>5winc ><cr>', add_desc('Increase window width'))

-- Others
map('n', 'gdi', '<cmd>lua vim.diagnostic.open_float()<cr>', add_desc('Show a popup window with diagnostics'))
map("v", '//', "y/\\V<c-r>=escape(@\",'/\\')<cr><cr>", add_desc("Search for visually highlighted"))

-- System clipboard
map('v', '<leader>y', '"+y', add_desc(''))
map('n', '<leader>Y', '"+y$', add_desc(''))
map('n', '<leader>yy', '"+yy', add_desc(''))

map('v', '<leader>p', '"+p', add_desc(''))
map('v', '<leader>P', '"+P', add_desc(''))
map('n', '<leader>p', '"+p', add_desc(''))
map('n', '<leader>P', '"+P', add_desc(''))

-- User friendly
map('i', '<c-s>', '<cmd>w<cr><esc>', add_desc('Save file'))
map('n', '<c-s>', '<cmd>w<cr><esc>', add_desc('Save file'))
map('v', '<c-s>', '<cmd>w<cr><esc>', add_desc('Save file'))
map('s', '<c-s>', '<cmd>w<cr><esc>', add_desc('Save file'))

