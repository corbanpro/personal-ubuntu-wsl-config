if [[ $# -eq 0 ]]; then
	if [[ -f "./.session.vim" ]]; then
		'/usr/local/nvim-linux64/bin/nvim' -S ./.session.vim
	else
		'/usr/local/nvim-linux64/bin/nvim'
	fi
else
	'/usr/local/nvim-linux64/bin/nvim' $*
fi
