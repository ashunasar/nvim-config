return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("bufferline").setup({
      options = {
        mode = "buffers", -- or "tabs"
        show_buffer_close_icons = true,
        show_close_icon = false,
        diagnostics = "nvim_lsp",
        separator_style = "slant",
        always_show_bufferline = true,
      },
    })

    -- Optional: map keys to switch between tabs
    vim.keymap.set("n", "<C-h>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Go to left tab" })
    vim.keymap.set("n", "<C-l>", "<cmd>BufferLineCycleNext<CR>", { desc = "Go to right tab" })
  end,
}

