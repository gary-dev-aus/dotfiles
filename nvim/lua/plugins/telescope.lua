local actions = require("telescope.actions")

return {
  "nvim-telescope/telescope.nvim",
  keys = {
    i = {
      ["c-k"] = actions.move_selection_previous,
      ["c-j"] = actions.move_selection_next,
    },
  },
  -- change some options
  opts = {
    defaults = {
      layout_strategy = "horizontal",
      layout_config = { prompt_position = "top" },
      sorting_strategy = "ascending",
      winblend = 0,
    },
  },
}
