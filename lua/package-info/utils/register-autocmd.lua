local constants = require("package-info.utils.constants")

--- Register given command when the event fires
-- @param event: string - event that will trigger the autocommand
-- @param command: string - command to fire when the event is triggered
return function(event, command)
    vim.cmd("augroup " .. constants.AUTOGROUP)
    vim.cmd("autocmd!")
    vim.cmd("autocmd " .. event .. " * " .. command)
    vim.cmd("augroup end")
end
