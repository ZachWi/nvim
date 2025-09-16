require("motorbike")
local motorbike = require("motorbike")

-- Swap directories
vim.keymap.set("n", "<leader>sd", function() motorbike.swap() end)
vim.keymap.set("n", "<leader>sm", function() motorbike.set_directories(
        "/Users/zacharywillis/motorbike/",
        "/Users/zacharywillis/.config/nvim/"
    ) end)
