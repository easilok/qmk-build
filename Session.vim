let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/projects/playground/syncthing/qmk-build
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +61 keyboards/crkbd/keymaps/easilok/keymap.c
badd +109 keyboards/crkbd/keymaps/easilok/config.h
badd +0 fugitive:///home/luis/projects/playground/syncthing/qmk-build/.git//
argglobal
%argdel
edit keyboards/crkbd/keymaps/easilok/keymap.c
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 30 + 32) / 64)
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe '2resize ' . ((&lines * 30 + 32) / 64)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
exe '3resize ' . ((&lines * 30 + 32) / 64)
argglobal
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=200
setlocal fml=1
setlocal fdn=20
setlocal fen
118
normal! zo
119
normal! zo
120
normal! zo
137
normal! zo
138
normal! zo
143
normal! zo
let s:l = 75 - ((25 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 75
normal! 024|
wincmd w
argglobal
if bufexists(fnamemodify("keyboards/crkbd/keymaps/easilok/config.h", ":p")) | buffer keyboards/crkbd/keymaps/easilok/config.h | else | edit keyboards/crkbd/keymaps/easilok/config.h | endif
if &buftype ==# 'terminal'
  silent file keyboards/crkbd/keymaps/easilok/config.h
endif
balt keyboards/crkbd/keymaps/easilok/keymap.c
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=200
setlocal fml=1
setlocal fdn=20
setlocal fen
89
normal! zo
let s:l = 109 - ((29 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 109
normal! 024|
wincmd w
argglobal
if bufexists(fnamemodify("fugitive:///home/luis/projects/playground/syncthing/qmk-build/.git//", ":p")) | buffer fugitive:///home/luis/projects/playground/syncthing/qmk-build/.git// | else | edit fugitive:///home/luis/projects/playground/syncthing/qmk-build/.git// | endif
if &buftype ==# 'terminal'
  silent file fugitive:///home/luis/projects/playground/syncthing/qmk-build/.git//
endif
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=200
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
3wincmd w
exe '1resize ' . ((&lines * 30 + 32) / 64)
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe '2resize ' . ((&lines * 30 + 32) / 64)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
exe '3resize ' . ((&lines * 30 + 32) / 64)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
nohlsearch
let g:this_session = v:this_session
let g:this_obsession = v:this_session
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
