# Base16 Shell
if status --is-interactive
    set -x BASE16_SHELL "$HOME/.config/base16-shell"
    source "$BASE16_SHELL/profile_helper.fish"
    base16-black-metal-gorgoroth
		set fish_greeting ""
		set -x GPG_TTY (tty)
end

set -U fish_user_paths /opt/homebrew/bin $fish_user_paths
