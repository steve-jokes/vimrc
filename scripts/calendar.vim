" Plugin Calendar Configuration

let g:calendar_google_calendar = 1
let g:calendar_google_task = 1
let g:calendar_first_day = "monday"
let g:calendar_time_zone = "+08:00"
let g:calendar_view = "week"
let g:calendar_views = ['year', 'month', 'week', 'day', 'clock']

let g:calendar_yank_deleting = 1
" let g:calendar_task_delete = 1
"
nnoremap <leader><leader>c :Calendar<CR>
