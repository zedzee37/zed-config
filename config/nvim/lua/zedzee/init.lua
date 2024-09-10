require("zedzee.remap")
require("zedzee.packer")
require("zedzee.set")

local gdproject = io.open(vim.fn.getcwd()..'/project.godot', 'r')
if gdproject then
    io.close(gdproject)
    vim.fn.serverstart './godothost'
end
