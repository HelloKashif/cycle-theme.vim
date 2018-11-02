"Theme cycler
if exists("g:loaded_cycle_theme") || &cp
  finish
endif
let g:loaded_cycle_theme = 1


if !exists("g:cycle_theme_list")
  finish
endif

let s:cycle_theme_current = 0

function! s:refreshTheme(...)
  let l:theme = get(g:cycle_theme_list, s:cycle_theme_current, ["default", "light"])
  execute "colors" l:theme[0]
  execute "set bg=" . l:theme[1]

  "verbose
  if get(a:, 0, 0)
    echo "Theme set: " l:theme 
  endif
endfunction

function! s:cycleThemeNext()
  let s:cycle_theme_current += 1
  if( s:cycle_theme_current >= len(g:cycle_theme_list) )
    let s:cycle_theme_current = 0
  endif
  call <SID>refreshTheme(1)
endfunction

function! s:cycleThemePrev()
  let s:cycle_theme_current -= 1
  if( s:cycle_theme_current < 0 )
    let s:cycle_theme_current = len(g:cycle_theme_list) - 1
  endif
  call <SID>refreshTheme(1)
endfunction

function! s:resetTheme()
  let s:cycle_theme_current = 0
  call <SID>refreshTheme(1)
endfunction

"Calling once on vimrc load
call <SID>refreshTheme()

command! CycleThemePrev  :call <SID>cycleThemePrev()
command! CycleThemeNext  :call <SID>cycleThemeNext()
command! CycleThemeReset :call <SID>resetTheme()
