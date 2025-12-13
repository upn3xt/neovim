return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function()
    require("mason").setup({})
    require("mason-lspconfig").setup({})

    local configs = require("lspconfig.configs")
    local util = require("lspconfig.util")

    if not configs.c3 then
      configs.c3 = {
        default_config = {
          cmd = { vim.fn.stdpath("data") .. "/mason/packages/c3-lsp/server/bin/release/c3lsp" },
          filetypes = { "c3" },
          -- root_dir = util.root_pattern("c3.toml", ".git"),
          root_dir = function(fname)
            return vim.fs.dirname(fname) -- just the file’s folder
          end,
          settings = {},
        },
      }
    end

    local lspconfig = require("lspconfig")
    lspconfig.c3.setup({
      capabilities = require("cmp_nvim_lsp").default_capabilities(),
      on_attach = function(client, bufnr)
        -- optional keymaps here
        local opts = { noremap = true, silent = true }
        vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
        vim.api.nvim_buf_set_keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
      end,
    })
  end,
}
