local telescope = require("telescope.builtin")

-- exit

vim.keymap.set("n", "<leader>qq", ":q!<CR>")

-- files
vim.keymap.set("n", "<leader>ff", telescope.find_files, { desc = "[f]ind [f]iles" })
vim.keymap.set("n", "<leader>fb", telescope.buffers, { desc = "[f]ind [b]uffers" })
vim.keymap.set("n", "<leader>fg", telescope.live_grep, { desc = "[f]ind [g]rep" })

-- buffers
vim.keymap.set("n", "<Tab>", ":bnext<CR>", { desc = "[b]uffer [n]ext" })
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", { desc = "[b]uffer [p]rev" })
vim.keymap.set("n", "<leader>bc", ":bufdo bd<CR>", { desc = "[b]uffers [c]lose" })
vim.keymap.set("n", "<leader>bs", ":w<CR>", { desc = "[s]uffer [s]ave" })
vim.keymap.set("n", "<leader>bq", ":bd<CR>", { desc = "[b]uffer [q]uit" })
vim.keymap.set("n", "<leader>bQ", ":bd!<CR>", { desc = "[b]uffer [q]uit without save" })
