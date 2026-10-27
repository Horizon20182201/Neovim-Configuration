-- LazyVim 自定义插件配置
-- 在这里可以添加额外的插件、禁用插件或修改 LazyVim 的配置

return {
  -- 配置主题为 Catppuccin
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },

  -- LSP 配置 - 使用你在 nixos 中已安装的 LSP 服务器
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- C/C++
        clangd = {
          cmd = { "clang-tools" },
        },
        -- Python
        pyright = {},
        -- Rust
        rust_analyzer = {
          settings = {
            ["rust-analyzer"] = {
              checkOnSave = {
                command = "clippy",
              },
            },
          },
        },
        -- Go
        gopls = {},
        -- JavaScript/TypeScript
        ts_ls = {},
        -- Lua
        lua_ls = {
          settings = {
            Lua = {
              runtime = {
                version = "LuaJIT",
              },
              diagnostics = {
                globals = { "vim" },
              },
              workspace = {
                checkThirdParty = false,
              },
            },
          },
        },
        -- Nix
        nil_ls = {},
      },
    },
  },

  -- Treesitter 增强
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "bash",
        "c",
        "cpp",
        "go",
        "python",
        "rust",
        "typescript",
        "tsx",
        "javascript",
        "lua",
        "nix",
        "json",
        "yaml",
        "toml",
        "markdown",
        "markdown_inline",
      })
    end,
  },

  -- Mason 包管理器 - 用于额外的工具
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua", -- Lua formatter
        "prettier", -- JS/TS formatter
        "black", -- Python formatter
        "isort", -- Python import sorter
        "flake8", -- Python linter
        "shellcheck", -- Shell script linter
      },
    },
  },

  -- 自定义快捷键的额外配置
  {
    "folke/which-key.nvim",
    opts = {
      spec = {
        { "<leader>c", group = "code" },
        { "<leader>d", group = "debug" },
        { "<leader>f", group = "file/find" },
        { "<leader>g", group = "git" },
        { "<leader>s", group = "search" },
        { "<leader>x", group = "diagnostics/quickfix" },
      },
    },
  },

  -- Git 支持
  { "tpope/vim-fugitive" },
  { "tpope/vim-rhubarb" },
}
