
source /usr/share/vim/google/google.vim

Glug codefmt
Glug codefmt-google
augroup autoformat_settings
  autocmd FileType borg,gcl,patchpanel AutoFormatBuffer gclfmt
  autocmd FileType bzl AutoFormatBuffer buildifier
  autocmd FileType c,cpp,proto,javascript AutoFormatBuffer clang-format
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType jslayout AutoFormatBuffer jslfmt
  autocmd FileType markdown AutoFormatBuffer mdformat
  autocmd FileType ncl AutoFormatBuffer nclfmt
  autocmd FileType python AutoFormatBuffer pyformat
  autocmd FileType textpb AutoFormatBuffer text-proto-format
  autocmd FileType html,css,json AutoFormatBuffer js-beautify
augroup END
Glug piper plugin[mappings]
Glug relatedfiles plugin[mappings]
Glug add_usings plugin[mappings]
Glug youcompleteme-google
Glug syntastic-google
