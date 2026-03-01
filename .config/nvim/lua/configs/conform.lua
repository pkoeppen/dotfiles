local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "black" },
    javascript = { "eslint_d" },
    javascriptreact = { "eslint_d" },
    typescript = { "eslint_d" },
    typescriptreact = { "eslint_d" },
    vue = { "eslint_d" },
    html = { "eslint_d" },
    markdown = { "eslint_d" },
    json = { "eslint_d" },
    jsonc = { "eslint_d" },
    yaml = { "eslint_d" },
    toml = { "eslint_d" },
    xml = { "eslint_d" },
    gql = { "eslint_d" },
    graphql = { "eslint_d" },
    astro = { "eslint_d" },
    svelte = { "eslint_d" },
    css = { "eslint_d" },
    less = { "eslint_d" },
    scss = { "eslint_d" },
    pcss = { "eslint_d" },
    postcss = { "eslint_d" }
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
