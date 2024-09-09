local format_on_save = require("format-on-save")
local formatters = require("format-on-save.formatters")

format_on_save.setup({
    formatter_by_ft = {
        cpp = formatters.shell({
            cmd = { "clang-format" }
        }),
        h = formatters.shell({
            cmd = { "clang-format" }
        }),
        go = formatters.shell({
            cmd = { "gofmt" }
        }),
        python = {
            formatters.black
        },
    }
})
