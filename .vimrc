  :set t_Co=256

" autocmd BufNewFile,BufRead *.vb,*.aspx set ft=vbnet
" autocmd BufNewFile,BufRead *.tab,*.TAB,*.udf,*.UDF set ft=sql
" autocmd BufNewFile,BufRead *.time,*.TIME set ft=timelog
  autocmd FileType vbnet so ~/.vim/after/ftplugin/aspvbs_snippets.vim
  autocmd FileType html so ~/.vim/after/ftplugin/html_snippets.vim

" if has("mouse_gpm") && filereadable("/usr/share/vim/syntax/syntax.vim")
"   syntax on
" endif

" :set cp
  :set foldmethod=marker
  :set go=mT
" :set number
" :set spell spelllang=en
" :set statusline=%F%m%r%h%w\%=%y
" :syntax off
  :set autoindent
  :set backupdir=./.backup,.,/tmp
  :set bs=2
  :set directory=./.backup,.,/tmp
" :set foldmethod=marker
" :set nofoldenable
  :set ignorecase
  :set nobackup
  :set nohlsearch
  :set noincsearch
  :set noshowmatch
  :set nowrap
  :set ruler
  :set splitright
  :set statusline=~

  :set gfn=Consolas\ 12
" :set gfn=Courier\ New\ 10
" :set gfn=DejaVu\ Sans\ Mono\ Book\ 7
" :set gfn=Crisp\ 10
" :set gfn=Fixed\ 6
" :set gfn=Luxi\ Mono\ 8
" :set gfn=Monaco\ 9
" :set gfn=Terminus\ 9

" :colo 256_asu1dark
" :colo 256_redblack
" :colo autumnleaf
" :colo baycomb
" :colo black_angus
" :colo blue
" :colo bw
" :colo candyman
" :colo charged-256
" :colo chela_light
" :colo cleanphp
" :colo dante
" :colo dark-ruby
" :colo darkburn
" :colo darkdot
" :colo darkocean
" :colo darkspectrum
" :colo darktango
" :colo default
" :colo delek
" :colo earendel
" :colo fruidle
" :colo industrial
" :colo inkpot
" :colo ir_black
" :colo ironman
" :colo jellybeans
" :colo kalt
" :colo lettuce
" :colo lucius
" :colo maroloccio3
" :colo metacosm
" :colo mod_tcsoft
" :colo professional
" :colo proton
" :colo railscasts
" :colo synic
" :colo tango
" :colo taqua
" :colo twilight
" :colo two2tango
" :colo vitamins
" :colo white
" :colo wombat256
" :colo wuye
" :colo xoria256
" :colo xterm16
" :colo zenburn

" :let g:dbext_default_profile_examplepostgre = 'type=PGSQL:user=USERNAME:passwd=PASSWD:host=HOSTNAME:dbname=DBNAME'
" :let g:dbext_default_profile_exampleodbc = 'type=ODBC:user=USERNAME:passwd=PASSWD:dsnname=DSNNAME'
" :let g:dbext_default_profile_examplemysql = 'type=MYSQL:user=USERNAME:passwd=PASSWD:host=HOSTNAME:dbname=DBNAME'
" :let g:dbext_default_profile_examplesqlite = 'type=SQLITE:SQLITE_bin=/usr/bin/sqlite3:dbname=DBFILE'
" :let g:dbext_default_profile = 'examplepostgre'
" :let g:dbext_default_profile = 'exampleodbc'
  :let g:dbext_default_profile = 'examplemysql'
" :let g:dbext_default_profile = 'examplesqlite'

  :let g:Tail_Center_Win = 1
  :let g:Tail_Height = 1

  nmap <C-W>e :new \| vimshell<CR>
  nmap <C-W>E :vnew \| vimshell<CR>
  map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>
  nmap <C-W>] :tabNext<CR>

function ScreenConnect (name)
  call system('~/bin/connectscreen ' . a:name)
endfunction

command! -nargs=1 ConnScrn	:call ScreenConnect(<q-args>)

function CleanseSQL ()
  :g/^\(USE.*\|GO\|GOUSE.*\|\)$/d
endfunction

command! -nargs=0 CSQL	:call CleanseSQL()

" highlight VertSplit ctermbg=red ctermfg=black
" hi Folded ctermbg=red ctermfg=black
" hi StatusLine ctermbg=black ctermfg=red cterm=bold
" hi StatusLineNC ctermbg=black ctermfg=black cterm=bold
" hi TabLine ctermbg=black ctermfg=black cterm=bold
" hi TabLineFill ctermbg=black ctermfg=black cterm=bold
" hi TabLineSel ctermbg=none ctermfg=darkgreen cterm=none
" hi VertSplit ctermbg=black ctermfg=black cterm=bold
" set statusline=  
" set statusline+=%<\                       " cut at start  
" set statusline+=%*[%n%H%M%R%W]%*\        " buffer number, and flags  
" set statusline+=%t\                       " relative path  
" set statusline+=%=                        " seperate between right- and left-aligned  
" set statusline+=%*%y%*%*\                " file type  
" set statusline+=%10((%l/%L)%)\            " line and column  
" set statusline+=%P                        " percentage of file
  hi NonText ctermfg=0

" Screw you paren matching :P
  :let loaded_matchparen = 1
  :set bg=light
