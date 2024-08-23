require("conform").setup({
  formatters_by_ft = {
    cpp = {"clang-format"}
  },
})


vim.keymap.set( {"n","v"} , "<leader>mp", function() 
  require("conform").format({
    lsp_fallback = true,
    async = false,
    timeout_ms = 500
  })
end,{desc = "Working"})
