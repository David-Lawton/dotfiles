local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

local actions = require("lvim.utils.modules").require_on_exported_call "telescope.actions"

require("telescope").setup {
  defaults = {
    sorting_strategy = "ascending",
    layout_config = {
      horizontal = { prompt_position = "top" },
    },
  },
mappings = {
        i = {
          ["<C-n>"] = actions.move_selection_next,
          ["<C-p>"] = actions.move_selection_previous,
          ["<C-c>"] = actions.close,
          ["<C-j>"] = actions.cycle_history_next,
          ["<C-k>"] = actions.cycle_history_prev,
          ["<CR>"] = actions.select_default,
        },
        n = {
          ["<C-n>"] = actions.move_selection_next,
          ["<C-p>"] = actions.move_selection_previous,
        },
      },
}
