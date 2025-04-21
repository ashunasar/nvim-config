return {
    {
      "akinsho/flutter-tools.nvim",
      dependencies = {
        "nvim-lua/plenary.nvim",
        "stevearc/dressing.nvim", -- optional but recommended for better UI
        "nvim-telescope/telescope.nvim", -- optional for device picker, etc.
      },
      config = function()
        require("flutter-tools").setup({
          flutter_path = "flutter", -- adjust if needed
          widget_guides = {
            enabled = true,
          },
          closing_tags = {
            highlight = "Comment",
            prefix = "// ",
          },
          dev_log = {
            enabled = true,
            open_cmd = "tabedit",
          },
          lsp = {
            color = {
              enabled = true,
              background = true,
              virtual_text = true,
              virtual_text_str = "■",
            },
            on_attach = function(_, bufnr)
              local map = vim.keymap.set
              local opts = { noremap = true, silent = true, buffer = bufnr }
  
              map("n", "<leader>r", "<cmd>FlutterHotReload<cr>", opts)
              map("n", "<leader>R", "<cmd>FlutterHotRestart<cr>", opts)
              map("n", "<leader>q", "<cmd>FlutterQuit<cr>", opts)
              map("n", "<leader>fd", "<cmd>FlutterDevices<cr>", opts)
              map("n", "<leader>fo", "<cmd>FlutterOutlineToggle<cr>", opts)
            end,
          },
        })
      end,
      ft = { "dart" },
    },
  }
  