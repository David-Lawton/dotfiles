local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

require("telescope").setup {
  defaults = {
    sorting_strategy = "ascending",
    layout_config = {
      horizontal = { prompt_position = "top" },
    },
  },
}
