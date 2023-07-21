Plug 'thoughtbot/vim-rspec'
let g:rspec_runner = "os_x_iterm2"
let g:rspec_command = "Dispatch bin/rspec {spec}"
" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>

