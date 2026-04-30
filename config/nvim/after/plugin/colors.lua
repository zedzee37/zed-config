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

-- local function apply_custom_highlights()
--     -- vim.api.nvim_set_hl(0, "Type", { fg = "#0000ff", bold = true })
-- end

-- apply_custom_highlights()

-- vim.api.nvim_create_autocmd("ColorScheme", {
--     pattern = "*",
--     callback = apply_custom_highlights,
-- })
