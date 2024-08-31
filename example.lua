-- Keybinding to open the current image in buffer
vim.keymap.set(
    'n',
    '<leader>oi',
    function ()
        os.execute("viewnior " .. vim.api.nvim_buf_get_name(0) .. " &")
    end,
    { desc = '[O]pen [I]mage' }
)
