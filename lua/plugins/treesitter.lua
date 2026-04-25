return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  branch = 'main',

  config = function()
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
