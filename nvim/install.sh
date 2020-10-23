curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim -c 'CocInstall -sync coc-json coc-html coc-tsserver coc-solargraph|q'
