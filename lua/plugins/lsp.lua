return { {
  "dundalek/lazy-lsp.nvim",
  dependencies = { "neovim/nvim-lspconfig" },
  config = function()
    require("lazy-lsp").setup { excluded_servers = {
      "ccls",                         -- prefer clangd
      "denols",                       -- prefer eslint and ts_ls
      "docker_compose_language_service", -- yamlls should be enough?
      "flow",                         -- prefer eslint and ts_ls
      "ltex",                         -- grammar tool using too much CPU
      "quick_lint_js",                -- prefer eslint and ts_ls
      "scry",                         -- archived on Jun 1, 2023
      "tailwindcss",                  -- associates with too many filetypes
      "biome",                        -- not mature enough to be default
    },
      preferred_servers = {
        markdown = {},
        python = { "pyright", "ruff_lsp" },
      }, }
  end
},
  {
    'stevearc/conform.nvim',
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },

        c = { "clang-format" },
        -- Conform will run multiple formatters sequentially
        python = { "isort", "black" },
        -- You can customize some of the format options for the filetype (:help conform.format)
        rust = { "rustfmt", lsp_format = "fallback" },
        -- Conform will run the first available formatter
        javascript = { "prettierd", "prettier", stop_after_first = true },
      },
      format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_format = "fallback",
      },
    },
  }
}
