{ pkgs, ... }:

{

  imports = [
    ./atuin.nix
    ./starship_prompt.nix
    ./fzf.nix
    ./zoxide.nix
    ./direnv.nix
  ];


  programs.zsh = {
    enable = true;

    enableCompletion = true;
    autocd = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    history = {
      size = 100000;
      save = 100000;
      share = true;
    };

    shellAliases = {
      ls = "eza";
      ll = "eza -l --git";
      la = "eza -la --git";
      tree = "eza --tree";
    };

    completionInit = ''
      autoload -Uz compinit
      compinit

      zstyle ':completion:*' menu select
    '';

    initContent = ''
      setopt SHARE_HISTORY
      setopt HIST_IGNORE_ALL_DUPS
      setopt HIST_REDUCE_BLANKS
      setopt INC_APPEND_HISTORY

      bindkey -v

      setopt AUTO_PUSHD
      setopt PUSHD_IGNORE_DUPS
      # setopt EXTENDED_GLOB
      setopt NO_BEEP
      setopt INTERACTIVE_COMMENTS
    '';
  };

  programs.starship = {
    enableZshIntegration = true;
  };

  programs.fzf = {
    enableZshIntegration = true;
  };

  programs.zoxide = {
    enableZshIntegration = true;
  };

  programs.atuin = {
    enableZshIntegration = true;
  };

}
