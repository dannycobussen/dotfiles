local cmp = require("cmp")

cmp.setup({
  completion = { completeopt = "menu,menuone,noinsert" },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
})
