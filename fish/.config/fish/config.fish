# Base16 Shell
if status --is-interactive
    set -x BASE16_SHELL "$HOME/.config/base16-shell"
    source "$BASE16_SHELL/profile_helper.fish"
    base16-black-metal-gorgoroth
	set fish_greeting ""
end

set -U fish_user_paths /opt/homebrew/bin $fish_user_paths

if test -z $ASDF_DATA_DIR
    set _asdf_shims "$HOME/.asdf/shims"
else
    set _asdf_shims "$ASDF_DATA_DIR/shims"
end

if not contains $_asdf_shims $PATH
    set -gx --prepend PATH $_asdf_shims
end
set --erase _asdf_shims
