# LazyVim 使用文档

这是基于 [LazyVim](https://www.lazyvim.org/) 的 Neovim 配置，为中文开发者优化。

## 快速开始

### 首次启动

```bash
nvim
```

首次启动会自动：
- 下载所有插件（大约 200+ 个）
- 编译 Treesitter 语法分析器
- 初始化 Mason（包管理器）
- 配置 LSP 服务器

**需要 2-3 分钟，请耐心等待**。之后的启动会很快（< 200ms）。

### 初步验证

启动后按以下快捷键验证配置：

| 快捷键 | 说明 |
|--------|------|
| `:LspInfo` | 查看 LSP 服务器状态 |
| `:Mason` | 打开包管理器 |
| `<leader>l` | 打开 Lazy 插件管理器 |

---

## 核心快捷键

### Leader Key

LazyVim 使用 **空格键 (Space)** 作为 leader key。大多数快捷键都以 `<leader>` 开头。

示例：`<leader>ff` 实际上是按 **空格** 再按 **f** 再按 **f**

### 文件和缓冲区

| 快捷键 | 功能 |
|--------|------|
| `<leader>ff` | 🔍 搜索文件 |
| `<leader>fg` | 🔎 全局搜索文本 |
| `<leader>fb` | 📋 查看打开的缓冲区 |
| `<leader>fh` | 📂 搜索历史 |
| `<leader>fR` | 🔄 搜索最近文件 |
| `<C-s>` | 💾 保存当前文件 |
| `<C-q>` | ❌ 退出 Neovim |

### 窗口和标签页

| 快捷键 | 功能 |
|--------|------|
| `<C-h>` | 移动到左边窗口 |
| `<C-j>` | 移动到下方窗口 |
| `<C-k>` | 移动到上方窗口 |
| `<C-l>` | 移动到右边窗口 |
| `<leader>ww` | 在窗口间切换 |
| `<leader>wd` | 关闭当前窗口 |
| `<leader>wn` | 新窗口 |
| `<leader>-` | 水平分割 |
| `<leader>\|` | 垂直分割 |

### 标签页

| 快捷键 | 功能 |
|--------|------|
| `<leader><tab>l` | 打开最后一个标签页 |
| `<leader><tab>n` | 新建标签页 |
| `<leader><tab>o` | 关闭其他标签页 |
| `<leader><tab>c` | 关闭当前标签页 |
| `]<tab>` | 下一个标签页 |
| `[<tab>` | 上一个标签页 |

---

## 代码编辑

### 基础编辑

| 快捷键 | 模式 | 功能 |
|--------|------|------|
| `<leader>cc` | normal | 添加/删除注释 |
| `gc` | normal/visual | 注释当前行/选择 |
| `gb` | normal/visual | 块注释 |
| `<` | visual | 减少缩进 |
| `>` | visual | 增加缩进 |
| `=` | normal | 自动格式化 |
| `==` | normal | 格式化当前行 |

### 代码导航和操作

| 快捷键 | 功能 |
|--------|------|
| `gd` | 跳转到定义 |
| `gr` | 查找所有引用 |
| `gI` | 查找实现 |
| `gt` | 查看类型定义 |
| `K` | 显示悬停文档 |
| `<leader>ca` | 代码操作（如重构、快速修复） |
| `<leader>cf` | 格式化代码 |
| `<leader>cr` | 重命名符号 |
| `<leader>cA` | 源代码操作 |

### 诊断和错误

| 快捷键 | 功能 |
|--------|------|
| `<leader>cd` | 显示诊断 |
| `<leader>cl` | 显示行诊断 |
| `]d` | 下一个诊断 |
| `[d` | 上一个诊断 |

---

## 搜索和替换

### 搜索

| 快捷键 | 功能 |
|--------|------|
| `/` | 向下搜索 |
| `?` | 向上搜索 |
| `n` | 下一个匹配 |
| `N` | 上一个匹配 |
| `*` | 搜索光标下的单词（向下） |
| `#` | 搜索光标下的单词（向上） |
| `<leader>sH` | 搜索历史 |

### 高级搜索（Telescope）

| 快捷键 | 功能 |
|--------|------|
| `<leader>sg` | 全文搜索（字符串） |
| `<leader>sw` | 搜索光标下的单词 |
| `<leader>sb` | 搜索 buffer |
| `<leader>sd` | 搜索诊断 |
| `<leader>s/` | 搜索当前 buffer |

### 替换

| 快捷键 | 功能 |
|--------|------|
| `<leader>sr` | 全局替换（通过 grug-far） |

---

## Git 集成

### 基础 Git 操作

| 快捷键 | 功能 |
|--------|------|
| `<leader>gg` | 打开 Lazygit（完整 Git UI） |
| `<leader>gb` | Git blame（显示每行的提交信息） |
| `<leader>gB` | Git branches（查看分支） |
| `<leader>gc` | Git commits（查看提交历史） |
| `<leader>gd` | Git diff（对比差异） |
| `<leader>gf` | Diff file（当前文件的差异） |
| `<leader>gl` | Git log（提交日志） |

### 变更高亮

Git 改动会自动高亮显示（通过 gitsigns）：
- 绿色：新增行
- 蓝色：修改行
- 红色：删除行

按 `<leader>hd` 查看文件的 Git diff 预览。

---

## 调试

### 调试快捷键

| 快捷键 | 功能 |
|--------|------|
| `<leader>db` | 设置断点 |
| `<leader>dc` | 继续执行 |
| `<leader>dC` | 条件断点 |
| `<leader>dU` | 打开 UI |
| `<leader>dO` | 单步超过 |
| `<leader>dI` | 单步进入 |
| `<leader>dT` | 打开终端 |
| `<leader>dW` | 打开监视列表 |

---

## 编辑增强功能

### 自动补全

按 `<C-n>` 或 `<C-p>` 打开补全菜单：
- `<C-n>` - 下一个补全项
- `<C-p>` - 上一个补全项
- `<Tab>` - 选择补全
- `<C-y>` - 确认补全
- `<C-e>` - 关闭补全

补全来源包括：
- LSP（语言服务器）
- Buffer（当前及打开的文件）
- Path（文件路径）
- Snippet（代码片段）

### 代码片段

按 `<C-l>` 在补全菜单中跳转到下一个片段位置。

### 括号自动配对

输入 `(` 会自动输入 `)`，按 `<C-]>` 跳过括号。

### 包围符号

使用 surround 快捷键修改周围符号：

| 快捷键 | 功能 | 示例 |
|--------|------|------|
| `ys<motion><char>` | 添加包围符 | `ysiw'` - 用单引号包围单词 |
| `cs<old><new>` | 修改包围符 | `cs'"` - 将单引号改为双引号 |
| `ds<char>` | 删除包围符 | `ds'` - 删除单引号 |
| `S<char>` | visual 模式添加包围符 | 选中文本后 `S'` |

---

## 文件浏览

### Neo-tree（文件树）

| 快捷键 | 功能 |
|--------|------|
| `<leader>e` | 打开文件树 |
| `<leader>E` | 打开文件树到当前文件 |

在文件树中：
- `a` - 新建文件/目录
- `d` - 删除
- `r` - 重命名
- `c` - 复制
- `x` - 剪切
- `p` - 粘贴
- `m` - 标记
- `?` - 显示帮助

---

## LSP 和语言支持

### 预配置的语言

| 语言 | LSP 服务器 | 状态 |
|------|-----------|------|
| C/C++ | clangd | ✅ |
| Python | pyright | ✅ |
| Rust | rust-analyzer | ✅ |
| Go | gopls | ✅ |
| JavaScript/TypeScript | ts_ls | ✅ |
| Lua | lua_ls | ✅ |
| Nix | nil_ls | ✅ |

### Formatter

| 语言 | Formatter |
|------|-----------|
| Lua | stylua |
| JavaScript/TypeScript | prettier |
| Python | black, isort |
| Nix | alejandra |

### 检查 LSP 状态

```vim
:LspInfo
```

查看当前文件绑定的 LSP 服务器和功能。

---

## 配置文件结构

```
~/.config/nvim/
├── init.lua                      # 入口点
├── lua/
│   ├── config/
│   │   ├── options.lua          # 编辑器选项
│   │   ├── keymaps.lua          # 自定义快捷键
│   │   └── lazy.lua             # Lazy 配置
│   └── plugins/
│       └── example.lua          # 插件配置（核心配置都在这里）
├── README.md                    # 本文件
├── SETUP.md                     # 初始化说明
└── .gitignore
```

---

## 自定义配置

### 添加快捷键

编辑 `lua/config/keymaps.lua`：

```lua
local map = vim.keymap.set

map("n", "<leader>xx", "<cmd>SomeCommand<cr>", { noremap = true, desc = "My custom command" })
```

### 修改编辑器选项

编辑 `lua/config/options.lua`：

```lua
vim.opt.tabstop = 4       -- 制表符宽度
vim.opt.shiftwidth = 4    -- 缩进宽度
vim.opt.wrap = true       -- 启用换行
```

### 添加新插件

编辑 `lua/plugins/example.lua`，在 `return` 列表中添加：

```lua
{
  "plugin-author/plugin-name",
  -- 插件名称和 GitHub 仓库
  
  opts = {
    -- 插件选项
    some_option = true,
  },
  
  keys = {
    { "<leader>xx", "<cmd>SomeCommand<cr>", desc = "Some command" },
  },
}
```

然后启动 Neovim，按 `<leader>l` 打开 Lazy，输入 `:Lazy sync` 安装新插件。

### 禁用插件

在 `lua/plugins/example.lua` 中：

```lua
{
  "plugin-name",
  enabled = false,
}
```

---

## 中文输入法支持

### fcitx 配置

已自动配置。按 ESC 返回 Normal 模式时会自动切换到英文输入法。

如果使用其他输入法（ibus、中州韵等），编辑 `lua/config/options.lua`。

---

## 常见问题

### Q: LSP 不工作

**A:** 检查以下几点：

1. 运行 `:LspInfo` 查看 LSP 状态
2. 检查 LSP 服务器是否已安装：
   ```bash
   which clangd    # 或其他 LSP 名称
   ```
3. 查看 LSP 日志：
   ```vim
   :e ~/.local/state/nvim/lsp.log
   ```

### Q: 启动很慢

**A:** 运行 `:Lazy profile` 查看哪个插件耗时最长。

### Q: 某个插件报错

**A:** 打开 Lazy 管理器查看错误信息：
```vim
:Lazy
```

按 `x` 删除有问题的插件，或按 `?` 查看帮助。

### Q: 如何更新插件

**A:** 打开 Lazy 管理器并运行同步：
```vim
:Lazy sync
```

或直接：
```vim
:Lazy update
```

### Q: 我想禁用某些 LazyVim 的默认插件

**A:** 在 `lua/plugins/example.lua` 中添加：
```lua
{
  "plugin-name",
  enabled = false,
}
```

### Q: 如何改变主题

**A:** 编辑 `lua/plugins/example.lua` 中的主题配置：
```lua
{
  "LazyVim/LazyVim",
  opts = {
    colorscheme = "tokyonight",  -- 改为其他主题
  },
}
```

常见主题：
- `catppuccin`（默认）
- `tokyonight`
- `gruvbox`
- `nord`
- `dracula`

---

## 常用命令

### 内置命令

| 命令 | 说明 |
|------|------|
| `:Lazy` | 打开插件管理器 |
| `:LspInfo` | 查看 LSP 信息 |
| `:Mason` | 打开包管理器 |
| `:LazyHealth` | 检查环境 |
| `:checkhealth` | 完整健康检查 |

### 编辑命令

| 命令 | 说明 |
|------|------|
| `:w` | 保存文件 |
| `:q` | 退出 |
| `:wq` 或 `:x` | 保存并退出 |
| `:e <file>` | 打开文件 |
| `:set <option>` | 设置选项 |
| `:help <topic>` | 查看帮助 |

---

## 进阶技巧

### Folding（代码折叠）

| 快捷键 | 功能 |
|--------|------|
| `za` | 切换折叠 |
| `zc` | 关闭折叠 |
| `zo` | 打开折叠 |
| `zM` | 关闭所有折叠 |
| `zR` | 打开所有折叠 |

### 宏录制

| 快捷键 | 功能 |
|--------|------|
| `q<letter>` | 开始录制到寄存器 |
| `q` | 停止录制 |
| `@<letter>` | 执行宏 |
| `@@` | 重复最后执行的宏 |

### 寄存器和复制

| 快捷键 | 功能 |
|--------|------|
| `y` | 复制 |
| `p` | 粘贴 |
| `d` | 删除（也复制到寄存器） |
| `"<letter>` | 使用特定寄存器 |
| `:reg` | 显示所有寄存器 |

---

## 学习资源

### 官方文档
- [Neovim 官方文档](https://neovim.io/doc/user/)
- [LazyVim 文档](https://www.lazyvim.org/)

### 交互式学习
```bash
vimtutor       # Vim 官方教程
nvim +Tutor    # Neovim 版本
```

### 快速参考
```vim
:help quickref     # Vim 快速参考
:help lua          # Lua 脚本文档
:help lsp          # LSP 文档
```

---

## 获取帮助

在 Neovim 中查看帮助：

```vim
:help <topic>          # 查看主题帮助
:help <command>        # 查看命令帮助
:help <keys>           # 查看快捷键帮助
:help 'option'         # 查看选项帮助
:helpgrep <keyword>    # 搜索帮助
```

---

祝你使用 Neovim 愉快！🚀
