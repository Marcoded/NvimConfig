local M = {}

-- In order to disable a default keymap, use

-- Your custom mappings
M.abc = {

  i = {
     ["jj"] = { "<ESC>", "escape insert mode" , opts = { nowait = true }},
    -- ...
  }
}
M.copilot = {
  i = {
    ["<C-l>"] = {
      function()
        vim.fn.feedkeys(vim.fn['copilot#Accept'](), '')
      end,
      "Copilot Accept",
       {replace_keycodes = true, nowait=true, silent=true, expr=true, noremap=true}
      }
  }
}

return M
