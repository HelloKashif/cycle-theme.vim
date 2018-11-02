# cycle-theme

Easily setup and switch between different color schemes and background
This plugin lets you set up color-bg combinations and easily switch between them.

## 1. Install


    Plug 's-kashif/cycle-theme.vim'


## 2. Setup vimrc or init.vim


    let g:cycle_theme_list=[
      \ ['gruvbox', 'dark'],
      \ ['solarized8', 'light'],
      \ ['solarized8', 'dark'],
    \]

    "Format [colorscheme, background]


## 3. Use

    :CycleThemeNext               "Selects next theme from your config
    :CycleThemePrev               "Selects previous theme from your config
    :CycleThemeReset              "Resets to the first theme


## 4. Customize (Optional)

    nnoremap <F8> :CycleThemeNext<CR>
    nnoremap <F7> :CycleThemePrev<CR>
