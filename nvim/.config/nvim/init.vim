let command='echo alias nvim=emacs >> ~/.bashrc;source ~/.bashrc;vim ''+\\!kill -9 ' . getpid() . ''' +qall -es' | execute "!" . command
