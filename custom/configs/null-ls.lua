local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } }, -- so prettier works only on these filetypes

  -- Lua
  b.formatting.stylua,

  -- python
  b.formatting.black.with { filetypes = { "python" }, extra_args = { "--preview", "--line-length=120" } },
  b.formatting.isort.with { filetypes = { "python" }, extra_args = { "--filter-files", "--profile=black" } },
  b.diagnostics.ruff.with {
    filetypes = { "python" },
    extra_args = {
      "--line-length=120",
      "--extend-select=D,N,W,I,G",
      "--per-file-ignores=tests/*: D",
      "--dummy-variable-rgx=^_$",
      "--ignore=G004",
    },
  },
  b.diagnostics.mypy.with {
    filetypes = { "python" },
    extra_args = { "--ignore-missing-imports", "--scripts-are-modules" },
  },
}

-- local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup {
  debug = true,
  sources = sources,
  -- you can reuse a shared lspconfig on_attach callback here
  -- For format on save
  -- on_attach = function(client, bufnr)
  --   if client.supports_method "textDocument/formatting" then
  --     vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
  --     vim.api.nvim_create_autocmd("BufWritePre", {
  --       group = augroup,
  --       buffer = bufnr,
  --       callback = function()
  --         -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
  --         -- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
  --         vim.lsp.buf.format { async = false }
  --       end,
  --     })
  --   end
  -- end,
}
