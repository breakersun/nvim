local options = {
  backup = false, -- creates a backup file
  clipboard = "unnamedplus", -- allows neovim to access the system clipboard
  completeopt = { "menuone", "noselect" }, -- mostly just for cmp
  fileencoding = "utf-8", -- the encoding written to a file
  ignorecase = true, -- ignore case in search patterns
  mouse = "a", -- allow the mouse to be used in neovim
  pumheight = 10, -- pop up menu height
  showmode = false, -- we don't need to see things like -- INSERT -- anymore
  showtabline = 2, -- always show tabs
  --  smartcase = true,                        -- smart case
  smartindent = true, -- make indenting smarter again
  splitbelow = true, -- force all horizontal splits to go below current window
  splitright = true, -- force all vertical splits to go to the right of current window
  swapfile = false, -- creates a swapfile
  termguicolors = true, -- set term gui colors (most terminals support this)
  timeoutlen = 1000, -- time to wait for a mapped sequence to complete (in milliseconds)
  undofile = true, -- enable persistent undo
  updatetime = 300, -- faster completion (4000ms default)
  writebackup = false, -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  expandtab = true, -- convert tabs to spaces
  shiftwidth = 2, -- the number of spaces inserted for each indentation
  shiftround = true,
  tabstop = 2, -- insert 2 spaces for a tab
  cursorline = true, -- highlight the current line
  number = true, -- set numbered lines
  numberwidth = 4, -- set number column width to 2 {default 4}
  relativenumber = false,
  signcolumn = "yes", -- always show the sign column, otherwise it would shift the text each time
  wrap = true, -- display lines as one long line
  scrolloff = 4,
  sidescrolloff = 8,
  wildmenu = true, -- Display all matching files when we tab complete
  inccommand = "split", -- display effects while substitute
  listchars = 'eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣',
  showmatch = true,
  showcmd = true,
  modeline = false,
}

vim.opt.shortmess:append "c"
vim.opt.path:append "**" -- Provides tab-completion for all file-related tasks
vim.opt.nrformats:append "alpha,unsigned" -- treat 2012-01-15 15 as a unsigned number instead of -15
vim.opt.diffopt:append "vertical"

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work

vim.deprecate = function() end

function my_paste(reg)
  return function(lines)
    local content = vim.fn.getreg('"')
    return vim.split(content, '\n')
  end
end
vim.g.clipboard = {
  name = 'OSC 52',
  copy = {
    ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
    ['*'] = require('vim.ui.clipboard.osc52').copy('*'),
  },
  paste = {
    ["+"] = my_paste("+"),
    ["*"] = my_paste("*"),
  },
}

