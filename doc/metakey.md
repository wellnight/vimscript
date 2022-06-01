#http://www.skywind.me/blog/archives/1846

##### test alt key

```
noremap <M-x> :echo "ALT-X pressed"<cr>
exec "set <M-x>=\ex"
set ttimeout ttimeoutlen=100
```

##### conf

```
set ttimeout
set ttimeoutlen=30

"meta key
function! s:metacode(key)
    exec "set <M-".a:key.">=\e".a:key
endfunc
for i in range(10)
    call s:metacode(nr2char(char2nr('0') + i))
endfor
for i in range(26)
    call s:metacode(nr2char(char2nr('a') + i))
    call s:metacode(nr2char(char2nr('A') + i))
endfor
for c in [',', '.', '/', ';', '{', '}']
    call s:metacode(c)
endfor
for c in ['?', ':', '-', '_', '+', '=', "'"]
    call s:metacode(c)
endfor

```

##### fix invalid key

```
function! s:key_escape(name, code)
    exec "set ".a:name."=\e".a:code
endfunc

call s:key_escape('<F1>', 'OP')
call s:key_escape('<F2>', 'OQ')
call s:key_escape('<F3>', 'OR')
call s:key_escape('<F4>', 'OS')
call s:key_escape('<S-F1>', '[1;2P')
call s:key_escape('<S-F2>', '[1;2Q')
call s:key_escape('<S-F3>', '[1;2R')
call s:key_escape('<S-F4>', '[1;2S')
call s:key_escape('<S-F5>', '[15;2~')
call s:key_escape('<S-F6>', '[17;2~')
call s:key_escape('<S-F7>', '[18;2~')
call s:key_escape('<S-F8>', '[19;2~')
call s:key_escape('<S-F9>', '[20;2~')
call s:key_escape('<S-F10>', '[21;2~')
call s:key_escape('<S-F11>', '[23;2~')
call s:key_escape('<S-F12>', '[24;2~')
```
