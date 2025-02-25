return {
  "stevearc/conform.nvim",
  optional = true,
  opts = function(_, opts)
    opts.formatters_by_ft = opts.formatters_by_ft or {}
    opts.formatters = opts.formatters or {}

    opts.formatters_by_ft.php = { "prettier" }
    opts.formatters.prettier = {
      args = {
        "--plugin=/Users/sebastianmoldrup/.nvm/versions/node/v20.18.0/lib/node_modules/@prettier/plugin-php/src/index.mjs",
        "--parser=php",
      },
      condition = function()
        return vim.fn.executable("prettier") == 1
      end,
    }
  end,
}
