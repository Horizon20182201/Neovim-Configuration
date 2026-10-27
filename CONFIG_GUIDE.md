# LazyVim 配置指南

本指南展示如何自定义 LazyVim 配置。

## 配置文件结构

```
~/.config/nvim/
├── init.lua                    # Neovim 入口点 - 无需修改
├── lua/
│   ├── config/
│   │   ├── lazy.lua           # Lazy.nvim 初始化 - 无需修改
│   │   ├── options.lua        # 编辑器选项 ✏️ 可修改
│   │   └── keymaps.lua        # 快捷键映射 ✏️ 可修改
│   └── plugins/
│       └── example.lua        # 插件配置 ✏️ 可修改
├── README.md                  # 使用文档
├── QUICKSTART.md              # 快速开始
├── CHEATSHEET.md              # 快捷键查询
└── CONFIG_GUIDE.md            # 本文件
```

---

## 编辑器选项 (options.lua)

路径：`~/.config/nvim/lua/config/options.lua`

LazyVim 已预设了优化的默认值。如需修改，编辑此文件。

### 常见选项修改

#### 制表符和缩进

```lua
vim.opt.tabstop = 4        -- 制表符显示宽度（默认 2）
vim.opt.shiftwidth = 4     -- 缩进宽度（默认 2）
vim.opt.expandtab = true   -- 用空格代替制表符（默认 true）
```

#### 显示选项

```lua
vim.opt.number = true        -- 显示行号（默认 true）
vim.opt.relativenumber = true  -- 相对行号（默认 true）
vim.opt.wrap = true          -- 启用换行（默认 false）
vim.opt.cursorline = true    -- 高亮光标行（默认 true）
```

#### 搜索选项

```lua
vim.opt.ignorecase = true   -- 搜索忽略大小写（默认 true）
vim.opt.smartcase = true    -- 搜索智能大小写（默认 true）
```

#### 剪贴板

```lua
vim.opt.clipboard = "unnamedplus"  -- 使用系统剪贴板（默认）
```

#### 撤销文件

```lua
vim.opt.undofile = true     -- 持久撤销历史（默认 true）
```

#### 更新时间

```lua
vim.opt.updatetime = 200    -- 更新间隔（毫秒）（默认 200）
```

---

## 快捷键映射 (keymaps.lua)

路径：`~/.config/nvim/lua/config/keymaps.lua`

### 添加新快捷键

```lua
local map = vim.keymap.set

map("n", "<leader>xx", "<cmd>SomeCommand<cr>", { noremap = true, desc = "My command" })
```

参数说明：
- `"n"` - 模式（n=normal, i=insert, v=visual, c=command）
- `"<leader>xx"` - 快捷键组合
- `"<cmd>...<cr>"` - 执行的命令
- `{ noremap = true, desc = "..." }` - 选项

### 常见示例

#### 保存快捷键

```lua
map("n", "<C-s>", "<cmd>w<cr>", { desc = "Save" })
map("i", "<C-s>", "<Esc><cmd>w<cr>", { desc = "Save" })
```

#### 快速退出

```lua
map("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit" })
```

#### 快速注释

```lua
map("n", "<leader>//", "gcc", { remap = true, desc = "Toggle comment" })
map("v", "<leader>//", "gc", { remap = true, desc = "Toggle comment" })
```

#### 缓冲区导航

```lua
map("n", "<Tab>", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n", "<S-Tab>", "<cmd>bprev<cr>", { desc = "Prev buffer" })
```

#### 窗口调整大小

```lua
map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })
```

### 快捷键约定

LazyVim 使用的标准前缀：

| 前缀 | 用途 |
|------|------|
| `<leader>c` | Code（代码操作） |
| `<leader>d` | Debug（调试） |
| `<leader>f` | File（文件） |
| `<leader>g` | Git（版本控制） |
| `<leader>h` | Hunk（变更块） |
| `<leader>s` | Search（搜索） |
| `<leader>t` | Terminal（终端） |
| `<leader>u` | UI（界面） |
| `<leader>w` | Window（窗口） |
| `<leader>x` | Diagnostics（诊断） |

---

## 插件配置 (plugins/example.lua)

路径：`~/.config/nvim/lua/plugins/example.lua`

这是最重要的配置文件。所有核心设置都在这里。

### 添加新插件

#### 基础插件

```lua
{
  "plugin-author/plugin-name",
}
```

#### 带配置的插件

```lua
{
  "plugin-author/plugin-name",
  opts = {
    option1 = true,
    option2 = "value",
  },
}
```

#### 带快捷键的插件

```lua
{
  "plugin-author/plugin-name",
  keys = {
    { "<leader>xx", "<cmd>SomeCommand<cr>", desc = "Do something" },
    { "<leader>yy", function() require("plugin").command() end, desc = "Another thing" },
  },
  opts = {
    -- 配置
  },
}
```

#### 条件加载

```lua
{
  "plugin-author/plugin-name",
  event = "VeryLazy",  -- 启动后加载
  ft = "python",       -- 只在 Python 文件时加载
  cmd = "SomeCommand", -- 当运行此命令时加载
}
```

### 禁用插件

#### 禁用 LazyVim 内置插件

```lua
{
  "plugin-name",
  enabled = false,
}
```

#### 示例：禁用某些功能

```lua
{
  "folke/which-key.nvim",
  enabled = false,  -- 禁用 which-key
}
```

### 修改已有插件配置

#### 使用 opts 函数

```lua
{
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    -- 在 opts 上进行修改
    opts.servers = opts.servers or {}
    opts.servers.custom_lsp = {}
    return opts
  end,
}
```

#### 继承原配置并扩展

```lua
{
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    table.insert(opts.sources, { name = "emoji" })
  end,
}
```

### 改变主题

```lua
{
  "LazyVim/LazyVim",
  opts = {
    colorscheme = "tokyonight",  -- 改为你喜欢的主题
  },
}
```

### 添加 LSP 服务器

```lua
{
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      my_custom_lsp = {
        -- LSP 配置
      },
    },
  },
}
```

### 扩展 Treesitter 解析器

```lua
{
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    vim.list_extend(opts.ensure_installed, {
      "yaml",
      "toml",
      "dockerfile",
    })
  end,
}
```

---

## 实用配置示例

### 1. Python 开发者配置

```lua
-- plugins/example.lua 中添加

{
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      pyright = {
        settings = {
          python = {
            analysis = {
              typeCheckingMode = "basic",  -- basic, standard, or strict
            },
          },
        },
      },
    },
  },
}

-- 添加 Python formatter
{
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      python = { "black", "isort" },
    },
  },
}
```

### 2. 前端开发者配置

```lua
-- Prettier 自动格式化
{
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      javascript = { "prettier" },
      typescript = { "prettier" },
      vue = { "prettier" },
      css = { "prettier" },
    },
  },
}

-- ESLint 集成
{
  "mfussenegger/nvim-lint",
  opts = {
    linters_by_ft = {
      javascript = { "eslint" },
      typescript = { "eslint" },
    },
  },
}
```

### 3. Rust 开发者配置

```lua
{
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      rust_analyzer = {
        settings = {
          ["rust-analyzer"] = {
            checkOnSave = {
              command = "clippy",
            },
          },
        },
      },
    },
  },
}
```

### 4. 自定义快捷键集合

在 `keymaps.lua` 中添加：

```lua
-- 快速打开配置文件
map("n", "<leader>ec", "<cmd>e ~/.config/nvim/lua/config<cr>", { desc = "Edit config" })

-- 重新加载配置
map("n", "<leader>rs", "<cmd>source %<cr>", { desc = "Reload script" })

-- 打开 terminal
map("n", "<leader>tt", "<cmd>terminal<cr>", { desc = "Open terminal" })

-- 快速执行脚本
map("n", "<leader>x", "<cmd>!%<cr>", { desc = "Execute current file" })
```

---

## 高级配置

### 自动命令

在 `lua/config/options.lua` 或新建 `lua/config/autocmds.lua`：

```lua
vim.api.nvim_create_augroup("MyGroup", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
  group = "MyGroup",
  pattern = "python",
  callback = function()
    vim.opt.tabstop = 4
    vim.opt.shiftwidth = 4
  end,
})
```

### 自定义命令

```lua
vim.api.nvim_create_user_command("FormatCode", function()
  require("conform").format()
end, {})
```

### 条件配置

```lua
if vim.loop.os_uname().sysname == "Darwin" then
  -- macOS 特定配置
elseif vim.loop.os_uname().sysname == "Linux" then
  -- Linux 特定配置
end
```

---

## 调试配置

### 查看已加载的选项

```vim
:set                    " 查看所有非默认选项
:set all                " 查看所有选项
:set <option>?          " 查看特定选项
```

### 查看快捷键映射

```vim
:map                    " 查看所有映射
:nmap                   " 查看 normal 模式映射
:imap                   " 查看 insert 模式映射
:map <leader>          " 查看 leader 相关映射
```

### 检查插件加载

```vim
:Lazy                   " 打开 Lazy 管理器
:Lazy profile           " 查看启动时间
:LazyHealth             " 检查配置健康状态
```

---

## 常见问题

### Q: 改了配置但没有生效？

**A:** 
1. 检查语法是否正确
2. 重启 Neovim
3. 或在 Neovim 中运行 `:luafile <path>` 重新加载

### Q: 如何禁用特定的快捷键？

**A:** 
```lua
-- 在 keymaps.lua 中
-- 注释掉或删除不需要的快捷键

-- 或显式覆盖
map("n", "unwanted_key", "<nop>", { desc = "Disabled" })
```

### Q: 如何只为特定文件类型配置选项？

**A:**
```lua
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.opt_local.tabstop = 4  -- 只对此文件类型有效
  end,
})
```

### Q: 如何查看插件的所有可用选项？

**A:**
- 查看插件的 GitHub 仓库或 README
- 在 Neovim 中按 `K` 查看文档
- 运行 `:help <plugin-name>`

---

## 参考资源

- [Neovim 官方文档](https://neovim.io/)
- [Lua 官方文档](https://www.lua.org/manual/5.1/)
- [LazyVim 文档](https://www.lazyvim.org/)
- [Vim Keymapping 指南](https://vim.fandom.com/wiki/Mapping_keys_in_Vim)

---

祝你配置愉快！如有问题，查看日志或尝试 `:checkhealth`。🎉
