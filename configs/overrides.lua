local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.telescope = {
  defaults = {
    prompt_prefix = " %  ",
    -- mappings = {
    --   ["<tab>"] = "select_default",
    -- }
  },
  pickers = {
    buffers = {
      sort_mru = true,
    },
  },
}

local cmp = require "cmp"
M.cmp = {
  mapping = {
    ["<CR>"] = cmp.mapping(function(fallback)
      fallback()
    end, { "i", "s" }),
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.confirm {
          behavior = cmp.ConfirmBehavior.Replace,
          select = false,
        }
      elseif require "luasnip".expand_or_jumpable() then
        vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true), "")
      else
        fallback()
      end
    end, { "i", "s", }),
    -- ["<Tab>"] = cmp.mapping(function(fallback)
    --   fallback()
    -- end, { "i", "s" }),
    ["<S-Tab>"] = cmp.mapping(function(fallback)
      fallback()
    end, { "i", "s", }),
  }
}

return M
