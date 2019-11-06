au funcundefined plug#* exe '!git clone --depth=1 https://github.com/junegunn/vim-plug' split(&pp,',')[0].'/autoload'
cal plug#begin(split(&pp,',')[0].'/plugged')
Plug 'neoclide/coc.nvim',{'do':'npm i --no-package-lock'}
Plug 'mhinz/neovim-remote',{'do':'python3 setup.py install --user'}
Plug 'flazz/vim-colorschemes'
Plug 'sheerun/vim-polyglot'
Plug 'mg979/vim-visual-multi'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'bkad/CamelCaseMotion'
Plug 'michaeljsmith/vim-indent-object'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'tommcdo/vim-exchange'
Plug 'tommcdo/vim-ninja-feet'
Plug 'machakann/vim-swap'
cal plug#end()
let $EDITOR="nvr"
let g:camelcasemotion_key='\'
let g:coc_global_extensions=map(['lists','marketplace','project','explorer','git','snippets','pairs','pyls','texlab','tsserver'],{k,v-> "coc-".v})
let g:coc_user_config={'languageserver':{'ccls':{"command":"ccls","filetypes":["c","cpp"],"rootPatterns":[".git/"],"initializationOptions":{"cache":{"directory":"/tmp/ccls"}}}}}
sil! set hid nowrap rnu title tgc ls=0 bg=dark cb=unnamedplus scl=yes bkc=yes ut=300
sil! colo pencil
nn <space> :CocList<cr>
nn <c-h> :CocList mru<cr>
nn <c-p> :CocCommand<cr>
nn <c-e> :CocCommand explorer<cr>
nn <c-j> :keepp s/^\(\s*\)\(.\{-}\)\(\s*\)\(\%#\)\(\s*\)\(.*\)/\1\2\r\1\4\6<cr>
nn <c-t> :te<cr>i
nn <c-s> :w<cr>
om i, <plug>(swap-textobject-i)
om a, <plug>(swap-textobject-a)
om [gc <Plug>(ninja-left-foot)gc
om ]gc <Plug>(ninja-right-foot)gc
ino <expr><c-space> coc#refresh()
