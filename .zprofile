# Looks
export GDK_BACKEND=wayland,x11,*
export QT_QPA_PLATFORM=wayland
export SDL_VIDEODRIVER=wayland,x11,windows
export CLUTTER_BACKEND=wayland
export GTK_THEME=Tokyonight-BL-LB-Dark-Storm
export QT_QPA_PLATFORMTHEME=qt6ct

# Man pages in neovim
export MANPAGER='nvim +Man!'

# Local paths
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/.juliaup/bin:$PATH

# Export XDG variables
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_STATE_HOME="${HOME}/.local/state"
