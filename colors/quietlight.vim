" File:       quietlight.vim
" Maintainer: aonemd
" URL:        https://github.com/aonemd/quietlight.vim
" License:    MIT

" Initialisation:"{{{
" ----------------------------------------------------------------------------

hi clear

if exists("syntax_on")
  syntax reset
endif

let s:style = 'light'

let g:colors_name = "quietlight"

"}}}
" GUI And Cterm Palettes:"{{{
" ----------------------------------------------------------------------------

let s:palette = {'gui' : {} , 'cterm' : {}}

let s:gui_background = "#f5f5f5"
let s:gui_foreground = "#333333"
let s:gui_selection  = "#a1a8b1"
let s:gui_line       = "#e4f6d4"
let s:gui_comment    = "#aaaaaa"

let s:gui_white  = "#ffffff"
let s:gui_red    = "#aa3731"
let s:gui_orange = "#ab6526"
let s:gui_yellow = "#ffe055"
let s:gui_green  = "#448c27"
let s:gui_aqua   = "#91b3e0"
let s:gui_blue   = "#4b83cd"
let s:gui_purple = "#7a3e9d"

let s:palette.gui.background   = { 'light' : s:gui_background }
let s:palette.gui.foreground   = { 'light' : s:gui_foreground }
let s:palette.gui.window       = { 'light' : s:gui_background }
let s:palette.gui.popupwindow  = { 'light' : s:gui_white      }
let s:palette.gui.selection    = { 'light' : s:gui_selection  }
let s:palette.gui.line         = { 'light' : s:gui_line       }
let s:palette.gui.comment      = { 'light' : s:gui_comment    }
let s:palette.gui.red          = { 'light' : s:gui_red        }
let s:palette.gui.orange       = { 'light' : s:gui_orange     }
let s:palette.gui.yellow       = { 'light' : s:gui_yellow     }
let s:palette.gui.green        = { 'light' : s:gui_green      }
let s:palette.gui.aqua         = { 'light' : s:gui_aqua       }
let s:palette.gui.blue         = { 'light' : s:gui_blue       }
let s:palette.gui.purple       = { 'light' : s:gui_purple     }
let s:palette.gui.addbg        = { 'light' : s:gui_green      }
let s:palette.gui.addfg        = { 'light' : "#dfefdf"        }
let s:palette.gui.changebg     = { 'light' : s:gui_orange     }
let s:palette.gui.changefg     = { 'light' : "#f7e7cc"        }
let s:palette.gui.delbg        = { 'light' : s:gui_red        }
let s:palette.gui.darkblue     = { 'light' : "#00005f"        }
let s:palette.gui.darkcyan     = { 'light' : "#005f5f"        }
let s:palette.gui.darkred      = { 'light' : "#660000"        }
let s:palette.gui.mauve        = { 'light' : "#705697"        }
let s:palette.gui.lightmauve   = { 'light' : "#c4b7d7"        }
let s:palette.gui.darkpurple   = { 'light' : "#5f005f"        }
let s:palette.gui.lime         = { 'light' : "#c1f5b0"        }
let s:palette.gui.olive        = { 'light' : "#a6b39b"        }
let s:palette.gui.gray         = { 'light' : "#777777"        }
let s:palette.gui.statusline   = { 'light' : s:gui_background }
let s:palette.gui.statuslinenc = { 'light' : s:gui_background }
let s:palette.gui.gitgutteradd = { 'light' : s:gui_green      }
let s:palette.gui.gitgutterchg = { 'light' : s:gui_orange     }
let s:palette.gui.gitgutterdlt = { 'light' : s:gui_red        }
let s:palette.gui.linewarning  = { 'light' : s:gui_yellow     }

let s:cterm_background = "231"
let s:cterm_foreground = "59"
let s:cterm_selection  = "145"
let s:cterm_line       = "194"
let s:cterm_comment    = "145"

let s:cterm_white  = "231"
let s:cterm_red    = "131"
let s:cterm_orange = "130"
let s:cterm_yellow = "221"
let s:cterm_green  = "64"
let s:cterm_aqua   = "110"
let s:cterm_blue   = "68"
let s:cterm_purple = "97"

let s:palette.cterm.background   = { 'light' : s:cterm_background }
let s:palette.cterm.foreground   = { 'light' : s:cterm_foreground }
let s:palette.cterm.window       = { 'light' : s:cterm_background }
let s:palette.cterm.popupwindow  = { 'light' : s:cterm_white      }
let s:palette.cterm.selection    = { 'light' : s:cterm_selection  }
let s:palette.cterm.line         = { 'light' : s:cterm_line       }
let s:palette.cterm.comment      = { 'light' : s:cterm_comment    }
let s:palette.cterm.red          = { 'light' : s:cterm_red        }
let s:palette.cterm.orange       = { 'light' : s:cterm_orange     }
let s:palette.cterm.yellow       = { 'light' : s:cterm_yellow     }
let s:palette.cterm.green        = { 'light' : s:cterm_green      }
let s:palette.cterm.aqua         = { 'light' : s:cterm_aqua       }
let s:palette.cterm.blue         = { 'light' : s:cterm_blue       }
let s:palette.cterm.purple       = { 'light' : s:cterm_purple     }
let s:palette.cterm.addbg        = { 'light' : s:cterm_green      }
let s:palette.cterm.addfg        = { 'light' : "194"              }
let s:palette.cterm.changebg     = { 'light' : s:cterm_orange     }
let s:palette.cterm.changefg     = { 'light' : "224"              }
let s:palette.cterm.delbg        = { 'light' : s:cterm_red        }
let s:palette.cterm.darkblue     = { 'light' : "17"               }
let s:palette.cterm.darkcyan     = { 'light' : "24"               }
let s:palette.cterm.darkred      = { 'light' : "52"               }
let s:palette.cterm.mauve        = { 'light' : "60"               }
let s:palette.cterm.lightmauve   = { 'light' : "60"               }
let s:palette.cterm.darkpurple   = { 'light' : "53"               }
let s:palette.cterm.lime         = { 'light' : "157"              }
let s:palette.cterm.olive        = { 'light' : "145"              }
let s:palette.cterm.gray         = { 'light' : "102"              }
let s:palette.cterm.statusline   = { 'light' : s:cterm_background }
let s:palette.cterm.statuslinenc = { 'light' : s:cterm_background }
let s:palette.cterm.gitgutteradd = { 'light' : s:cterm_green      }
let s:palette.cterm.gitgutterchg = { 'light' : s:cterm_orange     }
let s:palette.cterm.gitgutterdlt = { 'light' : s:cterm_red        }
let s:palette.cterm.linewarning  = { 'light' : "NONE"             }

"}}}
" Formatting Options:"{{{
" ----------------------------------------------------------------------------
let s:none   = "NONE"
let s:t_none = "NONE"
let s:n      = "NONE"
let s:c      = ",undercurl"
let s:r      = ",reverse"
let s:s      = ",standout"
let s:b      = ",bold"
let s:u      = ",underline"
let s:i      = ",italic"

"}}}
" Highlighting Primitives:"{{{
" ----------------------------------------------------------------------------
function! s:build_prim(hi_elem, field)
  " Given a:hi_elem = bg, a:field = comment
  let l:vname = "s:" . a:hi_elem . "_" . a:field " s:bg_comment
  let l:gui_assign = "gui".a:hi_elem."=".s:palette.gui[a:field][s:style] " guibg=...
  let l:cterm_assign = "cterm".a:hi_elem."=".s:palette.cterm[a:field][s:style] " ctermbg=...
  exe "let " . l:vname . " = ' " . l:gui_assign . " " . l:cterm_assign . "'"
endfunction

let s:bg_none = ' guibg=NONE ctermbg=NONE'
call s:build_prim('bg', 'foreground')
call s:build_prim('bg', 'background')
call s:build_prim('bg', 'selection')
call s:build_prim('bg', 'line')
call s:build_prim('bg', 'comment')
call s:build_prim('bg', 'red')
call s:build_prim('bg', 'orange')
call s:build_prim('bg', 'yellow')
call s:build_prim('bg', 'green')
call s:build_prim('bg', 'aqua')
call s:build_prim('bg', 'blue')
call s:build_prim('bg', 'purple')
call s:build_prim('bg', 'window')
call s:build_prim('bg', 'popupwindow')
call s:build_prim('bg', 'addbg')
call s:build_prim('bg', 'addfg')
call s:build_prim('bg', 'changebg')
call s:build_prim('bg', 'changefg')
call s:build_prim('bg', 'delbg')
call s:build_prim('bg', 'darkblue')
call s:build_prim('bg', 'darkcyan')
call s:build_prim('bg', 'darkred')
call s:build_prim('bg', 'mauve')
call s:build_prim('bg', 'lightmauve')
call s:build_prim('bg', 'darkpurple')
call s:build_prim('bg', 'lime')
call s:build_prim('bg', 'olive')
call s:build_prim('bg', 'gray')
call s:build_prim('bg', 'statusline')
call s:build_prim('bg', 'statuslinenc')
call s:build_prim('bg', 'linewarning')

let s:fg_none = ' guifg=NONE ctermfg=NONE'
call s:build_prim('fg', 'foreground')
call s:build_prim('fg', 'background')
call s:build_prim('fg', 'selection')
call s:build_prim('fg', 'line')
call s:build_prim('fg', 'comment')
call s:build_prim('fg', 'red')
call s:build_prim('fg', 'orange')
call s:build_prim('fg', 'yellow')
call s:build_prim('fg', 'green')
call s:build_prim('fg', 'aqua')
call s:build_prim('fg', 'blue')
call s:build_prim('fg', 'purple')
call s:build_prim('fg', 'window')
call s:build_prim('fg', 'addbg')
call s:build_prim('fg', 'addfg')
call s:build_prim('fg', 'changebg')
call s:build_prim('fg', 'changefg')
call s:build_prim('fg', 'darkblue')
call s:build_prim('fg', 'darkcyan')
call s:build_prim('fg', 'darkred')
call s:build_prim('fg', 'mauve')
call s:build_prim('fg', 'lightmauve')
call s:build_prim('fg', 'darkpurple')
call s:build_prim('fg', 'lime')
call s:build_prim('fg', 'olive')
call s:build_prim('fg', 'gray')
call s:build_prim('fg', 'gitgutteradd')
call s:build_prim('fg', 'gitgutterchg')
call s:build_prim('fg', 'gitgutterdlt')

exe "let s:fmt_none = ' gui=NONE".          " cterm=NONE".          " term=NONE"        ."'"
exe "let s:fmt_bold = ' gui=NONE".s:b.      " cterm=NONE".s:b.      " term=NONE".s:b    ."'"
exe "let s:fmt_bldi = ' gui=NONE".s:b.      " cterm=NONE".s:b.      " term=NONE".s:b    ."'"
exe "let s:fmt_undr = ' gui=NONE".s:u.      " cterm=NONE".s:u.      " term=NONE".s:u    ."'"
exe "let s:fmt_undb = ' gui=NONE".s:u.s:b.  " cterm=NONE".s:u.s:b.  " term=NONE".s:u.s:b."'"
exe "let s:fmt_undi = ' gui=NONE".s:u.      " cterm=NONE".s:u.      " term=NONE".s:u    ."'"
exe "let s:fmt_curl = ' gui=NONE".s:c.      " cterm=NONE".s:c.      " term=NONE".s:c    ."'"
exe "let s:fmt_ital = ' gui=NONE".s:i.      " cterm=NONE".s:i.      " term=NONE".s:i    ."'"
exe "let s:fmt_stnd = ' gui=NONE".s:s.      " cterm=NONE".s:s.      " term=NONE".s:s    ."'"
exe "let s:fmt_revr = ' gui=NONE".s:r.      " cterm=NONE".s:r.      " term=NONE".s:r    ."'"
exe "let s:fmt_revb = ' gui=NONE".s:r.s:b.  " cterm=NONE".s:r.s:b.  " term=NONE".s:r.s:b."'"

exe "let s:sp_none        = ' guisp=". s:none                            ."'"
exe "let s:sp_foreground  = ' guisp=". s:palette.gui.foreground[s:style] ."'"
exe "let s:sp_background  = ' guisp=". s:palette.gui.background[s:style] ."'"
exe "let s:sp_selection   = ' guisp=". s:palette.gui.selection[s:style]  ."'"
exe "let s:sp_line        = ' guisp=". s:palette.gui.line[s:style]       ."'"
exe "let s:sp_comment     = ' guisp=". s:palette.gui.comment[s:style]    ."'"
exe "let s:sp_red         = ' guisp=". s:palette.gui.red[s:style]        ."'"
exe "let s:sp_orange      = ' guisp=". s:palette.gui.orange[s:style]     ."'"
exe "let s:sp_yellow      = ' guisp=". s:palette.gui.yellow[s:style]     ."'"
exe "let s:sp_green       = ' guisp=". s:palette.gui.green[s:style]      ."'"
exe "let s:sp_aqua        = ' guisp=". s:palette.gui.aqua[s:style]       ."'"
exe "let s:sp_blue        = ' guisp=". s:palette.gui.blue[s:style]       ."'"
exe "let s:sp_purple      = ' guisp=". s:palette.gui.purple[s:style]     ."'"
exe "let s:sp_window      = ' guisp=". s:palette.gui.window[s:style]     ."'"
exe "let s:sp_popupwindow = ' guisp=". s:palette.gui.popupwindow[s:style]."'"
exe "let s:sp_addbg       = ' guisp=". s:palette.gui.addbg[s:style]      ."'"
exe "let s:sp_addfg       = ' guisp=". s:palette.gui.addfg[s:style]      ."'"
exe "let s:sp_changebg    = ' guisp=". s:palette.gui.changebg[s:style]   ."'"
exe "let s:sp_changefg    = ' guisp=". s:palette.gui.changefg[s:style]   ."'"
exe "let s:sp_darkblue    = ' guisp=". s:palette.gui.darkblue[s:style]   ."'"
exe "let s:sp_darkcyan    = ' guisp=". s:palette.gui.darkcyan[s:style]   ."'"
exe "let s:sp_darkred     = ' guisp=". s:palette.gui.darkred[s:style]    ."'"
exe "let s:sp_mauve       = ' guisp=". s:palette.gui.mauve[s:style] ."'"
exe "let s:sp_lightmauve  = ' guisp=". s:palette.gui.lightmauve[s:style] ."'"
exe "let s:sp_darkpurple  = ' guisp=". s:palette.gui.darkpurple[s:style] ."'"
exe "let s:sp_lime        = ' guisp=". s:palette.gui.lime[s:style] ."'"
exe "let s:sp_olive       = ' guisp=". s:palette.gui.olive[s:style] ."'"
exe "let s:sp_gray        = ' guisp=". s:palette.gui.gray[s:style] ."'"

"}}}
" Vim Highlighting: (see :help highlight-groups)"{{{
" ----------------------------------------------------------------------------
exe "hi! ColorColumn"   .s:fg_none        .s:bg_selection   .s:fmt_none
"   Conceal"
"   Cursor"
"   CursorIM"
exe "hi! CursorColumn"  .s:fg_none        .s:bg_line        .s:fmt_none
exe "hi! CursorLine"    .s:fg_none        .s:bg_line        .s:fmt_none
exe "hi! Directory"     .s:fg_blue        .s:bg_none        .s:fmt_none
exe "hi! DiffAdd"       .s:fg_foreground  .s:bg_addbg       .s:fmt_none
exe "hi! DiffChange"    .s:fg_foreground  .s:bg_changebg    .s:fmt_none
exe "hi! DiffDelete"    .s:fg_background  .s:bg_delbg       .s:fmt_none
exe "hi! DiffText"      .s:fg_background  .s:bg_blue        .s:fmt_none
exe "hi! ErrorMsg"      .s:fg_background  .s:bg_red         .s:fmt_stnd
exe "hi! VertSplit"     .s:fg_selection   .s:bg_none        .s:fmt_none
exe "hi! Folded"        .s:fg_foreground  .s:bg_olive       .s:fmt_none
exe "hi! FoldColumn"    .s:fg_none        .s:bg_olive       .s:fmt_none
exe "hi! SignColumn"    .s:fg_none        .s:bg_background  .s:fmt_none
"   Incsearch"
exe "hi! LineNr"        .s:fg_foreground  .s:bg_none        .s:fmt_none
exe "hi! CursorLineNr"  .s:fg_purple      .s:bg_none        .s:fmt_none
exe "hi! MatchParen"    .s:fg_foreground  .s:bg_lime        .s:fmt_none
exe "hi! ModeMsg"       .s:fg_green       .s:bg_none        .s:fmt_none
exe "hi! MoreMsg"       .s:fg_green       .s:bg_none        .s:fmt_none
exe "hi! NonText"       .s:fg_selection   .s:bg_none        .s:fmt_none
exe "hi! Pmenu"         .s:fg_foreground  .s:bg_background  .s:fmt_none
exe "hi! PmenuSel"      .s:fg_lime        .s:bg_foreground  .s:fmt_revr
exe "hi! InfoPopup"     .s:fg_foreground  .s:bg_background  .s:fmt_none
"   PmenuSbar"
"   PmenuThumb"
exe "hi! Question"          .s:fg_green       .s:bg_none          .s:fmt_none
exe "hi! Search"            .s:fg_background  .s:bg_lightmauve    .s:fmt_none
exe "hi! SpecialKey"        .s:fg_selection   .s:bg_none          .s:fmt_none
exe "hi! SpellCap"          .s:fg_darkblue    .s:bg_none      .s:fmt_undr
exe "hi! SpellLocal"        .s:fg_aqua        .s:bg_darkcyan      .s:fmt_undr
exe "hi! SpellBad"          .s:fg_darkred     .s:bg_none          .s:fmt_undr
exe "hi! SpellRare"         .s:fg_purple      .s:bg_darkpurple    .s:fmt_undr
exe "hi! StatusLine"        .s:fg_mauve       .s:bg_statusline    .s:fmt_revr
exe "hi! StatusLineNC"      .s:fg_lightmauve  .s:bg_statuslinenc  .s:fmt_revr
exe "hi! StatusLineTerm"    .s:fg_mauve       .s:bg_statusline    .s:fmt_revr
exe "hi! StatusLineTermNC"  .s:fg_lightmauve  .s:bg_statuslinenc  .s:fmt_revr
exe "hi! TabLine"           .s:fg_foreground  .s:bg_comment       .s:fmt_none
exe "hi! TabLineFill"       .s:fg_background  .s:bg_background    .s:fmt_revr
exe "hi! EndOfBuffer"       .s:fg_background  .s:bg_background    .s:fmt_none
"   TabLineSel"
exe "hi! Title"             .s:fg_red         .s:bg_none        .s:fmt_bold
exe "hi! Visual"            .s:fg_background  .s:bg_selection   .s:fmt_none
"   VisualNos"
exe "hi! WarningMsg"        .s:fg_lime        .s:bg_none        .s:fmt_none
exe "hi! WildMenu"          .s:fg_foreground  .s:bg_lime        .s:fmt_none
exe "hi! LongLineWarning"   .s:fg_none        .s:bg_linewarning .s:fmt_undr


exe "hi! Normal"        .s:fg_foreground  .s:bg_background    .s:fmt_none

"}}}
" Generic Syntax Highlighting: (see :help group-name)"{{{
" ----------------------------------------------------------------------------
exe "hi! Comment"         .s:fg_comment     .s:bg_none        .s:fmt_none

exe "hi! Constant"        .s:fg_orange      .s:bg_none        .s:fmt_none
exe "hi! String"          .s:fg_green       .s:bg_none        .s:fmt_none
"   Character"
"   Number"
"   Boolean"
"   Float"

exe "hi! Identifier"      .s:fg_purple      .s:bg_none        .s:fmt_none
exe "hi! Function"        .s:fg_red         .s:bg_none        .s:fmt_bold

exe "hi! Statement"       .s:fg_blue        .s:bg_none        .s:fmt_none
"   Conditional"
"   Repeat"
"   Label"
exe "hi! Operator"        .s:fg_gray        .s:bg_none        .s:fmt_none
exe "hi! Keyword"         .s:fg_blue        .s:bg_none        .s:fmt_none
"   Exception"

exe "hi! PreProc"         .s:fg_blue      .s:bg_none        .s:fmt_none
"   Include"
"   Define"
"   Macro"
"   PreCondit"

exe "hi! Type"            .s:fg_purple      .s:bg_none        .s:fmt_bold
exe "hi! StorageClass"    .s:fg_red         .s:bg_none        .s:fmt_none
exe "hi! Structure"       .s:fg_blue        .s:bg_none        .s:fmt_none
exe "hi! Typedef"         .s:fg_purple      .s:bg_none        .s:fmt_none

exe "hi! Special"         .s:fg_green       .s:bg_none        .s:fmt_none
"   SpecialChar"
"   Tag"
"   Delimiter"
"   SpecialComment"
"   Debug"
"
exe "hi! Underlined"      .s:fg_blue        .s:bg_none        .s:fmt_none

exe "hi! Ignore"          .s:fg_none        .s:bg_none        .s:fmt_none

exe "hi! Error"           .s:fg_darkred     .s:bg_none        .s:fmt_undr

exe "hi! Todo"            .s:fg_foreground  .s:bg_none        .s:fmt_bold

" Quickfix window highlighting
exe "hi! qfLineNr"        .s:fg_yellow      .s:bg_none        .s:fmt_none
"   qfFileName"
"   qfLineNr"
"   qfError"

"}}}
" Diff Syntax Highlighting:"{{{
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
hi! link diffAdded Special
"   diffLine
"   diffSubname
"   diffComment

"}}}
" True Color Terminal Colorscheme:"{{{
" ----------------------------------------------------------------------------
"  This is atelierforest-dark color palette
let g:terminal_ansi_colors = [
      \ "#f5f5f5", "#aa3731", "#448c27", "#ab6526",
      \ "#4b83cd", "#7a3e9d", "#00ad9c", "#a8a19f",
      \ "#777777", "#aa3731", "#448c27", "#ab6526",
      \ "#4b83cd", "#7a3e9d", "#00ad9c", "#f5f5f5"
      \]

"}}}
" GitGutter Sign Highlighting:"{{{
" ----------------------------------------------------------------------------
exe "hi! GitGutterAdd"     .s:fg_gitgutteradd  .s:bg_none  .s:fmt_none
exe "hi! GitGutterChange"  .s:fg_gitgutterchg  .s:bg_none  .s:fmt_none
exe "hi! GitGutterDelete"  .s:fg_gitgutterdlt  .s:bg_none  .s:fmt_none

"}}}

" Signify Sign Highlighting:"{{{
" ----------------------------------------------------------------------------
exe "hi! SignifySignAdd"     .s:fg_gitgutteradd  .s:bg_none  .s:fmt_none
exe "hi! SignifySignChange"  .s:fg_gitgutterchg  .s:bg_none  .s:fmt_none
exe "hi! SignifySignDelete"  .s:fg_gitgutterdlt  .s:bg_none  .s:fmt_none

"}}}
" Nvim Stuff:"{{{
" ----------------------------------------------------------------------------
exe "hi! NormalFloat"               .s:fg_foreground  .s:bg_background  .s:fmt_none
exe "hi! FloatBorder"               .s:fg_selection   .s:bg_none        .s:fmt_none

"}}}
"
" This is needed for some reason: {{{

let &background = s:style

" }}}
