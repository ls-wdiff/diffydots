local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "python",
    "go",
    "rust",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- markdown
    "markdown",
    "misspell",
    -- lua stuff
    "lua-language-server",
    "stylua",
    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",
    -- c/cpp stuff
    "clangd",
    "clang-format",
    -- rust
    "rust-analyzer",
    "rustfmt",
    -- go
    "gopls",
    "glint",
    "go-debug-adapter",
    "goimports",
    "goimports-reviser",
    "golangci-lint",
    "golangci-lint-langserver",
    "golines",
    "gotests",
    "gotestsum",
    -- python
    "pyright",
    "flake8",
    "black",
    "mypy",
    "pydocstyle",
    "pylint",
    "pyre",
    "autoflake",
    "autopep8",
    "python-lsp-server",
    -- yaml
    "terraform-ls",
    "tflint",
    "yaml-language-server",
    "yamlfmt",
    "yamllint",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
