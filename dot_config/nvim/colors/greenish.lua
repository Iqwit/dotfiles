vim.api.nvim_command('hi clear')

local function highlight(group, styles)
    local gui = styles.gui and 'gui='..styles.gui or 'gui=NONE'
    local sp = styles.sp and 'guisp='..styles.sp or 'guisp=NONE'
    local fg = styles.fg and 'guifg='..styles.fg or 'guifg=NONE'
    local bg = styles.bg and 'guibg='..styles.bg or 'guibg=NONE'
    vim.api.nvim_command('highlight '..group..' '..gui..' '..sp..' '..fg..' '..bg)
end

local background = "#00181a"
local l_black    = "#678B90"
local d_black    = "#3C6267"
local l_red      = "#ff5544"
local d_red      = "#bb1100"
local l_green    = "#58B58D"
local d_green    = "#317851"
local l_yellow   = "#fff36b"
local d_yellow   = "#a89d28"
local l_blue     = "#55B3EA"
local d_blue     = "#2C92BC"
local l_magenta  = "#f7a3ff"
local d_magenta  = "#e467ef"
local l_cyan     = "#40ddc3"
local d_cyan     = "#2Ca084"
local l_white    = "#FFFFFF"
local d_white    = "#E2FEE2"

-- All styling, editor, highlighting, modules, etc
local syntax = {
  Operator = { fg = "#aa6677"},
  Normal = { bg=background },
  Comment = { fg=l_black, bg="#000000", gui="italic" },
  String = { fg=l_yellow, gui="italic" },
  Identifier = { fg = l_magenta },
  Function = { fg = l_green },
  Macro = { fg = l_blue }


}

for group, styles in pairs(syntax) do
    highlight(group, styles)
end
