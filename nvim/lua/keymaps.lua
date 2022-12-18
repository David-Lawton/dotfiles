local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

local autocmd = vim.api.nvim_create_autocmd

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<leader>e", ":Ranger<cr>", opts)
keymap("n", "<leader>f", ":FZF<cr>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Terminal Settings
autocmd("TermOpen",
    {pattern = "*", command = "startinsert"})

--PYTHON
autocmd("FileType", {pattern = "python",
  callback = function()
    keymap("n", "<F5>", ":split<CR>:te ipython %<CR>", opts)
  end
})
--NODEJS
autocmd("FileType", {pattern = "javascript",
  callback = function()
    keymap("n", "<F5>", ":split<CR>:te node %<CR>", opts)
  end
})
--JAVA
--build
autocmd("FileType", {pattern = "java",
  callback = function()
    keymap("n", "<F4>", ":split<CR>:te javac %<CR>", opts)
  end
})
--run
autocmd("FileType", {pattern = "java",
  callback = function()
    keymap("n", "<F5>", ":split<CR>:te java %<CR>", opts)
  end
})
--C++
--build
autocmd("FileType", {pattern = { "c", "cpp", "cuda" },
  callback = function()
    keymap("n", "<F4>", ":split<CR>:te make<CR>", opts)
  end
})
--run
autocmd("FileType", {pattern = { "c", "cpp", "cuda" },
  callback = function()
    keymap("n", "<F5>", ":split<CR>:te ./%:r<CR>", opts)
  end
})
--cmake init
autocmd("FileType", {pattern = "cpp",
  callback = function()
    keymap("n", "<F6>", ":split<CR>:te mkdir build && cmake -S $PWD -B $PWD/build && mv $PWD/build/compile_commands.json .<CR>", opts)
  end
})
--cmake build
autocmd("FileType", {pattern = "cpp",
  callback = function()
    keymap("n", "<F7>", ":split<CR>:te cmake --build build/ --config Release<CR>", opts)
  end
})
--cmake run
autocmd("FileType", {pattern = "cpp",
  callback = function()
    keymap("n", "<F8>", ":split<CR>:te ./build/%:r<CR>", opts)
  end
})
--C
--msp run
autocmd("FileType", {pattern = "c",
  callback = function()
    keymap("n", "<F6>", ':split<CR>:te mspdebug tilib -q "prog %:r"<CR>', opts)
  end
})
--RUST
--build
autocmd("FileType", {pattern = "rust",
  callback = function()
    keymap("n", "<F4>", ":split<CR>:te cargo build<CR>", opts)
  end
})
--run
autocmd("FileType", {pattern = "rust",
  callback = function()
    keymap("n", "<F5>", ":split<CR>:te cargo run<CR>", opts)
  end
})
--GROFF
--build
autocmd("FileType", {pattern = "nroff",
  callback = function()
    keymap("n", "<F4>", ":te groff -e -t -p -ms -T pdf % > %:r.pdf<CR>", opts)
  end
})
--run
autocmd("FileType", {pattern = "nroff",
  callback = function()
    keymap("n", "<F5>", ":te zathura %:r.pdf<CR>", opts)
  end
})

-- Insert --

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", opts)
keymap("t", "<Esc>", "<C-\\><C-n>", opts)
