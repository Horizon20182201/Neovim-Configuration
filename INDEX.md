# LazyVim 文档索引

欢迎使用 LazyVim！这里是所有文档的导航。

## 📚 文档列表

### 🚀 快速开始（5 分钟）
**[QUICKSTART.md](./QUICKSTART.md)**
- 首次启动和验证
- 基本编辑操作
- 代码导航
- 最常用的 3 个快捷键

👉 **新手推荐从这里开始**

---

### 📖 完整使用指南
**[README.md](./README.md)**
- 详细的快捷键参考
- LSP 和语言支持
- Git 集成
- 文件浏览
- 调试功能
- 常见问题解答
- 学习资源

👉 **想了解完整功能时查看**

---

### ⌨️ 快速查询卡
**[CHEATSHEET.md](./CHEATSHEET.md)**
- 最常用的 10 个快捷键
- 按场景分类的快捷键
- Vim 模式速查
- 常用命令
- 快速参考表

👉 **编码时快速查阅**

---

### ⚙️ 配置指南
**[CONFIG_GUIDE.md](./CONFIG_GUIDE.md)**
- 配置文件结构说明
- 如何修改编辑器选项
- 如何添加快捷键
- 如何管理插件
- 实用配置示例
- 高级配置技巧

👉 **想自定义配置时查看**

---

### 🔧 初始化说明
**[SETUP.md](./SETUP.md)**
- 安装步骤
- 已配置的内容
- 验证方法

👉 **遇到安装问题时查看**

---

## 🎯 按用途查找文档

### 我是 Neovim 新手
1. 阅读 [QUICKSTART.md](./QUICKSTART.md)
2. 参考 [CHEATSHEET.md](./CHEATSHEET.md)
3. 查看 [README.md](./README.md) 的"学习资源"章节

### 我想快速上手
1. 按 [QUICKSTART.md](./QUICKSTART.md) 中的 10 个步骤
2. 记住最常用的 3 个快捷键
3. 需要时查 [CHEATSHEET.md](./CHEATSHEET.md)

### 我要自定义配置
1. 阅读 [CONFIG_GUIDE.md](./CONFIG_GUIDE.md)
2. 编辑 `~/.config/nvim/lua/config/` 中的文件
3. 参考该文档中的示例

### 我遇到问题
1. 查看 [README.md](./README.md) 的"常见问题"
2. 按照提示运行诊断命令
3. 检查 [SETUP.md](./SETUP.md)

### 我要查快捷键
1. 快速查找：[CHEATSHEET.md](./CHEATSHEET.md)
2. 详细查找：[README.md](./README.md) 的"核心快捷键"
3. 自定义快捷键：[CONFIG_GUIDE.md](./CONFIG_GUIDE.md)

---

## 🔗 关键链接

### 内置命令
```vim
:Lazy            打开插件管理器
:LspInfo         查看 LSP 状态
:Mason           打开包管理器
:checkhealth     诊断环境
:help            Vim 帮助系统
```

### 配置文件
| 文件 | 用途 | 可修改 |
|------|------|--------|
| `lua/config/options.lua` | 编辑器选项 | ✅ |
| `lua/config/keymaps.lua` | 快捷键映射 | ✅ |
| `lua/plugins/example.lua` | 插件配置 | ✅ |
| `init.lua` | 入口点 | ❌ |
| `lua/config/lazy.lua` | Lazy 初始化 | ❌ |

### 外部资源
- [Neovim 官方文档](https://neovim.io/)
- [LazyVim 官方文档](https://www.lazyvim.org/)
- [Vim 快速参考](https://vim.fandom.com/wiki/Vim_Tips_Wiki)

---

## 💡 常用快捷键速记

如果只记住这些，就能完成 80% 的工作：

| 快捷键 | 功能 | 场景 |
|--------|------|------|
| `空格 f f` | 搜索文件 | 打开项目中的任何文件 |
| `空格 f g` | 全局搜索 | 搜索代码中的文本 |
| `g d` | 跳转定义 | 查看函数或类的定义 |
| `g r` | 查找引用 | 找出代码被使用的地方 |
| `K` | 文档 | 查看 API 文档 |
| `空格 c a` | 代码操作 | 快速修复、重构 |
| `空格 c f` | 格式化 | 自动格式化代码 |
| `空格 g g` | Git | 打开 Git 完整 UI |
| `g c` | 注释 | 快速注释代码 |
| `:w` | 保存 | 保存当前文件 |

---

## 📞 获取帮助

### 在 Neovim 中查看帮助

```vim
:help quickref      # Vim 快速参考
:help options       # 所有选项
:help keymaps       # 快捷键
:help lua           # Lua 脚本
:help lsp           # LSP 相关
:help <command>     # 查看具体命令
```

### 查看当前配置

```vim
:set                # 查看所有非默认选项
:map                # 查看所有快捷键映射
:map <leader>       # 查看 leader 相关快捷键
```

### 检查插件状态

```vim
:Lazy               # 打开插件管理器
:LspInfo            # 查看 LSP 状态
:checkhealth        # 环境诊断
```

---

## 📝 文档更新日志

- `2026-10-27` - 初始文档创建
  - README.md - 完整使用指南
  - QUICKSTART.md - 5 分钟快速开始
  - CHEATSHEET.md - 快速查询卡
  - CONFIG_GUIDE.md - 配置指南
  - SETUP.md - 初始化说明
  - INDEX.md - 本导航文件

---

## 🎓 学习路径

### 第一天
- [ ] 阅读 QUICKSTART.md（5 分钟）
- [ ] 按照步骤进行首次操作（10 分钟）
- [ ] 打开几个文件，试试搜索（10 分钟）
- 总计：25 分钟

### 第一周
- [ ] 完整阅读 README.md（1 小时）
- [ ] 运行 `:help quickref` 学习 Vim 基础（1 小时）
- [ ] 尝试代码导航（gd, gr, K）（1 小时）
- [ ] 学习 Git 集成（30 分钟）

### 第二周
- [ ] 阅读 CONFIG_GUIDE.md（1 小时）
- [ ] 自定义一些快捷键（30 分钟）
- [ ] 添加一个新插件（1 小时）
- [ ] 学习宏录制和高级技巧（1 小时）

### 一个月后
- 你会熟悉 Neovim 的基本和高级用法
- 能够高效地编写代码
- 可以根据需求自定义配置

---

祝你使用 LazyVim 愉快！🚀

有问题？查看相应的文档或运行 `:help`。

**记住最关键的 3 个快捷键**：
- `空格 f f` - 打开文件
- `g d` - 跳转定义
- `空格 g g` - 打开 Git
