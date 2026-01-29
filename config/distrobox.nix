{ ... } : {
  xdg.configFile."distrobox/distrobox.conf".text = ''
      # --- Wayland + runtime ---
       XDG_RUNTIME_DIR=/run/user/1000

      # --- Cursor & DPI ---
       XCURSOR_THEME=Adwaita
       XCURSOR_SIZE=24
       QT_SCALE_FACTOR=1.25
       GDK_SCALE=1
       GDK_DPI_SCALE=1

      # --- XDG base directories ---
       XDG_CONFIG_HOME=\$HOME/.config
       XDG_CACHE_HOME=\$HOME/.cache
       XDG_DATA_HOME=\$HOME/.local/share
       XDG_STATE_HOME=\$HOME/.local/state
  '';
}
