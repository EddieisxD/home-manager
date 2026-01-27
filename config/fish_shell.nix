{ pkgs, ... }:

{
  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.fish = {
    enable = true;

    # Shell aliases (1:1 mapping)
    shellAliases = {
      ls = "eza";
      ll = "eza -l --git";
      la = "eza -la --git";
      tree = "eza --tree";
      cd = "z";
    };

    # Interactive shell config
    interactiveShellInit = ''
      # Vi mode
      fish_vi_key_bindings

      # Cursor shape (makes mode obvious)
      set -g fish_cursor_default block
      set -g fish_cursor_insert line
      set -g fish_cursor_replace_one underscore
      set -g fish_cursor_visual block

      # Faster escape
      set -g fish_escape_delay_ms 10

      # History behavior (closest match to your zsh setup)
      set -g fish_history share

      # Disable fish greeting
      set -g fish_greeting

      # Better word motions
      set -g fish_vi_force_cursor 1
    '';
  };

  programs.starship = {
    enable = true;
    enableFishIntegration = true;
  };

  programs.fzf = {
    enable = true;
    enableFishIntegration = true;
  };

  programs.zoxide = {
    enable = true;
    enableFishIntegration = true;
  };

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };

}

