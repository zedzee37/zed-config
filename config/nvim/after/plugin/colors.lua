local groups = {
  "TelescopeNormal",
  "TelescopeBorder",
  "TelescopePromptNormal",
  "TelescopePromptBorder",
  "TelescopeResultsNormal",
  "TelescopeResultsBorder",
  "TelescopePreviewNormal",
  "TelescopePreviewBorder",
}

for _, group in ipairs(groups) do
  vim.api.nvim_set_hl(0, group, { bg = "none", ctermbg = "none" })
end
