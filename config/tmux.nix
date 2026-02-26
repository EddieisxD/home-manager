{pkgs, ...}: {
  programs.tmux = {
    enable = true;
    terminal = "tmux-256color";
    mouse = true;
    baseIndex = 1;
    keyMode = "vi";
    escapeTime = 0;

    plugins = with pkgs.tmuxPlugins; [
      # tpm
      vim-tmux-navigator tmux-sessionx
      resurrect
      continuum     
      catppuccin
      online-status
      battery
    ];

    extraConfig = ''
      set -ag terminal-overrides ",xterm-256color:RGB"
      set -gq allow-passthrough on

      set -g pane-base-index 1
      set-option -g prefix C-b
      set-option -g prefix2 none
      set -g detach-on-destroy off

      unbind r
      bind r source-file ~/.config/tmux/tmux.conf

      unbind %
      bind | split-window -h -c "#{pane_current_path}"

      unbind '"'
      bind - split-window -v -c "#{pane_current_path}"

      unbind v
      bind v copy-mode

      bind -r j resize-pane -D 5
      bind -r k resize-pane -U 5
      bind -r l resize-pane -R 5
      bind -r h resize-pane -L 5

      bind -r m resize-pane -Z
      bind-key x kill-pane

      bind-key -T copy-mode-vi 'v' send -X begin-selection
      bind-key -T copy-mode-vi 'y' send -X copy-selection

# sessionx
      set -g @sessionx-bind 'o'

# resurrect
      set -g @resurrect-capture-pane-contents "on"
      set -g @continuum-restore "on"

# catppuccin
      set -g @catppuccin_flavor "mocha"
      set -g @catppuccin_status_background "none"
      set -g @catppuccin_window_status_style "none"
      set -g @catppuccin_pane_status_enabled "off"
      set -g @catppuccin_pane_border_status "off"

# online status
      set -g @online_icon "ok"
      set -g @offline_icon "nok"

      set -g status-position bottom
      set -g status-justify absolute-centre
      set -g status-style "bg=#{@thm_bg}"
      '';
  };
}
