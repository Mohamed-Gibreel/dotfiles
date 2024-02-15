local M = {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
  },
}


function M.config()
  local servers = {
    "lua_ls",
    "cssls",
    "html",
    "tsserver",
    "tailwindcss",
    "bashls",
    "jsonls",
    "clangd",
    -- "prettier",
    -- "stylua",
    -- "black",
  }

  require("mason").setup {
    ui = {
      border = "rounded",
    },
  }

  require("mason-lspconfig").setup {
    ensure_installed = servers,
  }
end

return M