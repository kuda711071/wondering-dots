" Set number lines
set number
set relativenumber

"Set vim modes
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

" Center screen after using ctrl d & ctrl u
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" Search forward and center screen with zz after finding the word
nnoremap <silent> / /<C-R>=escape(input('Search: '), '/\')<CR><CR>
autocmd CmdlineEnter / nnoremap <silent> <buffer> <CR> <CR>zz

" Search backward and center screen with zz after finding the word
nnoremap <silent> ? ?<C-R>=escape(input('Search: '), '/\')<CR><CR>
autocmd CmdlineEnter ? nnoremap <silent> <buffer> <CR> <CR>zz

" Center the screen after searching forward or backward using 'n' or 'N'
nnoremap <silent> n nzzzv
nnoremap <silent> N Nzzzv

" Jump with 'n' lines and center the screen
nnoremap <expr> <silent> j (v:count ? "jzz" : "j")
nnoremap <expr> <silent> k (v:count ? "kzz" : "k")

" Move split windows easier
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Clear registers (Type :WipeReg in command mode)
command! WipeReg for i in range(34,122) | silent! call setreg(nr2char(i), []) | endfor

" Disable auto-comment for Bash scripting (ex: # doesn't automatically insert
" when hitting enter
autocmd FileType sh setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Add custom plugins themes, etc, via VimPlug
call plug#begin()

" List your plugins here
Plug 'https://github.com/vague2k/vague.nvim'
Plug 'https://github.com/rose-pine/vim'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

let g:disable_bg = 1
set background=dark
colo rosepine
