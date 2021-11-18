" Language:         errlogpool.txt BelleX device logs
" Maintainer:       Derek Lomax
" Helpful Resources: https://gist.github.com/romainl/379904f91fa40533175dfaec4c833f2f
"                    https://jonasjacek.github.io/colors/

if exists("b:current_syntax")
  finish
endif

" Section custom to errlogpool.txt
syntax match log_error 	'\(user.err\)'
syntax match log_error 	'COMMAND_FAILURE.*freeus_fence.*'
syntax match log_info 	'\(user\.info\|user\.notice\)'
syntax match log_debug 	'\(user\.debug\)'
syntax match log_daemon '\(daemon\.debug\|daemon\.info\)'

syntax match log_keywords 'main start version:'
syntax match log_keywords '\*\*\*.*\*\*\*'
syntax match log_keywords 'Enable VoLTE'
syntax match log_keywords 'EnableVolte: 1, volteStatus: 0'
syntax match log_keywords 'Reset MCU'
syntax match log_keywords 'Go back suspend'
syntax match log_keywords 'PreviousMode 01 mode to 02 mode'
syntax match log_keywords 'Set Current Mode to'
syntax match log_keywords 'Usb charger Online :'
syntax match log_keywords 'Usb charger Offline'
syntax match log_keywords 'dbm, snr'
syntax match log_keywords '\[OTACommandService\]\[RunCommand\]'
syntax match log_keywords '\[OTAReportService\] ReportDeviceEvent'
syntax match log_keywords '\[OTAReportService\] AckCommand'
syntax match log_keywords '\[SOCKET\] send success'
syntax match log_keywords 'Data Connect, current status'
syntax match log_keywords 'VoIP service status('
syntax match log_keywords 'Roaming status:'
syntax match log_keywords 'mnc:'
syntax match log_keywords 'ril_data_dsi_callback: data profile'
syntax match log_keywords 'ril_data_connect_request:'
syntax match log_keywords 'data connection is disconnected'
syntax match log_keywords 'received CONNACK'
syntax match log_keywords 'sending PINGREQ'
syntax match log_keywords 'received PINGRESP'
syntax match log_keywords '\[KeyEventService\] WAKE_REASON_BATTERY'
syntax match log_keywords '\[KeyEventService\] WAKE_REASON_SOS'
syntax match log_keywords '\[KeyEventService\] WAKE_REASON_R'
syntax match log_keywords '\[KeyEventService\] WAKE_REASON_MOTION'
syntax match log_keywords 'call_state'
syntax match log_keywords 'CALL_REPORT:'
syntax match log_keywords '\[LED\] BatteryLevel:'
syntax match log_keywords 'RunPlaybackCmd: Charging.wav'

" Basic regex matches
syntax region  log_string 	start=/'/ end=/'/ end=/$/ skip=/\\./
syntax region  log_string 	start=/"/ end=/"/ skip=/\\./
syntax match   log_number 	'0x[0-9a-fA-F]*\|\[<[0-9a-f]\+>\]\|\<\d[0-9a-fA-F]*'
syntax match   log_date '\(Jan\|Feb\|Mar\|Apr\|May\|Jun\|Jul\|Aug\|Sep\|Oct\|Nov\|Dec\) [ 0-9]\d *'
syntax match   log_date '\d\{4}-\d\d-\d\d'
syntax match   log_time '\d\d:\d\d:\d\d\s*'
syntax match   log_time '\c\d\d:\d\d:\d\d\(\.\d\+\)\=\([+-]\d\d:\d\d\|Z\)'
syntax match   log_linenumber '^\d\+:'
syntax region  geofenceNoReport start=/^geo/ end=/$/ skip=/\\./
syntax region  geofenceReport start=/^geo. --false/ end=/$/ skip=/\\./

" Set the color patterns for each type, actual colors are taken from color scheme
highlight   def   link   log_string       String
highlight   def   link   log_number       Number
highlight   def   link   log_date         Type
highlight   def   link   log_time         Type
highlight   def   link   log_error        ErrorMsg
highlight   def   link   log_debug        Directory
highlight   def   link   log_info         SpecialKey
highlight   def   link   log_keywords     Directory
highlight   def   link   log_daemon       lCursor
highlight   def   link   log_linenumber   MoreMsg
highlight   def   link   geofenceNoReport Error
highlight   def   link   geofenceReport   Visual

" Specify the color for geofenceReport
" Make sure to test/set both colors for cterm and gui
highlight Visual cterm=NONE ctermbg=76 ctermfg=16 gui=NONE guibg=#5fd700 guifg=#000000
highlight Error cterm=NONE ctermbg=76 ctermfg=16 gui=NONE guibg=#FF0000 guifg=#000000

let b:current_syntax = "errlogpool"
