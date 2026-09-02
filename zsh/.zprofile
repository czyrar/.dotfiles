# Wayland
export XDG_SESSION_TYPE=wayland
export SDL_VIDEODRIVER=wayland,x11,windows
export CLUTTER_BACKEND=wayland
export GDK_BACKEND=wayland,x11,*
export QT_QPA_PLATFORM=wayland
export QT_QPA_PLATFORMTHEME=qt6ct

# Looks
export GTK_THEME=Tokyonight-BL-LB-Dark-Storm

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

# SSH
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

# NVIDIA
if $(lspci | grep -q NVIDIA); then
  export LIBVA_DRIVER_NAME=nvidia
  export __GLX_VENDOR_LIBRARY_NAME=nvidia
fi
