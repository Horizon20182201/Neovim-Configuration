# LazyVim 快速开始（5 分钟）

## 0️⃣ 首次运行

```bash
nvim
```

等待 2-3 分钟让它下载和初始化所有东西。完成后启动会非常快。

## 1️⃣ 验证安装

运行以下命令验证一切正常：

```vim
:LspInfo          " 查看 LSP 状态
:Mason            " 查看已安装的工具
:Lazy             " 查看所有插件
:checkhealth      " 环境诊断
```

## 2️⃣ 基本编辑

### 打开文件

按 `空格 f f`（即 `<leader>ff`）打开文件搜索。

### 编辑文件

- 按 `i` 进入编辑模式
- 编辑文本
- 按 `ESC` 回到命令模式

### 保存文件

- 按 `Ctrl+s`，或
- 输入 `:w`

## 3️⃣ 导航代码

打开一个代码文件，试试这些：

| 快捷键 | 功能 |
|--------|------|
| `空格 f g` | 搜索代码中的文本 |
| `g d` | 跳转到定义 |
| `g r` | 查找所有引用 |
| `K` | 显示文档 |
| `Ctrl+h/j/k/l` | 在窗口间移动 |

## 4️⃣ 代码补全

- 按 `Ctrl+n` 打开补全菜单
- 按 `↓` 或 `Ctrl+n` 选择
- 按 `Tab` 或 `Enter` 确认

## 5️⃣ 搜索和替换

### 搜索

- 按 `/` 打开搜索
- 输入搜索词
- 按 `Enter` 查找
- 按 `n` 下一个，`N` 上一个

### 全局替换

- 按 `空格 s r` 打开替换工具
- 输入要找的文本
- 输入要替换成的文本
- 确认替换

## 6️⃣ Git 操作

按 `空格 g g` 打开完整的 Git UI (Lazygit)。

在里面可以：
- 查看改动
- 提交代码
- 切换分支
- 查看日志

## 7️⃣ 常用快捷键

```
空格 e      打开文件树
空格 ff     搜索文件
空格 fg     搜索文本
空格 gg     Git 界面
g d         跳转定义
g r         查找引用
K           显示文档
g c         注释/取消注释
Ctrl+s      保存
:q          退出
```

## 8️⃣ 问题排查

**LSP 不工作？**
```vim
:LspInfo
```

**插件有问题？**
```vim
:Lazy
```

在里面可以看到所有插件和错误信息。

**想看快捷键映射？**
```vim
:map
```

**想看所有可用的命令？**
```vim
:help quickref
```

## 9️⃣ 自定义配置

编辑以下文件来自定义：

- `~/.config/nvim/lua/config/options.lua` - 编辑器选项
- `~/.config/nvim/lua/config/keymaps.lua` - 快捷键
- `~/.config/nvim/lua/plugins/example.lua` - 插件

修改后重启 Neovim 生效。

## 🔟 下一步

查看完整文档：

```bash
cat ~/.config/nvim/README.md          # 完整使用指南
cat ~/.config/nvim/CHEATSHEET.md      # 快速查询卡
```

或在 Neovim 中：

```vim
:help                 # Vim 帮助系统
:help lazyvim         # LazyVim 特定帮助
:help lua             # Lua 脚本文档
```

---

## 最常用的 3 个快捷键

如果只记住 3 个快捷键，就记住这些：

1. **`空格 f f`** - 搜索并打开文件
2. **`g d`** - 跳转到代码定义
3. **`空格 g g`** - 打开 Git 界面

有了这 3 个，你可以完成 80% 的工作！

---

**有问题？** 随时查看 `/CHEATSHEET.md` 或 `/README.md`。祝你编码愉快！🚀
