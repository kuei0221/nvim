Plug 'thoughtbot/vim-rspec'
let g:rspec_runner = "os_x_iterm2"
let g:rspec_command = "Dispatch bin/rspec {spec}"
" RSpec.vim mappings
map <silent> <Leader>t :call RunCurrentSpecFile()<CR>
map <silent> <Leader>s :call RunNearestSpec()<CR>
map <silent> <Leader>l :call RunLastSpec()<CR>

