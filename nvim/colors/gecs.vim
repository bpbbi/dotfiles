" Initialisation:
" ----------------------------------------------------------------------------
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "gecs"

" Palettes:
" -----------------------------------------------------------------------------
let s:g_bg        = "#212d33"
let s:g_comment   = "#5C6773"
let s:g_markup    = "#F07178"
let s:g_constant  = "#D4BFFF"
let s:g_operator  = "#80D4FF"
let s:g_tag       = "#5CCFE6"
let s:g_regexp    = "#95E6CB"
let s:g_string    = "#BBE67E"
let s:g_function  = "#FFD57F"
let s:g_special   = "#FFC44C"
let s:g_keyword   = "#FFAE57"
let s:g_error     = "#FF3333"
let s:g_accent    = "#FFCC66"
let s:g_panel     = "#212d33"
let s:g_guide     = "#3D4751"
let s:g_line      = "#242B38"
let s:g_selection = "#343F4C"
let s:g_fg        = "#D9D7CE"
let s:g_fg_idle   = "#607080"

let s:t_white    = "230"
let s:t_black2   = "16"

let s:none = "NONE"

" SetStyling:
" -----------------------------------------------------------------------------
" Formatting options:
" undercurl
" reverse
" standout
" bold
" underline
" italic

function! s:SetExactAs(groupto, groupfrom)
  exe "hi! link " . a:groupto . " " . a:groupfrom
endfunction

function! s:SetStyling(group, fg, bg, ...)
  if empty(a:0)
    let style = "NONE"
  else
    let style = a:1
  end

  exe "hi " . a:group . " guifg=" . a:fg . " guibg=" . a:bg
   \ . " ctermfg=" . s:t_white
   \ . " ctermbg=" . s:t_black2
   \ . " gui="     . style
   \ . " cterm="   . style
endfunction

" Vim Highlighting: (see :help highlight-groups)"
" ----------------------------------------------------------------------------
call s:SetStyling("Normal", s:g_fg, s:g_bg)
call s:SetStyling("Title", s:g_tag, s:none)
call s:SetStyling("Search", s:none, s:none, "standout")
call s:SetStyling("Visual", s:none, s:g_selection)

" Tabs
call s:SetStyling("TabLineSel", s:g_comment, s:g_fg, "standout,underline")
call s:SetStyling("TabLine", s:g_comment, s:none, "underline")
call s:SetExactAs("TabLineFill", "TabLine")

" Color for set cc=80
call s:SetStyling("ColorColumn", s:none, s:none, "bold")

" Numbers on the left
call s:SetStyling("LineNr", s:g_guide, s:none)
" For highlite only column nubmer 'set cul=1'
call s:SetStyling("CursorLine", s:none, s:none)
call s:SetStyling("CursorLineNr", s:g_accent, s:none)
call s:SetStyling("CursorColumn", s:g_fg, s:g_line)

call s:SetStyling("VertSplit", s:g_selection, s:none)
call s:SetStyling("NonText", s:g_guide, s:none)

" Separator between command and text
call s:SetStyling("StatusLine", s:g_comment, s:none)
call s:SetStyling("StatusLineNC", s:g_selection, s:none)

call s:SetStyling("Folded", s:g_fg_idle, s:none)
call s:SetStyling("FoldColumn", s:g_fg, s:none)

call s:SetStyling("Directory", s:g_accent, s:none)

call s:SetStyling("DiffAdd", s:g_string, s:none)
call s:SetStyling("DiffChange", s:g_tag, s:none)
call s:SetStyling("DiffText", s:g_fg, s:none)
" call s:SetStyling("ErrorMsg", s:g_fg, s:none, "standout")
call s:SetStyling("SignColumn", s:g_fg, s:none)

call s:SetStyling("MatchParen", s:g_fg, s:none, "underline")
call s:SetStyling("ModeMsg", s:g_string, s:none)
call s:SetStyling("MoreMsg", s:g_string, s:none)

" Popup Menus:
"" Menu in command line:
call s:SetStyling("NormalFloat", s:none, s:none)
" call s:SetStyling("FloatBorder", s:none, s:g_line)
call s:SetExactAs("WildMenu", "Normal")
call s:SetStyling("Menu", s:g_fg, s:g_accent, "reverse")
call s:SetStyling("Tooltip", s:g_fg, s:g_accent, "reverse")
call s:SetStyling("Pmenu", s:none, s:g_line)
call s:SetStyling("PmenuSel", s:none, s:g_selection, "reverse")
call s:SetStyling("PopupNotification", s:none, s:g_selection, "reverse")

call s:SetStyling("Question", s:g_string, s:none)
call s:SetStyling("SpecialKey", s:g_selection, s:none)

call s:SetStyling("SpellCap", s:g_fg, s:none, "underline")
call s:SetStyling("SpellLocal", s:g_fg, s:none, "underline")
call s:SetStyling("SpellBad", s:g_fg, s:none, "underline")
call s:SetStyling("SpellRare", s:g_fg, s:none, "underline")

call s:SetStyling("WarningMsg", s:g_error, s:none)

call s:SetStyling("LongLineWarning", s:g_fg, s:none,"underline")

" Generic Syntax Highlighting: (see :help group-name)"
" ----------------------------------------------------------------------------
call s:SetStyling("Comment", s:g_comment, s:none)
call s:SetStyling("Constant", s:g_constant, s:none)
call s:SetStyling("String", s:g_string, s:none)
call s:SetStyling("Identifier", s:g_tag, s:none)
call s:SetStyling("Function", s:g_function, s:none)
call s:SetStyling("Statement", s:g_keyword, s:none)
call s:SetStyling("Operator", s:g_operator, s:none)
call s:SetStyling("PreProc", s:g_accent, s:none)
call s:SetStyling("Type", s:g_tag, s:none)
call s:SetStyling("Structure", s:g_special, s:none)
call s:SetStyling("Special", s:g_special, s:none)
call s:SetStyling("Underlined", s:g_tag, s:none, "underline")
call s:SetStyling("Ignore", s:g_fg, s:none)
call s:SetStyling("Error", s:g_fg, s:none, "standout")
call s:SetStyling("Todo", s:g_markup, s:none)
" Quickfix window highlighting
call s:SetStyling("qfLineNr", s:g_keyword, s:none)
call s:SetStyling("Conceal", s:g_comment, s:none, "underline")
call s:SetStyling("CursorLineConceal", s:g_guide, s:none)

" " GitGutter:
" " ----------------------------------------------------------------------------
" call s:SetStyling("GitGutterAdd", s:g_comment, s:none)
" call s:SetExactAs("GitGutterChange", "GitGutterAdd")
" call s:SetExactAs("GitGutterDelete", "GitGutterAdd")
"call s:SetStyling("GitGutterChangeDelete", s:g_function, s:none, s:t_white, s:t_black2)
"call s:SetStyling("GitGutterChange", s:g_tag, s:none, s:t_white, s:t_black2)
"call s:SetStyling("GitGutterDelete", s:g_markup, s:none, s:t_white, s:t_black2)
"call s:SetStyling("GitGutterChangeDelete", s:g_function, s:none, s:t_white, s:t_black2)

" " Coc Colors:
" " ----------------------------------------------------------------------------
call s:SetStyling("CocPumSearch", s:g_tag, s:g_comment)
call s:SetStyling("CocHighlightText", s:g_fg, s:g_comment)

" Snacks HL
call s:SetStyling("SnacksPicker", s:none, s:none)
call s:SetStyling("SnacksPickerBorder", s:none, s:none)
call s:SetStyling("SnacksIndentScope", s:g_fg_idle, s:none)
call s:SetStyling("SnacksPickerList", s:none, s:none)
"call s:SetStyling("Normal", s:none, s:none)

" Diff Syntax Highlighting:
" ----------------------------------------------------------------------------
" Diff
"   diffOldFile
"   diffNewFile
"   diffFile
"   diffOnly
"   diffIdentical
"   diffDiffer
"   diffBDiffer
"   diffIsA
"   diffNoEOL
"   diffCommon
hi! link diffRemoved Constant
"   diffChanged
hi! link diffAdded String
"   diffLine
"   diffSubname
"   diffComment

