-- return {
--   "mfussenegger/nvim-lint",
--   -- event = {
--   --   "BufReadPre",
--   --   "BufNewFile",
--   -- },
--   config = function()
--     local lint = require("lint")
--     lint.linters_by_ft = {
--       javascript = { "eslint_d" },
--       typescript = { "eslint_d" },
--       javascriptreact = { "eslint_d" },
--       typescriptreact = { "eslint_d" },
--       svelte = { "eslint_d" },
--       python = { "pylint" },
--     }
--     local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
--     vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
--       group = lint_augroup,
--       callback = function()
--         lint.try_lint()
--       end,
--     })
--     vim.keymap.set("n", "<leader>l", function()
--       lint.try_lint()
--     end, { desc = "Trigger linting for current file" })
--   end,
-- }

return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.diagnostics.eslint_d,
        -- null_ls.builtins.code_actions.eslint_d,
        null_ls.builtins.completion.spell,
      },
    })
  end,
}
