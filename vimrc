" Chargment de Pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Activate automatic indentation
set autoindent
" Redefine tabulations
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=8

" activate auto file type detection
filetype on
filetype plugin indent on
" Max line length
set textwidth=79

" Syntax coloration
syntax on
" Load shortkeys
execute 'source'.$HOME.'/.vim/shortkeys.vim'

" Activate completion for python files
au FileType python set omnifunc=pythoncomplete#Complete
" Activate completion for javacript files
au FileType javascript set omnifunc=javascriptcomplete#CompleteJS
" Activate completion for html files
au FileType html set omnifunc=htmlcomplete#CompleteTags
" Activate completion for CSS files
au FileTYpe css set omnifunc=csscomplete#CompleteCSS

" Define the type of completion of SuperTab
let g:SuperTabDefaultCompletionType="context"

" Activate the documentation visualisation
set completeopt =menuone,longest,preview

" Function to activate completion for Django
function! SetAutoDjangoCompletion()
    let l:tmpPath=split($PWD,'/')
    let l:djangoVar=tmpPath(len(tmpPath)-1).'.settings'
    let $DJANGO_SETTINGS_MODULE=djangoVar
    echo 'Activate Django autocompletion avec :' .djangovar
    return 1
endfunction

" Activate autocompletion for Django
map <F10><Esc>:call SetAutoDjangoCompletion()<CR>


" Activate completion in virtualenv libraries
"py<<EOF
"import os.path
"import sys
"import vim
"if 'VIRTUAL_ENV' in os.environ:
"    project_base_dir=os.environ['VIRTUAL_ENV']
"    sys.path.insert(0,project_base_dir)
"    activate_this=os.path.join(project_base_dir, 'bin/activate_this.py')
"    execfile(activate_this, dict(__file__=activate_this))
"EOF


