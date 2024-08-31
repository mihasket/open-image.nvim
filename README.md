**open-image.nvim** is a simple keymap to open an image in Neovim.

![](/image/example.png)

## Requirements

- Neovim
- Any image viewer application (Viewnoir, Eye Of Gnome, ...)

## Usage

Place this code where you have your keybinding configuration.
Replace `viewnior` with your image viewer of choice.

```lua
-- Keybinding to open the current image in buffer
vim.keymap.set(
  'n',
  '<leader>oi',
  function ()
    os.execute("viewnior " .. vim.api.nvim_buf_get_name(0) .. " &")
  end,
  { desc = '[O]pen [I]mage' }
)
```
