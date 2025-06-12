return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = {
        auto_trigger = true,
        debounce = 75,
        keymap = {
          accept = "<C-e>",
          next = "<C-Right>",
          prev = "<C-Left>",
          dismiss = "<C-c>",
        },
      },
    })
  end,
}
