return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    opts.formatters_by_ft = vim.tbl_extend("force", opts.formatters_by_ft or {}, {
      c = { "clang-format" },
      cpp = { "clang-format" },
    })

    opts.formatters = vim.tbl_extend("force", opts.formatters or {}, {
      ["clang-format"] = {
        prepend_args = { "--style=Allman" },
      },
    })

    return opts
  end,
}
