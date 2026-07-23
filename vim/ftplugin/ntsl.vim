if exists("b:did_ftplugin")
  finish
endif

" Reaproveita comentarios (//, (* *), { }) e formatacao do Pascal
runtime! ftplugin/pascal.vim
