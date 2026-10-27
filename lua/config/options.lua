-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- 中文环境优化
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- 输入法配置（fcitx/ibus 用户可根据需要调整）
-- 如果使用中文输入法，按 ESC 自动切换回英文
if vim.fn.executable("fcitx-remote") == 1 then
  vim.api.nvim_create_augroup("fcitx_group", { clear = true })
  vim.api.nvim_create_autocmd("InsertLeave", {
    group = "fcitx_group",
    callback = function()
      os.execute("fcitx-remote -c")
    end,
  })
end
