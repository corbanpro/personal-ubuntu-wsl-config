if [[ $# -eq 0 ]] ; then
	'/usr/local/nvim-linux64/bin/nvim' .
else
	'/usr/local/nvim-linux64/bin/nvim' $*
fi

