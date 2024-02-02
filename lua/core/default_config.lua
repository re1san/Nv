local M = {}
-- local stats = require("lazy").stats() -- Module not found error, will fix later

M.options = {
  nvchad_branch = "v2.0",
}

M.ui = {
  ------------------------------- Base46 -------------------------------------
  -- hl = Highlights
  hl_add = {},
  hl_override = {},
  changed_themes = {},
  theme_toggle = { "oxocarbon", "oxocarbon" },
  theme = "oxocarbon",         -- Default theme
  transparency = false,
  lsp_semantic_tokens = false, -- Needs nvim v0.9, just adds highlight groups for lsp semantic tokens

  -- https://github.com/NvChad/base46/tree/v2.0/lua/base46/extended_integrations
  extended_integrations = {}, -- These aren't compiled by default, ex: "alpha", "notify"

  -- cmp themeing
  cmp = {
    icons = true,
    lspkind_text = true,
    style = "default",            -- default/flat_light/flat_dark/atom/atom_colored
    border_color = "grey_fg",     -- only applicable for "default" style, use color names from base30 variables
    selected_item_bg = "colored", -- colored / simple
  },

  telescope = { style = "borderless" }, -- borderless / bordered

  ------------------------------- nvchad_ui modules -----------------------------
  statusline = {
    theme = "minimal", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "block",
    overriden_modules = nil,
  },

  -- Lazyload it when there are 1+ buffers
  tabufline = {
    show_numbers = false,
    enabled = true,
    lazyload = true,
    overriden_modules = nil,
  },

  -- NvDash (Dashboard)
  nvdash = {
    load_on_startup = false,

    header = {
      "           ▄ ▄                   ",
      "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
      "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
      "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
      "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
      "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄",
      "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █",
      "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █",
      "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    ",
    },
    message = {
      "[ ━━━━━━ ❖  ━━━━━━ ]",
    },
    buttons = {
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
      --{ "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
      --{ "  Bookmarks", "Spc m a", "Telescope marks" },
      --{ "  Themes", "Spc t h", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
    },
    --footer = {
    --  "Loaded " .. stats.count .. " plugins",
    --}
  },

  cheatsheet = { theme = "grid" }, -- simple/grid

  lsp = {
    -- Show function signatures i.e args as you type
    signature = {
      disabled = false,
      silent = true, -- Silences 'no signature help available' message from appearing
    },
  },
}

M.plugins = ""                                    -- Path i.e "custom.plugins", so make custom/plugins.lua file

M.lazy_nvim = require "plugins.configs.lazy_nvim" -- Config for lazy.nvim startup options

M.mappings = require "core.mappings"

return M
