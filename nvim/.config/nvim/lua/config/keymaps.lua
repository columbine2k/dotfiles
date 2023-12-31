vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap

-- ---------- 插入模式 ---------- ---


-- ---------- 视觉模式 ---------- ---
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ---------- 正常模式 ---------- ---
-- buffer 
keymap.set("n", "<leader>bw", ":bdelete<CR>") -- 关闭当前 buffer 
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新增窗口 
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新增窗口

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- ---------- 插件 ---------- ---
-- Nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
-- bufferline
keymap.set("n", "<leader>l", ":BufferLineCycleNext<CR>")
keymap.set("n", "<leader>h", ":BufferLineCyclePrev<CR>")
-- Markdown Preview
keymap.set("n", "<leader>r", ":MarkdownPreviewToggle<CR>")
-- Peek MarkdownPreview
-- keymap.set("n", "<leader>r", ":PeekOpen<CR>")
-- Aerial
keymap.set("n", "\\l", ":AerialToggle!<CR>")
