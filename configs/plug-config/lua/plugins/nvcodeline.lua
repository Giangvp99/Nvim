-- -- require'nvim-web-devicons'.setup()

-- local gl = require('galaxyline')
-- local gls = gl.section
-- gl.short_line_list = {'coc-explorer'}

-- local colors = {
--   bg = '#282c34',
--   yellow = '#fabd2f',
--   cyan = '#008080',
--   darkblue = '#081633',
--   green = '#608B4E',
--   orange = '#FF8800',
--   purple = '#5d4d7a',
--   magenta = '#d16d9e',
--   grey = '#c0c0c0',
--   blue = '#569CD6',
--   red = '#D16969'
-- }

-- local buffer_not_empty = function()
--   if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then
--     return true
--   end
--   return false
-- end

-- -- gls.left[1] = {
-- --   FirstElement = {
-- --     -- provider = function() return '▋' end,
-- --     provider = function() return ' ' end,
-- --     highlight = {colors.bg,colors.bg}
-- --   },
-- -- }
-- -- gls.left[2] = {
-- --   ViMode = {
-- --     provider = function()
-- --       local alias = {n = 'NORMAL',i = 'INSERT',c= 'COMMAND',V= 'VISUAL', [''] = 'VISUAL'}
-- --       return alias[vim.fn.mode()]
-- --     end,
-- --     separator = ' ',
-- --     separator_highlight = {colors.yellow,function()
-- --       if not buffer_not_empty() then
-- --         return colors.purple
-- --       end
-- --       return colors.purple
-- --     end},
-- --     highlight = {colors.grey,colors.purple,'bold'},
-- --  },
-- -- }
-- gls.left[1] = {
--   ViMode = {
--     provider = function()
--       -- auto change color according the vim mode
--       local mode_color = {n = colors.purple, 
--                           i = colors.green,
--                           v = colors.blue,
--                           [''] = colors.blue,
--                           V = colors.blue,
--                           c = colors.purple,
--                           no = colors.magenta,
--                           s = colors.orange,
--                           S = colors.orange,
--                           [''] = colors.orange,
--                           ic = colors.yellow,
--                           R = colors.red,
--                           Rv = colors.red,
--                           cv = colors.red,
--                           ce=colors.red, 
--                           r = colors.cyan,
--                           rm = colors.cyan, 
--                           ['r?'] = colors.cyan,
--                           ['!']  = colors.red,
--                           t = colors.red}
--       vim.api.nvim_command('hi GalaxyViMode guibg='..mode_color[vim.fn.mode()])
--       return '  Giangvp99 '
--     end,
--     separator = ' ',
--     separator_highlight = {colors.yellow,function()
--       if not buffer_not_empty() then
--         return colors.bg
--       end
--       return colors.bg
--     end},
--     highlight = {colors.grey,colors.bg,'bold'},
--   },
-- }
-- -- gls.left[2] ={
-- --   FileIcon = {
-- --     separator = ' ',
-- --     provider = 'FileIcon',
-- --     condition = buffer_not_empty,
-- --     highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color,colors.bg},
-- --   },
-- -- }
-- gls.left[2] = {
--   FileName = {
--     provider = {'FileName'},
--     condition = buffer_not_empty,
--     separator = ' ',
--     separator_highlight = {colors.purple,colors.bg},
--     highlight = {colors.magenta,colors.bg}
--   }
-- }

-- gls.left[3] = {
--   GitIcon = {
--     provider = function() return ' ' end,
--     condition = buffer_not_empty,
--     highlight = {colors.orange,colors.bg},
--   }
-- }
-- gls.left[4] = {
--   GitBranch = {
--     provider = 'GitBranch',
--     separator = ' ',
--     separator_highlight = {colors.purple,colors.bg},
--     condition = buffer_not_empty,
--     highlight = {colors.grey,colors.bg},
--   }
-- }

-- local checkwidth = function()
--   local squeeze_width  = vim.fn.winwidth(0) / 2
--   if squeeze_width > 40 then
--     return true
--   end
--   return false
-- end

-- gls.left[5] = {
--   DiffAdd = {
--     provider = 'DiffAdd',
--     condition = checkwidth,
--     -- separator = ' ',
--     -- separator_highlight = {colors.purple,colors.bg},
--     icon = '  ',
--     highlight = {colors.green,colors.bg},
--   }
-- }
-- gls.left[6] = {
--   DiffModified = {
--     provider = 'DiffModified',
--     condition = checkwidth,
--     -- separator = ' ',
--     -- separator_highlight = {colors.purple,colors.bg},
--     icon = '  ',
--     highlight = {colors.blue,colors.bg},
--   }
-- }
-- gls.left[7] = {
--   DiffRemove = {
--     provider = 'DiffRemove',
--     condition = checkwidth,
--     -- separator = ' ',
--     -- separator_highlight = {colors.purple,colors.bg},
--     icon = '  ',
--     highlight = {colors.red,colors.bg},
--   }
-- }
-- gls.left[8] = {
--   LeftEnd = {
--     provider = function() return ' ' end,
--     separator = ' ',
--     separator_highlight = {colors.purple,colors.bg},
--     highlight = {colors.purple,colors.bg}
--   }
-- }
-- gls.left[9] = {
--   DiagnosticError = {
--     provider = 'DiagnosticError',
--     icon = '  ',
--     highlight = {colors.red,colors.bg}
--   }
-- }
-- gls.left[10] = {
--   Space = {
--     provider = function () return '' end
--   }
-- }
-- gls.left[11] = {
--   DiagnosticWarn = {
--     provider = 'DiagnosticWarn',
--     icon = '  ',
--     highlight = {colors.yellow,colors.bg},
--   }
-- }
-- gls.left[12] = {
--   DiagnosticHint = {
--     provider = 'DiagnosticHint',
--     icon = '   ',
--     highlight = {colors.blue,colors.bg},
--   }
-- }
-- gls.left[13] = {
--   DiagnosticInfo = {
--     provider = 'DiagnosticInfo',
--     icon = '   ',
--     highlight = {colors.orange,colors.bg},
--   }
-- }
-- gls.right[1]= {
--   FileFormat = {
--     provider = 'FileFormat',
--     separator = ' ',
--     separator_highlight = {colors.bg,colors.bg},
--     highlight = {colors.grey,colors.bg},
--   }
-- }
-- gls.right[2] = {
--   LineInfo = {
--     provider = 'LineColumn',
--     separator = ' | ',
--     separator_highlight = {colors.darkblue,colors.bg},
--     highlight = {colors.grey,colors.bg},
--   },
-- }
-- gls.right[3] = {
--   PerCent = {
--     provider = 'LinePercent',
--     separator = ' |',
--     separator_highlight = {colors.darkblue,colors.bg},
--     highlight = {colors.grey,colors.bg},
--   }
-- }
-- gls.right[4] = {
--   ScrollBar = {
--     provider = 'ScrollBar',
--     highlight = {colors.yellow,colors.purple},
--   }
-- }

-- -- gls.short_line_left[1] = {
-- --   BufferType = {
-- --     provider = 'FileTypeName',
-- --     separator = ' ',
-- --     separator_highlight = {colors.purple,colors.bg},
-- --     highlight = {colors.grey,colors.purple}
-- --   }
-- -- }

-- gls.short_line_left[1] = {
--   LeftEnd = {
--     provider = function() return 'Explorer' end,
--     separator = ' ',
--     separator_highlight = {colors.purple,colors.bg},
--     highlight = {colors.purple,colors.bg}
--   }
-- }

-- -- gls.short_line_right[1] = {
-- --   BufferIcon = {
-- --     provider= 'BufferIcon',
-- --     separator = ' ',
-- --     separator_highlight = {colors.purple,colors.bg},
-- --     highlight = {colors.grey,colors.purple}
-- --   }
-- -- }
-- -- function! s:my_bookmark_color() abort
-- --   let s:scl_guibg = matchstr(execute('hi SignColumn'), 'guibg=\zs\S*')
-- --   if empty(s:scl_guibg)
-- --     let s:scl_guibg = 'NONE'
-- --   endif
-- --   exe 'hi MyBookmarkSign guifg=' . s:scl_guibg
-- -- endfunction
-- -- call s:my_bookmark_color() " don't remove this line!

-- -- augroup UserGitSignColumnColor
-- --   autocmd!
-- --   autocmd ColorScheme * call s:my_bookmark_color()
-- -- augroup END
--
-- 
--
local gl = require('galaxyline')
local gls = gl.section
gl.short_line_list = {'coc-explorer','vista','dbui'}
local vim = vim
local vcs = require('galaxyline.provider_vcs')

function string:title()
  return self:sub(1,1):upper()..self:sub(2)
end

local function has_diff()
  -- diff data 1:add 2:modified 3:remove
  local diff_data = 0
  if vim.fn.exists('*GitGutterGetHunkSummary') == 1 then
    for idx,v in pairs(vim.fn.GitGutterGetHunkSummary()) do
      diff_data = diff_data + v
    end
    return diff_data
  elseif vim.fn.exists('*sy#repo#get_stats') == 1 then
    diff_data = vim.fn['sy#repo#get_stats']()[1]+ vim.fn['sy#repo#get_stats']()[2]+ vim.fn['sy#repo#get_stats']()[3]
    return diff_data
  elseif vim.fn.exists('b:gitsigns_status') == 1 then
    local gitsigns_dict = vim.api.nvim_buf_get_var(0, 'gitsigns_status')
    diff_data[1] = tonumber(gitsigns_dict:match('+(%d+)')) or 0
    + tonumber(gitsigns_dict:match('~(%d+)')) or 0
    + tonumber(gitsigns_dict:match('-(%d+)')) or 0
  end
  return diff_data ~= 0
end

local colors = {
  bg = '#282c34',
  yellow = '#fabd2f',
  cyan = '#008080',
  darkblue = '#081633',
  green = '#afd700',
  orange = '#FF8800',
  purple = '#5d4d7a',
  magenta = '#d16d9e',
  grey = '#c0c0c0',
  blue = '#0087d7',
  red = '#ec5f67',
  white = '#FFFFFF',
  pink = '#fadadd'
}

local buffer_not_empty = function()
  if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then
    return true
  end
  return false
end

gls.left[1] = {
  FirstElement = {
    provider = function() return '▋' end,
    highlight = {colors.pink,colors.pink}
  },
}
gls.left[2] = {
  ViMode = {
    provider = function()
      local alias = {n = 'NORMAL',i = 'INSERT',c= 'COMMAND',V= 'VISUAL', [''] = 'VISUAL'}
      return alias[vim.fn.mode()]
    end,
    separator = '',
    separator_highlight = {colors.pink, 
      (function() if buffer_not_empty() then return colors.darkblue else return colors.bg end end)(),
    },
    highlight = {colors.darkblue,colors.pink,'bold'},
  },
}
gls.left[3] ={
  FileIcon = {
    provider = 'FileIcon',
    condition = buffer_not_empty,
    highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color,colors.darkblue},
  },
}

gls.left[4] = {
  FileName = {
    provider = {'FileName', 'FileSize'},
    condition = buffer_not_empty,
    separator = '',
    separator_highlight = {colors.purple,colors.darkblue},
    highlight = {colors.magenta,colors.darkblue}
  }
}

gls.left[5] = {
  FileType = {
    provider = (function()
      local ft = vim.bo.filetype
      local landdict = {
        cpp = "C++",
        cs  = "C#",
        objc = "Objective C"
      }
      s = landdict[ft] or ft
      return s:title()
    end),
    condition = buffer_not_empty,
    separator = '',
    separator_highlight = {colors.purple,colors.darkblue},
    highlight = {colors.grey,colors.purple}
  }
}

gls.left[6] = {
  DiagnosticError = {
    provider = 'DiagnosticError',
    condition = buffer_not_empty,
    --icon = '  ',
    icon = ' ❌ ',
    separator = '',
    separator_highlight = {colors.purple,colors.darkblue},
    highlight = {colors.red,colors.darkblue}
  }
}

gls.left[8] = {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    --icon = '  ',
    icon = '⚠️' ,
    condition = buffer_not_empty,
    highlight = {colors.blue,colors.darkblue},
  }
}
gls.left[9] = {
  GitIcon = {
    provider = function() return '  ' end,
    condition = vcs.check_git_workspace,
    highlight = {colors.orange,colors.purple},
  }
}
gls.left[10] = {
  GitBranch = {
    provider = 'GitBranch',
    condition = vcs.check_git_workspace,
    separator = '',
    highlight = {colors.grey,colors.purple},
    separator_highlight = {colors.purple,colors.bg},
  }
}

local checkwidth = function()
  local squeeze_width  = vim.fn.winwidth(0) / 2
  if squeeze_width > 40 then
    return true
  end
  return false
end
--[[
gls.left[11] = {
  LeftEnd = {
    provider = function() return '' end,
    --separator = '',
    --separator_highlight = {colors.purple,colors.bg},
    highlight = {colors.bg,colors.bg}
  }
}
]]
---------------------------------------------------------------------------------------------------
gls.right[1] = {
  DiffAdd = {
    provider = 'DiffAdd',
    --icon = ' ',
    condition = vcs.check_git_workspace,
    icon = '🟢',
    highlight = {colors.green,colors.purple},
  }
}
gls.right[2] = {
  DiffModified = {
    provider = 'DiffModified',
    condition = vcs.check_git_workspace,
    --icon = ' ',
    icon = '🟡',
    highlight = {colors.orange,colors.purple},
  }
}
gls.right[3] = {
  DiffRemove = {
    provider = 'DiffRemove',
    condition = vcs.check_git_workspace,
    --icon = ' ',
    icon = '🔴',
    highlight = {colors.red,colors.purple},
  }
}
gls.right[4] ={
  Separator = {
    provider = function() return '' end,
    --separator = '',
    condition = function() return has_diff() and buffer_not_empty() end,
    highlight = { colors.purple, colors.bg},
    --separator_highlight =  {colors.purple,colors.bg},
  }
}
gls.right[5]= {
  FileFormat = {
    provider = 'LineColumn',
    separator = '',
    separator_highlight = {colors.bg,colors.purple},
    highlight = {colors.grey,colors.purple},
  }
}
gls.right[6] = {
  LineInfo = {
    provider = function() return vim.fn.line('$') end,
    separator = '|',
    separator_highlight = {colors.darkblue,colors.purple},
    highlight = {colors.grey,colors.purple},
  },
}
gls.right[7] = {
  PerCent = {
    provider = 'LinePercent',
    separator = '',
    separator_highlight = {colors.darkblue,colors.purple},
    highlight = {colors.grey,colors.darkblue},
  }
}
gls.right[8] = {
  ScrollBar = {
    provider = 'ScrollBar',
    highlight = {colors.yellow,colors.purple},
  }
}

---------------------------------------------------------------------------------------------
--gls.short_line_left[1] = {
  --BufferType = {
    --provider = 'FileTypeName',
--    separator = '',
  --  separator_highlight = {colors.purple,colors.bg},
    --highlight = {colors.grey,colors.purple}
--  }
--}

--[[
gls.short_line_right[1] = {
  BufferIcon = {
    provider= 'BufferIcon',
    separator = '',
    separator_highlight = {colors.purple,colors.bg},
    highlight = {colors.grey,colors.purple}
  }
}
]]

