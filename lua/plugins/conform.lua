return {
  "stevearc/conform.nvim",
  optional = true,
  opts = function(_, opts)
    opts.format_on_save = opts.format_on_save or {}
    opts.formatters_by_ft = opts.formatters_by_ft or {}
    opts.formatters = opts.formatters or {}

    -- Formatters by file type
    opts.formatters_by_ft.javascript = { "prettier" }
    opts.formatters_by_ft.typescript = { "prettier" }
    opts.formatters_by_ft.jsx = { "prettier" }
    opts.formatters_by_ft.tsx = { "prettier" }
    opts.formatters_by_ft.html = { "prettier" }
    opts.formatters_by_ft.css = { "prettier" }
    opts.formatters_by_ft.tailwindcss = { "prettier" }
    opts.formatters_by_ft.php = { "prettier_php" }

    -- Prettier PHP custom config
    opts.formatters.prettier_php = {
      command = "prettier",
      args = {
        "--plugin="
          .. (
            vim.fn.executable("/opt/homebrew/bin/npm") == 1
              and "/opt/homebrew/lib/node_modules/@prettier/plugin-php/src/index.mjs"
            or "/usr/local/lib/node_modules/@prettier/plugin-php/src/index.mjs"
          ),
        "--parser=php",
      },
      condition = function()
        return vim.fn.executable("prettier") == 1
      end,
    }
  end,
}
