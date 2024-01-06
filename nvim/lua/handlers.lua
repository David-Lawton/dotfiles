local M = {}

-- TODO: backfill this to template
M.setup = function()
  local signs = {
    { name = "DiagnosticSignError", text = "" },
    { name = "DiagnosticSignWarn", text = "" },
    { name = "DiagnosticSignHint", text = "" },
    { name = "DiagnosticSignInfo", text = "" },
  }

  for _, sign in ipairs(signs) do
    vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
  end

  local config = {
    -- disable virtual text
    virtual_text = false,
    -- show signs
    signs = {
      active = signs,
    },
    update_in_insert = true,
    underline = true,
    severity_sort = true,
    float = {
      focusable = false,
      style = "minimal",
      border = "rounded",
      source = "always",
      header = "",
      prefix = "",
    },
  }

  vim.diagnostic.config(config)

  vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
    border = "rounded",
  })

  vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
    border = "rounded",
  })
end

local function lsp_keymaps(bufnr)
  local opts = { noremap = true, silent = true }
  -- Open document symbol picker
  --vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>s", "<cmd>lua vim.lsp.buf.document_symbol()<CR>", opts)
  -- Open workspace symbol picker
  --vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>S", "<cmd>lua vim.lsp.buf.workspace_symbol()<CR>", opts)
  -- Open document diagnostics picker
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>d", "<cmd>lua vim.diagnostic.show_line_diagnostics()<CR>", opts)
  -- Rename symbol
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>n", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
  -- Apply code action
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>a", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
  -- Select symbol references
 -- vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>h", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
  -- Show description
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>k", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
  -- Go to definition
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
  -- Go to type definition
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gt", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)

  -- Go to implementation
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
  -- Go to next diagnostic
  vim.api.nvim_buf_set_keymap(bufnr, "n", "]d", "<cmd>lua vim.diagnostic.goto_next({ border = 'rounded' })<CR>", opts)
  -- Go to previous diagnostic
  vim.api.nvim_buf_set_keymap(bufnr, "n", "[d", "<cmd>lua vim.diagnostic.goto_prev({ border = 'rounded' })<CR>", opts)

  vim.cmd [[ command! Format execute 'lua vim.lsp.buf.formatting()' ]]
end

M.on_attach = function(client, bufnr)
  lsp_keymaps(bufnr)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()

local status_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not status_ok then
  return
end

M.capabilities = cmp_nvim_lsp.default_capabilities(capabilities)

return M
