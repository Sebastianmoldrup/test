return {
  "stevearc/conform.nvim",
  optional = true,
  opts = function(_, opts)
    opts.formatters_by_ft = opts.formatters_by_ft or {}
    opts.formatters = opts.formatters or {}

    opts.formatters_by_ft.php = { "prettier_php" }
    opts.formatters_by_ft.css = { "prettier" }
    opts.formatters.prettier_php = {
      command = "prettier",
      args = {
        -- "--plugin=/usr/local/lib/node_modules/@prettier/plugin-php/src/index.mjs", -- if which npm = /usr/
        "--plugin=/opt/homebrew/lib/node_modules/@prettier/plugin-php/src/index.mjs", -- if which npm = /opt/
        "--parser=php",
      },
      condition = function()
        return vim.fn.executable("prettier") == 1
      end,
    }
  end,
}
