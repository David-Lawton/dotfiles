local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup {
  ensure_installed = {"c", "lua", "cpp", "rust", "zig", "verilog", "python", "cmake", "make", "cuda", "glsl", "nasm", "toml", "vim", "zig", "comment", "diff", "dockerfile", "gitcommit", "gitignore", "json", "vimdoc", "regex", "csv"},
  sync_install = false,
  auto_install = false,
  ignore_install = { "" }, -- List of parsers to ignore installing
  modules = {},
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,
  },
  indent = { enable = true, disable = { "yaml" } },
}
