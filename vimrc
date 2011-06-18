"
" .vimrc - Terminal VIM initialisation file
"
" Author: Ramon Antonio Parada <rap@ramonantonio.net>
" Last Change: Tue Apr 10 23:26 2007 CEST
" References:
" http://www.naglenet.org/vim/syntax/_vimrc
"

set nocompatible           " use vim defaults
set backspace=1            " backspacing
set nobackup               " do not keep a backup file
"set backup                " keep backup file after written
"set backupdir=$HOME/tmp   " directory of backup files
"set writebackup            " write a backup when writing over a file
"set cmdheight=2           " command line height
set comments=b:#,b:\",n:>  " define comma seperated list of comment characters
"set cpoptions=ces$        " compatible options
set formatoptions=tcrql    " set the options for comment formatting
set ignorecase             " ignore case in search patterns
set joinspaces             " two spacs after "." for join command
set magic                  " change special characters used in search patterns
"set mouse=a               " make sure mouse is used in all cases.
"set mousemodel=extend     " set the model of mouse
set ruler                  " ruler display in status line
set shiftwidth=3           " shift width size
set showmatch              " show matching brackets
set showmode               " show mode at bottom of screen
set smartcase              " ignore ignorecase when pattern contains uppercase
"set verbose=9             " verbose level
set viminfo='20,\"50,h     " read/write a .viminfo file, don't store more than
                           " 50 lines of registers, disable hlsearch
set wildmode=longest,list,full  " Complete longest string, list alternatives,
                           " then complete next full match, cycling back to the
                           " original string.
"set winaltkeys=menu        " allow only menus with ALT key, otherwise use maps.
set wrapmargin=4           " number of characters from right side to begin wrap
                           " Does not apply when textwidth is non-zero.
set wrapscan               " search around end of file
set ls=2                   " allways show status line (laststatus) (2=always)
set tabstop=3              " numbers of spaces of tab character
set shiftwidth=3           " numbers of spaces to (auto)indent
set scrolloff=3            " keep 3 lines when scrolling
set cindent                " cindent
set smartindent            " smart indent
set autoindent             " always set autoindenting on
"set noautoindent          " autoindenting on
set showcmd                " display incomplete commands
set showmatch              " 
set hlsearch               " highlight searches
"set nohls                 "
set incsearch              " do incremental searching
set ruler                  " show the cursor position all the time
set vb t_vb=               " turn off error beep&flash
set number                 " show line numbers
set ignorecase             " ignore case when searching 
"set noignorecase          " don't ignore case
set title                  " show title in console title bar
set ttyfast                " smoother changes
"set ttyscroll=0           " turn off scrolling, didn't work well with PuTTY
"set modeline              " last lines in document sets vim mode
set modelines=3            " number lines checked for modelines
set shortmess=atIo         " abbreviate messages
set nostartofline          " don't jump to first character when paging
set whichwrap=b,s,h,l,<,>,[,]   " move freely between files
"set autowrite             " auto saves changes when quitting and swiching buffer
set sm                     " show matching braces, somewhat annoying...
"set nowrap                " don't wrap lines
set virtualedit=all        " 
syntax on                  " syntax highlighing


    " Filetypes (au = autocmd)
    au filetype help set nonumber      " no line numbers when viewing help
    au filetype help nnoremap <buffer><cr> <c-]>   " Enter selects subject
    au filetype help nnoremap <buffer><bs> <c-T>   " Backspace to go back

   " When using mutt, text width=72
   "au filetype mail set textwidth=72
   "au filetype tex set textwidth=72
   "au BufRead mutt*[0-9] set tw=72

   " Automatically chmod +x Shell and Perl scripts
   au BufWritePost   *.sh             !chmod *+*x %
   au BufWritePost   *.pl             !chmod *+*x %

   if (&ff == 'dos')
      ":1,$s/^M//g     "Automatic dos2unix
      "au filet:e ++ff=unix "Force unix fileformat
      set ff=unix
   endif

   " File formats
   au BufNewFile,BufRead  *.pls    set syntax=dosini
   au BufNewFile,BufRead  modprobe.conf    set syntax=modconf

" ************************************************************************
" Abbreviations
"
ab teh the
"iab YDATE <C-R>=strftime("%Y-%m-%d %X %Z")<CR>
iab CDATE <C-R>=strftime("%Y-%m-%d %X %Z")<CR>
" Example: 1998-11-05 19:20:43 MST


" Keyboard mappings
map <F1> :previous<CR>  " map F1 to open previous buffer
map <F2> :next<CR>      " map F2 to open next buffer
map <silent> <C-N> :silent noh<CR> " turn off highlighted search
map ,v :sp ~/.vimrc<cr> " edit my .vimrc file in a split
map ,e :e ~/.vimrc<cr>      " edit my .vimrc file
map ,u :source ~/.vimrc<cr> " update the system settings from my vimrc file
"----- write out html file
map ,h :source $VIM/vim70/syntax/2html.vim<cr>:w<cr>:clo<cr>:n<cr>,h
map ,L mz1G/[^/"]last modified:\\s*/e+1<CR>CDATE<ESC>`z
map ,l mz1G/[^/"]last change:\DATE
map ml o<ESC>k " Make a blank line below the current line
map mL O<ESC>j " Make a blank line above the current line



" Mail mappings (lomail?)
":% w !lomail /to anagle@ball.com /s "Test in VIM"


" Buffer lists
" From Paul Kirkaas [pkirkaas@tibco.com], vim-dev@vim.org on Mon 1999-03-15 09:33
"noremap  :buffers:bu 
" From Ives Aerts [ives@sonycom.com], vim-dev@vim.org on Mon 1999-03-15 09:47
noremap _ :ls<CR>:e #
" From Stefan Roemer [roemer@informatik.tu-muenchen.de], vim-dev@vim.org on Mon 1999-03-15 08:26
"  fu! BufLS()
"    let@-=strpart(histget(':',-1),1,999999)|call histdel(':',-1)
"    ls
"  endf
"  cmap <c-x> <c-b>"<cr>:call BufLS()<cr>:<c-r>-


" Common command line typos
cmap W w
cmap Q q

" Keyboard mapping for numeric keypad
imap <Esc>OM <c-m>
 map <Esc>OM <c-m>
imap <Esc>OP <nop>
 map <Esc>OP <nop>
imap <Esc>OQ /
 map <Esc>OQ /
imap <Esc>OR *
 map <Esc>OR *
imap <Esc>OS -
 map <Esc>OS -

imap <Esc>Ol +
imap <Esc>Om -
imap <Esc>On ,
imap <Esc>Op 0
imap <Esc>Oq 1
imap <Esc>Or 2
imap <Esc>Os 3
imap <Esc>Ot 4
imap <Esc>Ou 5
imap <Esc>Ov 6
imap <Esc>Ow 7
imap <Esc>Ox 8
imap <Esc>Oy 9
imap <Esc>Oz 0

" ************************************************************************
" Begin autocommands
"
" Clear all autocommands
"au! " This broke the :syn on command.  Hmph.

" In text files, always limit the width of text to 78 characters.
autocmd BufRead *.txt set textwidth=78

" In the backup report, automatically go to the last line.
autocmd BufRead beschlog.txt :$

augroup cprog
   " Remove all cprog autocommands
   au!

   " When starting to edit a file:
   "   For *.c and *.h files set formatting of comments and set C-indenting on.
   "   For other files switch it off.
   autocmd BufRead *.c,*.h set formatoptions=croql cindent comments=sr:/*,mb:*,el:*/,://
   set expandtab              " tabs are converted to spaces, use only when required
augroup END

augroup jprog
   autocmd BufWritePre *.java norm ,l
   set expandtab              " tabs are converted to spaces, use only when required
augroup END


augroup vim
   " Remove all vim autocommands
   au!

   " When writing a file:
   "   For vim files change the "Last change:" line to the
   "   current date and time in "year-month-date time zone" format.
   autocmd BufWritePre *.vim,_vimrc,_gvimrc,.vimrc,.gvimrc norm ,l
augroup END

augroup html
   " Remove all html autocommands
    au!

   " When writing a file:
   " For *.html files change the "Last Modified:" line to the
   " current date and time in "year-month-date time zone" format
   autocmd BufRead *html source $VIM/vim-macro-set.1.2/macros.meta
   autocmd BufWritePre *.html norm ,L
augroup END

augroup gzip
   " Remove all gzip autocommands
   au!

   " Enable editing of gzipped files
   "       read: set binary mode before reading the file
   "             uncompress text in buffer after reading
   "      write: compress file after writing
   "     append: uncompress file, append, compress file
   autocmd BufReadPre,FileReadPre        *.gz set bin
   autocmd BufReadPost,FileReadPost      *.gz let ch_save = &ch|set ch=2
   autocmd BufReadPost,FileReadPost      *.gz '[,']!gunzip
   autocmd BufReadPost,FileReadPost      *.gz set nobin
   autocmd BufReadPost,FileReadPost      *.gz let &ch = ch_save|unlet ch_save
   autocmd BufReadPost,FileReadPost      *.gz execute ":doautocmd BufReadPost " . expand("%:r")

   autocmd BufWritePost,FileWritePost    *.gz !mv <afile> <afile>:r
   autocmd BufWritePost,FileWritePost    *.gz !gzip <afile>:r

   autocmd FileAppendPre                 *.gz !gunzip <afile>
   autocmd FileAppendPre                 *.gz !mv <afile>:r <afile>
   autocmd FileAppendPost                *.gz !mv <afile> <afile>:r
   autocmd FileAppendPost                *.gz !gzip <afile>:r
augroup END

" Sets the last modification time of the current file.
" the modification time is truncated to the last hour.  and the
" next time the time stamp is changed, it is checked against the
" time already stamped. this ensures that the time-stamp is
" changed only once every hour, ensuring that the undo buffer is
" not screwed around with every time we save.
" to force the time stamp to be not updated, use the command:
" :NOMOD
" To change it back, use
" :MOD

if !exists('g:timeStampLeader')
	let s:timeStampLeader = 'Last Change: '
else
	let s:timeStampLeader = g:timeStampLeader
endif

function! UpdateWithLastMod()
	if exists('b:nomod') && b:nomod
		return
	end
	let pos = line('.').' | normal! '.virtcol('.').'|'
	0
	if search(s:timeStampLeader) <= 20 && &modifiable
		let lastdate = matchstr(getline('.'), s:timeStampLeader.'\zs.*')
		let newdate = strftime("%a %b %d %H:%M %Y %Z")
		"if lastdate == newdate
		"	exe pos
		"	return
		"end
		exe 's/'.s:timeStampLeader.'.*/'.s:timeStampLeader.newdate.'/e'
		call s:RemoveLastHistoryItem()
	else
		return
	end
	
	exe pos
endfunction

augroup LastChange
	au!
	au BufWritePre * :call UpdateWithLastMod()
augroup END

function! <SID>RemoveLastHistoryItem()
  call histdel("/", -1)
  let @/ = histget("/", -1)
endfunction

com! -nargs=0 NOMOD :let b:nomod = 1
com! -nargs=1 MOD   :let b:nomod = 0

