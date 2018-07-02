"Vim���Ȃ�ׂ�Vi�݊��ɂ���
set nocompatible

nnoremap <C-y> :NERDTreeToggle<CR>

""""""""""" NeoBundle�ݒ�  """""""""""{{{
" https://github.com/Shougo/neobundle.vim
" �C���X�g�[��
" $ mkdir -p ~/.vim/bundle
" $ export GIT_SSL_NO_VERIFY=true
" $ git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
" :NeoBundleInstall �Ńv���O�C���C���X�g�[�� :NeoBundleInstall! �ōX�V


set mouse+=a
if &term =~ '^screen'
    " tmux knows the extended mouse mode
    set ttymouse=xterm2
endif


filetype on
filetype indent on
filetype plugin on
"}}}
""""""""""" �v���O�C�����Ƃ̐ݒ� """""""""""{{{
" Unite�N�����ɃC���T�[�g���[�h�ŊJ�n
let g:unite_enable_start_insert = 1

" Unite�̊e��V���[�g�J�b�g�ݒ�
" �o�b�t�@�ꗗ
"nnoremap <silent> ;ub :<C-u>Unite buffer<CR>
" �t�@�C���ꗗ
"nnoremap <silent> ;uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
" ���W�X�^�ꗗ
"nnoremap <silent> ;ur :<C-u>Unite -buffer-name=register register<CR>
" �ŋߎg�p�����t�@�C���ꗗ
"nnoremap <silent> ;um :<C-u>Unite file_mru<CR>
" �S���悹
"nnoremap <silent> ;ua :<C-u>UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file<CR>

" Ctrl +  o �Ń^�O�A�E�g���C����\��

"}}}
""""""""""" Vim�̊�{�I�Ȑݒ�  """""""""""{{{
"�o�b�N�X�y�[�X�L�[�̓�������肷��
"2:indent,eol,start�Ɠ���
set backspace=2

"�s���\��
set number

"�V�����s���J�n�����Ƃ��ɁA�V�����s�̃C���f���g�����ݍs�Ɠ����ʂɂ���
set autoindent

"�����ŏ������Ȃ�啶���𖳎��A�啶���Ȃ疳�����Ȃ��ݒ�
set smartcase

"(no)�������t�@�C���̖����܂Ō���������A�t�@�C���̐擪�փ��[�v����
set nowrapscan

"�C���N�������^���T�[�`���s��
set incsearch

"highlight matches with last search pattern
set hlsearch

"�����ʂ����͂��ꂽ�Ƃ��A�Ή����銇�ʂ�\������
set showmatch

"�J�[�\�������s�ڂ̉���ڂɒu����Ă��邩��\������
set ruler

"�V�����s��������Ƃ��ɍ��x�Ȏ����C���f���g���s��
"set smartindent

"�ۑ����Ȃ��ő��̃t�@�C����\�����邱�Ƃ��o����悤�ɂ���
set hidden

set fileformat=unix

"�J�����g�o�b�t�@���̃t�@�C���̕����G���R�[�f�B���O��ݒ肷��
"set fileencoding=utf-8
set fileencodings=utf-8,cp932,sjis,iso-2022-jp,euc-jp,utf-8

"Insert���[�h��<Tab> ��}������̂ɁA�K�؂Ȑ��̋󔒂��g��
set expandtab
set ts=4

"�t�@�C������ <Tab> ���Ή�����󔒂̐�
set tabstop=4

"�����C���f���g�̊e�i�K�Ɏg����󔒂̐�
set shiftwidth=4

"�s���̗]������ Tab ��ł����ނƁA'shiftwidth' �̐������C���f���g����
"set smarttab

"�����\��(�F�t��)��ON/OFF�ݒ�
syntax on

"�X�e�[�^�X���C����\������E�B���h�E��ݒ肷��
"2:��ɃX�e�[�^�X���C����\������
set laststatus=2

"�X�e�[�^�X�s�̕\�����e��ݒ肷��
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}G8%=%l,%c%V%8P

"vim�̃o�b�N�A�b�v�t�@�C���ƃX���b�v�t�@�C��
set nobackup
set noswapfile

"�o�b�t�@���N���b�v�{�[�h�ɃR�s�[(for OSX)
set clipboard=unnamed,autoselect

"�������s�I�t
set tw=0

" �}�E�X���[�h�L��
set mouse=a


"MacVim��GVim�𗘗p����ۂ�IME�����[�h�̐ؑւŃI�t�ƂȂ�ݒ�
set imdisable

"UTF-8���������Ή�
"set termencoding=utf-8
"set encoding=utf-8
"set fileencoding=utf-8
"set fileencodings=utf-8,cp932
"set fileencodings=utf-8,sjis

au QuickfixCmdPost vimgrep cw

hi Comment ctermfg=5

"}}}
""""""""""" ������UP�̂��߂̐ݒ� """""""""""{{{
" <Leader>��\�Ƀ��}�b�b�v
"nnoremap \ <Leader>
"vnoremap \ <Leader>

"�S�p�X�y�[�X���@�ŕ\��
highlight JpSpace cterm=underline ctermfg=Blue guifg=Blue
au BufRead,BufNew * match JpSpace /�@/

"�^�u��������悤�ɐݒ�
set list
set listchars=tab:>-,trail:-

" �T�[�`�n�C���C�g����ESC���ŏ���
nnoremap <Esc><Esc> :nohlsearch<CR><Esc>

" �}�����[�h�ƃm�[�}�����[�h�ŃX�e�[�^�X���C���̐F��ύX����
au InsertEnter * hi StatusLine guifg=DarkBlue guibg=DarkYellow gui=none ctermfg=Blue ctermbg=Yellow cterm=none
au InsertLeave * hi StatusLine guifg=Black guibg=White gui=none ctermfg=Black ctermbg=White cterm=none

"�o�C�i���ҏW(xxd)���[�h�ivim -b �ł̋N���A�������� *.bin �Ŕ������܂��j
augroup BinaryXXD
	autocmd!
	autocmd BufReadPre  *.bin let &binary =1
	autocmd BufReadPost * if &binary | silent %!xxd -g 1
	autocmd BufReadPost * set ft=xxd | endif
	autocmd BufWritePre * if &binary | %!xxd -r
	autocmd BufWritePre * endif
	autocmd BufWritePost * if &binary | silent %!xxd -g 1
	autocmd BufWritePost * set nomod | endif
augroup END

" ���B�W���A�����[�h�őI�������e�L�X�g��n�Ō�������(���W�X�^v�g�p)
"vnoremap <silent> n "vy/\V<C-r>=substitute(escape(@v,'\/'),"\n",'\\n','g')<CR><CR>

" gf�ŃJ�[�\�����̃t�@�C������V�����^�u�ŊJ��
"nnoremap gf :tabe <cfile><CR>
"vnoremap gf :tabe <cfile><CR>

" �����ꂪ��ʒ����ɂ���悤��
nmap n nzz
nmap N Nzz

" �����N�A�؂��莞�Ƀ��W�X�^"�̒l��z�ɂ��R�s�[���Ă���(�A���\�t�Ɏg��)
vnoremap <silent> y y:let @z=@"<CR>
vnoremap <silent> d d:let @z=@"<CR>

" �r�W���A�����[�h�őI�������e�L�X�g�������ă��W�X�^z�̓��e��\�t����(�A���\�t��)
vnoremap <silent> p x"zP

" vimrc�̐V�����^�u�ł̕ҏW�Ɠǂݍ��݂̃V���[�g�J�b�g�ݒ�
"nnoremap ;s :source $MYVIMRC<CR>
"nnoremap ;v :tabe $MYVIMRC<CR>
"nnoremap ;g :tabe $MYGVIMRC<CR>
"nnoremap ;l :tabe ~/.vimrc.local<CR>

" :make��:grep�������ۂɎ����I��quickfix���J���悤�ɂ���
autocmd QuickfixCmdPost make,grep,grepadd,vimgrep,vimgrepadd if len(getqflist()) != 0 | cw | endif

" �e�L�X�g�t�@�C����p�̐ݒ�
augroup ettext
	autocmd!
	autocmd BufRead,BufNewFile *.txt setlocal expandtab nolist nonumber tw=0
augroup END

" �t�@�C�����J�����Ƃ��ɑO��̕ҏW�ӏ��Ɉړ�
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif

colorscheme darkblue

let g:netrw_liststyle = 3

"}}}
""""""""""" ���ꂲ�Ƃ̐ݒ� """""""""""{{{
"ctags�̃t�@�C�����J�����g�f�B���N�g�����猟�����ď�ʂɂ�����̓ǂݍ���
set tags=.tags;

""""" VIM�p�ݒ� """"""""
" vim�t�@�C���Ɋւ���{��}�ɂ��܂肽���ݐݒ������
au FileType vim setlocal foldmethod=marker

""""" PHP�p�ݒ� """"""""
" :make��PHP�\���`�F�b�N
au FileType php setlocal makeprg=php\ -l\ %
au FileType php setlocal errorformat=%m\ in\ %f\ on\ line\ %l

" PHP�̊֐���N���X�̐܂肽����(���ɏd���j
let php_folding = 0

" ������̒���SQL���n�C���C�g
let php_sql_query = 1

" Baselib���\�b�h�̃n�C���C�g
let php_baselib = 1

" HTML���n�C���C�g
let php_htmlInStrings = 1

" <? �𖳌��ɂ��遨�n�C���C�g���O�ɂ���
let php_noShortTags = 1

" ] �� ) �̑Ή��G���[���n�C���C�g
let php_parent_error_close = 1
let php_parent_error_open = 1


"}}}
""""""""""" PJ�̐ݒ� """""""""""{{{
if filereadable(expand('~/.vimrc_project'))
      source ~/.vimrc_project
endif

"}}}
""""""""""" GLOBAL """""""""""{{{
map <C-g> :Gtags 
map <C-h> :Gtags -f %<CR>
map <C-k> :Gtags -f %<CR>
map <C-j> :GtagsCursor<CR>
map <C-n> :cn<CR>
map <c-P> :cp<CR>

"}}}
