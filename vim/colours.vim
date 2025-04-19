" Initialisation:
" ----------------------------------------------------------------------------
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "gecs"
" Palettes:
" ----------------------------------------------------------------------------
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

" SetStyling:
" ----------------------------------------------------------------------------
" Formatting options: 
" undercurl
" reverse
" standout
" bold
" underline
" italic

function! s:SetStyling(group, fg, bg, t_fg, t_bg, ...)
  if empty(a:0)
    let style = "NONE"
  else
    let style = a:1
  end

  exe "hi " . a:group . " guifg=" . a:fg . " guibg=" . a:bg
   \ . " ctermfg=" . a:t_fg
   \ . " ctermbg=" . a:t_bg
   \ . " gui="     . style
   \ . " cterm="   . style
endfunction

" Vim Highlighting: (see :help highlight-groups)"
" ----------------------------------------------------------------------------
call s:SetStyling("Normal", s:g_fg, s:g_bg, s:t_white, s:t_black2)
call s:SetStyling("Search", s:g_bg, s:g_constant, s:t_white, s:t_black2)
call s:SetStyling("Visual", s:g_fg, s:g_selection, s:t_white, s:t_black2)

call s:SetStyling("TabLineSel", s:g_bg, s:g_fg, s:t_white, s:t_black2, "reverse")
call s:SetStyling("TabLine", s:g_bg, s:g_fg, s:t_white, s:t_black2, "reverse")
call s:SetStyling("TabLineFill", s:g_panel, s:g_fg, s:t_white, s:t_black2, "reverse")

call s:SetStyling("ColorColumn", s:g_fg, s:g_bg, s:t_white, s:t_black2)
"
call s:SetStyling("LineNr", s:g_guide, s:g_bg, s:t_white, s:t_black2)
call s:SetStyling("CursorLineNr", s:g_accent, s:g_bg, s:t_white, s:t_black2)
call s:SetStyling("CursorColumn", s:g_fg, s:g_line, s:t_white, s:t_black2)
" For highlite only column nubmer "Set cul"
call s:SetStyling("CursorLine", "NONE", "NONE", "NONE", "NONE")
call s:SetStyling("VertSplit", s:g_selection, s:g_bg, s:t_white, s:t_black2)
call s:SetStyling("NonText", s:g_guide, s:g_bg, s:t_white, s:t_black2)

call s:SetStyling("StatusLine", s:g_comment, s:g_bg, s:t_white, s:t_black2)
call s:SetStyling("StatusLineNC", s:g_selection, s:g_bg, s:t_white, s:t_black2)

call s:SetStyling("Folded", s:g_fg_idle, s:g_bg, s:t_white, s:t_black2)
call s:SetStyling("FoldColumn", s:g_fg, s:g_bg, s:t_white, s:t_black2)

call s:SetStyling("Directory", s:g_accent, s:g_bg, s:t_white, s:t_black2)

call s:SetStyling("DiffAdd", s:g_string, s:g_bg, s:t_white, s:t_black2)
call s:SetStyling("DiffChange", s:g_tag, s:g_bg, s:t_white, s:t_black2)
call s:SetStyling("DiffText", s:g_fg, s:g_bg, s:t_white, s:t_black2)
call s:SetStyling("ErrorMsg", s:g_fg, s:g_error, s:t_white, s:t_black2, "standout")
call s:SetStyling("SignColumn", s:g_fg, s:g_bg, s:t_white, s:t_black2)

call s:SetStyling("MatchParen", s:g_fg, s:g_bg, s:t_white, s:t_black2, "underline")
call s:SetStyling("ModeMsg", s:g_string, s:g_bg, s:t_white, s:t_black2)
call s:SetStyling("MoreMsg", s:g_string, s:g_bg, s:t_white, s:t_black2)

call s:SetStyling("Pmenu", s:g_fg, s:g_bg, s:t_white, s:t_black2)
call s:SetStyling("PmenuSel", s:g_fg, s:g_bg, s:t_white, s:t_black2, "reverse")

call s:SetStyling("Question", s:g_string, s:g_bg, s:t_white, s:t_black2)
call s:SetStyling("SpecialKey", s:g_selection, s:g_bg, s:t_white, s:t_black2)

call s:SetStyling("SpellCap", s:g_fg, s:g_bg, s:t_white, s:t_black2, "underline")
call s:SetStyling("SpellLocal", s:g_fg, s:g_bg, s:t_white, s:t_black2, "underline")
call s:SetStyling("SpellBad", s:g_fg, s:g_bg, s:t_white, s:t_black2, "underline")
call s:SetStyling("SpellRare", s:g_fg, s:g_bg, s:t_white, s:t_black2, "underline")

call s:SetStyling("WildMenu", s:g_fg, s:g_bg, s:t_white, s:t_black2)
call s:SetStyling("Title", s:g_keyword, s:g_bg, s:t_white, s:t_black2)
call s:SetStyling("WarningMsg", s:g_error, s:g_bg, s:t_white, s:t_black2)

call s:SetStyling("LongLineWarning", s:g_fg, s:g_bg, s:t_white, s:t_black2,"underline")

" Generic Syntax Highlighting: (see :help group-name)"
" ----------------------------------------------------------------------------
call s:SetStyling("Comment", s:g_comment, s:g_bg, s:t_white, s:t_black2)
call s:SetStyling("Constant", s:g_constant, s:g_bg, s:t_white, s:t_black2)
call s:SetStyling("String", s:g_string, s:g_bg, s:t_white, s:t_black2)
call s:SetStyling("Identifier", s:g_tag, s:g_bg, s:t_white, s:t_black2)
call s:SetStyling("Function", s:g_function, s:g_bg, s:t_white, s:t_black2)
call s:SetStyling("Statement", s:g_keyword, s:g_bg, s:t_white, s:t_black2)
call s:SetStyling("Operator", s:g_operator, s:g_bg, s:t_white, s:t_black2)
call s:SetStyling("PreProc", s:g_special, s:g_bg, s:t_white, s:t_black2)
call s:SetStyling("Type", s:g_tag, s:g_bg, s:t_white, s:t_black2)
call s:SetStyling("Structure", s:g_special, s:g_bg, s:t_white, s:t_black2)
call s:SetStyling("Special", s:g_special, s:g_bg, s:t_white, s:t_black2)
call s:SetStyling("Underlined", s:g_tag, s:g_bg, s:t_white, s:t_black2, "underline")
call s:SetStyling("Ignore", s:g_fg, s:g_bg, s:t_white, s:t_black2)
call s:SetStyling("Error", s:g_fg, s:g_error, s:t_white, s:t_black2)
call s:SetStyling("Todo", s:g_markup, s:g_bg, s:t_white, s:t_black2)
"" Quickfix window highlighting
call s:SetStyling("qfLineNr", s:g_keyword, s:g_bg, s:t_white, s:t_black2)
call s:SetStyling("Conceal", s:g_guide, s:g_bg, s:t_white, s:t_black2)
call s:SetStyling("CursorLineConceal", s:g_guide, s:g_bg, s:t_white, s:t_black2)

" GitGutter:
"" ---------
call s:SetStyling("GitGutterAdd", s:g_string, s:g_bg, s:t_white, s:t_black2)
call s:SetStyling("GitGutterChange", s:g_tag, s:g_bg, s:t_white, s:t_black2)
call s:SetStyling("GitGutterDelete", s:g_markup, s:g_bg, s:t_white, s:t_black2)
call s:SetStyling("GitGutterChangeDelete", s:g_function, s:g_bg, s:t_white, s:t_black2)

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

