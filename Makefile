.PHONY: setup clean

setup:
	stow --verbose --target=$$HOME --restow tmux nvim yazi fish
clean:
	stow --verbose --target=$$HOME --delete tmux nvim yazi fish
