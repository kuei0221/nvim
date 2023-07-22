Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" See `man fzf-tmux` for available options
if exists('$TMUX')
  let g:fzf_layout = { 'tmux': '-p100%,60%'  }
else
  let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6  }  }
endif

" Customize fzf colors to match your color scheme
" - fzf#wrap translates this to a set of `--color` options
let g:fzf_colors =
\ { 'fg':      ['fg', 'Comment'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Normal'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

 " [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1
let g:fzf_action = {
      \ 'enter': 'tab drop',
      \ 'ctrl-t': 'tab drop',
      \ 'ctrl-x': 'split',
      \ 'ctrl-v': 'vsplit' }
nnoremap <silent> <leader>p :GFiles --cached --others --exclude-standard<cr>
let s:ag_options = ' --ignore "tags" ' 
let $FZF_DEFAULT_OPTS = '--bind ctrl-a:select-all,ctrl-d:deselect-all' 
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, s:ag_options, <bang>0)
" command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4.. --group'}, <bang>0)

nnoremap <silent> <leader>f :Ag<cr>

