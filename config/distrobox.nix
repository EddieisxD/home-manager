{ ... } : {
  xdg.configFile."distrobox/distrobox.conf".text = ''
    container_additional_fields="
      # --- Wayland + runtime ---
      --env XDG_RUNTIME_DIR=/run/user/1000

      # --- Cursor & DPI ---
      --env XCURSOR_THEME=Adwaita
      --env XCURSOR_SIZE=24
      --env QT_SCALE_FACTOR=1.25
      --env GDK_SCALE=1
      --env GDK_DPI_SCALE=1

      # --- XDG base directories ---
      --env XDG_CONFIG_HOME=\$HOME/.config
      --env XDG_CACHE_HOME=\$HOME/.cache
      --env XDG_DATA_HOME=\$HOME/.local/share
      --env XDG_STATE_HOME=\$HOME/.local/state
    "
  '';
}
