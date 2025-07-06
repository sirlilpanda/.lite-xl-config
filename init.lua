-- put user settings here
-- this module will be loaded after everything else when the application starts
-- it will be automatically reloaded when saved

local core = require "core"
local keymap = require "core.keymap"
local config = require "core.config"
local style = require "core.style"

------------------------------ Themes ----------------------------------------

-- light theme:
-- core.reload_module("colors.summer")

-- [TODO] see if i can write something to auto download 

core.reload_module("colors.panda_box")

-- [TODO] try to work out how to auto load new syntaxs

--------------------------- Key bindings -------------------------------------

-- key binding:
-- keymap.add { ["ctrl+escape"] = "core:quit" }

-- pass 'true' for second parameter to overwrite an existing binding
-- keymap.add({ ["ctrl+pageup"] = "root:switch-to-previous-tab" }, true)
-- keymap.add({ ["ctrl+pagedown"] = "root:switch-to-next-tab" }, true)

-- treeview
keymap.add {["ctrl+b"] = "treeview:toggle"}

-- autocomplete
keymap.add {["tab"] = "autocomplete:complete"}
keymap.add {["return"] = "autocomplete:complete"}

-- mutli cursor
keymap.add {["ctrl+alt+down"] = "doc:create-cursor-next-line"}
keymap.add {["ctrl+alt+up"] = "doc:create-cursor-previous-line"}

-- yanking
keymap.add ({["alt+down"] = "doc:move-lines-down"}, true)
keymap.add ({["alt+up"] = "doc:move-lines-up"}, true)

-- end and start of line
keymap.add {["end"] = "doc:move-to-end-of-line"}
keymap.add {["alt+right"] = "doc:move-to-end-of-line"}
keymap.add {["alt+left"] = "doc:move-to-start-of-line"}
keymap.add {["shift+end"] = "doc:select-to-end-of-line"}
keymap.add {["shift+alt+right"] = "doc:select-to-end-of-line" }
keymap.add {["shift+alt+left"] = "doc:select-to-start-of-line"}

-- mutli pannels
keymap.add {["alt+j"] = "root:switch-to-left"}
keymap.add {["ctrl+1"] = "root:switch-to-left"}
keymap.add {["ctrl+2"] = "root:switch-to-right"}


------------------------------- Fonts ----------------------------------------
-- customize fonts:

local font_rendering = {
    antialiasing="grayscale",
    hinting="full",
    bold=false,
    italic=false,
    underline=false,
    smoothing=true,
    strikethrough=false,
}

style.font = renderer.font.load(DATADIR .. "/fonts/FiraSans-Regular.ttf", 14 * SCALE)

-- check if windows then use courier mono
if package.config:sub(1,1) == "\\" then

    local font_rendering_win = {
        antialiasing="grayscale",
        hinting="full",
        bold=true,
        italic=false,
        underline=false,
        smoothing=true,
        strikethrough=false,
    }

    style.code_font = renderer.font.load("C:\\WINDOWS\\Fonts\\cour.ttf", 20 * SCALE, font_rendering_win)
    config.line_height = 1.3

else
  style.code_font = renderer.font.load(DATADIR .. "/fonts/JetBrainsMono-Regular.ttf", 14 * SCALE, font_rendering)
  config.line_height = 1.25
end

--
-- DATADIR is the location of the installed Lite XL Lua code, default color
-- schemes and fonts.
-- USERDIR is the location of the Lite XL configuration directory.
--
-- font names used by lite:
-- style.font          : user interface
-- style.big_font      : big text in welcome screen
-- style.icon_font     : icons
-- style.icon_big_font : toolbar icons
-- style.code_font     : code
--
-- the function to load the font accept a 3rd optional argument like:
--
--
-- possible values are:
-- antialiasing: grayscale, subpixel
-- hinting: none, slight, full
-- bold: true, false
-- italic: true, false
-- underline: true, false
-- smoothing: true, false
-- strikethrough: true, false

------------------------------ Plugins ----------------------------------------

-- disable plugin loading setting config entries:

-- disable plugin detectindent, otherwise it is enabled by default:
-- config.plugins.detectindent = false


-- autocomplete
config.plugins.autocomplete = {
        max_height = 12,
        min_len = 1
}

-- autoreload
config.plugins.autoreload = {
    always_show_nagview = true,
}

-- base16
config.plugins.base16 = false

-- bracketmatch
config.plugins.bracketmatch = {
        color_char = true,
        style = "underline"
}

-- devicons
config.plugins.bracketmatch = {
        draw_tab_icons = true,
        use_default_chevrons = true,
        use_default_dir_icons = false
}

-- drawwhitespace (this may be disabled but i will enable it for yaml)
config.plugins.drawwhitespace = {
    enabled = false,
    show_leading = true,
    show_middle = false,
    show_trailing = false
}

-- lineguide
config.plugins.lineguide ={
    enabled = true,
    rulers = {
      [1] = 120
    }
}

config.plugins.lsp = {
    prettify_json = 4,
}

config.plugins.minimap = {
    enabled = true,
    caret_color = {
        [1] = 147,
        [2] = 221,
        [3] = 250,
        [4] = 255
    },
    selection_color = {
        [1] = 82,
        [2] = 82,
        [3] = 87,
        [4] = 255
    }
}

config.plugins.todotreeview = {
    todo_scope = "focused"
}

config.plugins.treeview = {
    visible = false,
}

---------------------------- Miscellaneous -------------------------------------
config.file_size_limit = 10000

config.indent_size = 4
config.tab_type = "soft"

config.animate_drag_scroll = true
config.max_undos = 100000
config.highlight_current_line = true

-- modify list of files to ignore when indexing the project:
config.ignore_files = {
  -- folders
  "^%.svn/",        "^%.git/",   "^%.hg/",        "^CVS/", "^%.Trash/", "^%.Trash%-.*/",
  "^node_modules/", "^%.cache/", "^__pycache__/", ".vscode/",
  -- files
  -- "%.pyc$",         "%.pyo$",       
  -- "%.exe$",        "%.dll$",   "%.obj$", "%.o$",
  -- "%.a$",           "%.lib$",       "%.so$",         "%.dylib$", "%.ncb$", "%.sdf$",
  -- "%.suo$",         "%.pdb$",       "%.idb$",        "%.class$", "%.psd$", "%.db$",
  "^desktop%.ini$", "^%.DS_Store$", "^%.directory$",
}

