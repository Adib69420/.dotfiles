require('lint').linters_by_ft = {
  markdown = {'vale',},
  cpp = {'cpplint'}
}


vim.keymap.set("n", "<leader>ll", function()
  require("lint").try_lint()
end, { desc = "Trigger linting for current file" })

