return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  branch = 'main',

  config = function()
    local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

    parser_config.c3 = {
      install_info = {
        url = "https://github.com/c3lang/tree-sitter-c3",
        files = { "src/parser.c",
          "src/scanner.c",
        },
        branch = "main",
      },
      filetype = "c3",
    }

    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "lua",
        "javascript",
        "typescript",
        "python",
        "c",
        "cpp",
        "rust",
        "html",
        "css",
        "json",
        "bash",
        "toml",
        "yaml",
        "c3"
        -- Add more as needed
      },
      highlight = { enable = true },
      indent = { enable = true },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,
}
