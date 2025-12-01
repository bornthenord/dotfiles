local telescope = require("telescope.builtin")

-- exit

vim.keymap.set("n", "<leader>qq", ":q!<CR>")

-- files
vim.keymap.set("n", "<leader>ff", telescope.find_files, { desc = "[f]ind [f]iles" })
vim.keymap.set("n", "<leader>fb", telescope.buffers, { desc = "[f]ind [b]uffers" })
vim.keymap.set("n", "<leader>fg", telescope.live_grep, { desc = "[f]ind [g]rep" })

-- buffer
vim.keymap.set("n", "<Tab>", ":bnext<CR>", { desc = "[b]uffer [n]ext" })
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", { desc = "[b]uffer [p]rev" })
vim.keymap.set("n", "<leader>bc", ":bufdo bd<CR>", { desc = "[b]uffers [c]lose" })
vim.keymap.set("n", "<leader>bw", ":w<CR>", { desc = "[s]uffer [w]rite" })
vim.keymap.set("n", "<leader>bd", ":bd<CR>", { desc = "[b]uffer [d]elete" })
