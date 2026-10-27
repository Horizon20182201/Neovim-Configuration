# LazyVim 配置说明

## 已安装的内容

### 核心配置
- **init.lua** - Neovim 入口点，加载 lazy.nvim
- **lua/config/options.lua** - 编辑器选项和中文输入法支持
- **lua/config/keymaps.lua** - 自定义快捷键
- **lua/plugins/example.lua** - 插件配置

### 集成的 LSP 服务器
通过 NixOS home-manager 安装，LazyVim 自动发现：
- **clangd** - C/C++
- **pyright** - Python
- **rust-analyzer** - Rust
- **gopls** - Go
- **ts_ls** - JavaScript/TypeScript
- **lua_ls** - Lua
- **nil_ls** - Nix

### Formatter
- **stylua** - Lua
- **prettier** - JavaScript/TypeScript
- **black** - Python
- **isort** - Python imports
- **alejandra** - Nix

## 常用快捷键

### 搜索和导航
| 快捷键 | 功能 |
|--------|------|
| `<leader>ff` | 查找文件 |
| `<leader>fg` | 全局搜索 |
| `<leader>fb` | 查找 buffer |
| `<leader>fh` | 查找历史 |

### 代码操作
| 快捷键 | 功能 |
|--------|------|
| `gd` | 跳转定义 |
| `gr` | 查找引用 |
| `<leader>ca` | 代码操作 |
| `<leader>cf` | 格式化 |
| `<leader>cr` | 重命名 |

### 编辑
| 快捷键 | 功能 |
|--------|------|
| `<C-s>` | 保存文件 |
| `<C-h/j/k/l>` | 窗口导航 |
| `<` `>` (visual mode) | 缩进 |

### Git
| 快捷键 | 功能 |
|--------|------|
| `<leader>gg` | Lazygit |
| `<leader>gb` | Git blame |
| `<leader>gd` | Git diff |

## 下次启动

首次启动时，LazyVim 会：
1. 下载所有插件到 `~/.local/share/nvim/lazy/`
2. 编译 Treesitter 解析器
3. 配置 LSP 服务器

运行：
```bash
nvim
```

按 `<leader>l` 打开 Lazy 管理器查看插件状态。

## 自定义配置

### 添加新插件
编辑 `~/.config/nvim/lua/plugins/example.lua`，按照 LazyVim 规范添加。

示例：
```lua
return {
  {
    "plugin-author/plugin-name",
    opts = {
      -- 插件配置
    },
  },
}
```

### 修改选项
编辑 `~/.config/nvim/lua/config/options.lua`

### 添加快捷键
编辑 `~/.config/nvim/lua/config/keymaps.lua`

## 中文输入法支持

已配置 fcitx 支持，按 ESC 返回 Normal mode 时自动切换到英文。

如果你使用其他输入法，编辑 `lua/config/options.lua` 中的相关部分。

## 问题排查

### LSP 不工作
1. 检查 LSP 服务器是否正确安装：
   ```bash
   which clang-tools  # 或其他 LSP 名称
   ```
2. 在 Neovim 中运行 `:LspInfo` 检查状态
3. 查看日志：`:e ~/.local/state/nvim/lsp.log`

### 插件加载失败
运行 `:Lazy` 打开 Lazy 管理器，检查出错的插件

### 缓慢启动
- 运行 `:Lazy profile` 查看启动时间
- 检查是否有太多同步加载的插件

## 更多信息

- [LazyVim 文档](https://www.lazyvim.org/)
- [Neovim 文档](https://neovim.io/doc/user/)
