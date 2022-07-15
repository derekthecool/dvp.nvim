" Language:          Micron Device Logs (mcn_device_logs for short)
" Maintainer:        Derek Lomax
" Helpful Resources: https://gist.github.com/romainl/379904f91fa40533175dfaec4c833f2f
"                    https://jonasjacek.github.io/colors/

if exists("b:current_syntax")
  finish
endif

" Section custom to Micron Device Log files
syntax match log_error '\[Warning:data or topic is empty;please check your report or data conversion\]'
syntax match log_error 'ERROR'
syntax match log_error 'Error encoding.*'
syntax match log_error '\[ERR\]'
syntax match ATcommand '\(AT\|at\)+.*'
syntax match ATcommandOK 'OK'
syntax match log_keywords '+.*'
syntax match log_keywords '+RESP.*'
syntax match log_keywords 'FA:.*'
syntax match log_keywords 'MTrecv:.*'
syntax match log_keywords 'MTpub:.*'
syntax region  debugInit start=/+EIND: 128/ end=/+TRDEBUG:ON/ skip=/\\./

" Basic regex matches
" Example log
" 2022-07-15 10:30:30.585 -06:00 [DBG] ExtBootloader, fota udpate return 2
" syntax match   log_linenumber '\d\+:'
syntax region  log_string start=/'/ end=/'/ end=/$/ skip=/\\./
syntax region  log_string start=/"/ end=/"/ skip=/\\./
syntax match   log_number '0x[0-9a-fA-F]*\|\[<[0-9a-f]\+>\]\|\<\d[0-9a-fA-F]*'
syntax match   log_date '\(Jan\|Feb\|Mar\|Apr\|May\|Jun\|Jul\|Aug\|Sep\|Oct\|Nov\|Dec\) [ 0-9]\d *'
syntax match   log_date '\d\{4}-\d\d-\d\d'
syntax match   log_time '\d\d:\d\d:\d\d\.\d\{3}\s-\d\+:\d\+'
" syntax match   log_time '\d\d:\d\d:\d\d\s*'
" syntax match   log_time '\c\d\d:\d\d:\d\d\(\.\d\+\)\=\([+-]\d\d:\d\d\|Z\)'

" Set the color patterns for each type, actual colors are taken from color scheme
highlight   def   link   log_string       String
highlight   def   link   log_number       Number
highlight   def   link   log_date         Type
highlight   def   link   log_time         Type
highlight   def   link   log_error        Error
highlight   def   link   log_debug        Directory
highlight   def   link   log_info         SpecialKey
highlight   def   link   log_keywords     Directory
highlight   def   link   log_linenumber   MoreMsg
highlight   def   link   debugInit        DebugInitSetup
highlight   def   link   ATcommand        ATcommandHighlight
highlight   def   link   ATcommandOK      ATcommandHighlightOK

" Specify the color for ATcommand
" Make sure to test/set both colors for cterm and gui
highlight ATcommandHighlight cterm=NONE guibg=#5fd700 guifg=#000000
highlight ATcommandHighlightOK cterm=NONE guibg=#000ff0 guifg=#00FF00
highlight DebugInitSetup cterm=NONE guibg=#0000FF guifg=#FFFFFF

let b:current_syntax = "mcn_device_logs"
