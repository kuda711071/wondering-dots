return {
  "akinsho/toggleterm.nvim",
  config = function()
    require("toggleterm").setup({
      size = 90, -- You can adjust the size of the terminal window
      open_mapping = [[<c-\>]], -- Default key to open terminal (optional, change if you want)
    })

    -- Keybindings for normal mode with Ctrl + W + <direction>
    -- Ctrl + W + v for vertical
    vim.api.nvim_set_keymap("n", "<C-w>v", ":ToggleTerm direction=vertical<CR>", { noremap = true, silent = true })
    -- Ctrl + W + f for floating
    vim.api.nvim_set_keymap("n", "<C-w>f", ":ToggleTerm direction=float<CR>", { noremap = true, silent = true })
    -- Set up key mapping to exit insert mode and return to normal mode (Ctrl [ works too!)
    vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })
  end,
}
