local dap = require('dap')
local dapui = require('dapui')
dapui.setup()

dap.adapters.gdb = {
  type = "executable",
  command = "gdb",
  args = { "--interpreter=dap", "--eval-command", "set print pretty on" }
}
dap.configurations.c = {
  {
    name = "Launch",
    type = "gdb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    args = {}, -- provide arguments if needed
    cwd = "${workspaceFolder}",
    stopAtBeginningOfMainSubprogram = false,
  },
  {
	  name = "Launch and Follow Children",
	  type = "gdb",
	  request = "launch",
	  program = function()
		  return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
	  end,
	  args = {}, -- provide arguments if needed
	  cwd = "${workspaceFolder}",
	  setupCommands = {  
		  {
			  text = 'set follow-fork-mode child',
			  description = 'follow child process on fork',
			  ignoreFailures = false
		  },
		  {
			  text = 'set detach-on-fork off',
			  description = 'keep parent process attached',
			  ignoreFailures = false
		  },
	  },
	  stopAtBeginningOfMainSubprogram = false,
  },
  {
    name = "Select and attach to process",
    type = "gdb",
    request = "attach",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    pid = function()
      local name = vim.fn.input('Executable name (filter): ')
      return require("dap.utils").pick_process({ filter = name })
    end,
    cwd = '${workspaceFolder}'
  },
  {
    name = 'Attach to gdbserver :1234',
    type = 'gdb',
    request = 'attach',
    target = 'localhost:1234',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}'
  }
}
dap.configurations.cpp= dap.configurations.c
dap.configurations.rust = dap.configurations.c

dap.listeners.after.attach.dapui_config = function()
  dapui.open()
end
dap.listeners.after.launch.dapui_config = function()
  dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
  dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
  dapui.close()
end
