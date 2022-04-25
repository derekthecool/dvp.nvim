" Set the filetype and also delete any <CR> (or \r) characters
autocmd BufNewFile,BufRead BelleLTE_DataLog*.txt,debug-logs-*.log set filetype=mcn_device_logs | :%s/\r\+//
