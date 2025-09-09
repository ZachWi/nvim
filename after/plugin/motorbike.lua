require("motorbike")
local motorbike = require("motorbike")

-- Swap directories
vim.keymap.set("n", "<leader>sd", function()
    motorbike.swap()
end, { desc = "Swap motorbike directories" })

-- Set directories manually (example)
vim.keymap.set("n", "<leader>sm", function()
    motorbike.set_directories(
        "/Users/zacharywillis/motorbike/",
        "/Users/zacharywillis/.config/nvim/"
    )
end, { desc = "Set motorbike directories" })

