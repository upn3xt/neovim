return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
  },
  -- config = function()
  --   require("mason").setup()
  --   require("mason-lspconfig").setup({})
  --
  --   local lspconfig = require("lspconfig")
  --
  --   lspconfig.nil_ls.setup({
  --     cmd = {"nil"},
  --     filetypes = {"nix"},
  --     settings = {
  --       nil_ls = {
  --         formatting = {
  --           command = {"nixpkgs-fmt"}  -- or "nixfmt" if you prefer
  --         }
  --       }
  --     }
  --   })
  --
  --   lspconfig.dartls.setup({
  --     cmd = { "dart", "language-server", "--protocol=lsp" },
  --     filetypes = { "dart" },
  --     root_dir = lspconfig.util.root_pattern("pubspec.yaml"),  -- Root directory setup
  --     init_options = {
  --       closingLabels = true,
  --       flutterOutline = true,
  --       onlyAnalyzeProjectsWithOpenFiles = true,
  --       outline = true,
  --       suggestFromUnimportedLibraries = true,
  --     },
  --     settings = {
  --       dart = {
  --         completeFunctionCalls = true,
  --         showTodos = true,
  --       },
  --     },
  --     on_attach = function(client, bufnr)
  --       print("Dart LSP attached to buffer " .. bufnr)
  --       -- Optionally set up key mappings here
  --     end,
  --   })
  --
  --   local servers = require("mason-lspconfig")
  -- end,
}
