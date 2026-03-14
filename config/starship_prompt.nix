{
  programs.starship = {
    enable = true;

    settings = {
      scan_timeout = 360;
      # "$schema" = "https://starship.rs/config-schema.json";
      add_newline = false;

      format = ''
        ⟶ $directory''$git_branch$git_state$git_status $character
        '';

      right_format = "$all";

      # palette = "catppuccin_mocha";

      palettes.catppuccin_mocha = {
        rosewater = "#f5e0dc";
        flamingo = "#f2cdcd";
        pink = "#f5c2e7";
        mauve = "#cba6f7";
        red = "#f38ba8";
        maroon = "#eba0ac";
        peach = "#fab387";
        yellow = "#f9e2af";
        green = "#a6e3a1";
        teal = "#94e2d5";
        sky = "#89dceb";
        sapphire = "#74c7ec";
        blue = "#89b4fa";
        lavender = "#b4befe";
        text = "#cdd6f4";
        subtext1 = "#bac2de";
        subtext0 = "#a6adc8";
        overlay2 = "#9399b2";
        overlay1 = "#7f849c";
        overlay0 = "#6c7086";
        surface2 = "#585b70";
        surface1 = "#45475a";
        surface0 = "#313244";
        base = "#1e1e2e";
        mantle = "#181825";
        crust = "#11111b";
      };

      os.symbols = {
        Windows = "󰍲";
        Ubuntu = "󰕈";
        SUSE = "";
        Raspbian = "󰐿";
        Mint = "󰣭";
        Macos = " ";
        Manjaro = "";
        Linux = "󰌽";
        Gentoo = "󰣨";
        Fedora = "󰣛";
        Alpine = "";
        Amazon = "";
        Android = "";
        Arch = "󰣇";
        Artix = "󰣇";
        CentOS = "";
        Debian = "󰣚";
        Redhat = "󱄛";
        RedHatEnterprise = "󱄛";
        NixOS = " ";
        # Guix = " ";
      };

      directory = {
        style = "sapphire";
        format = "[ $path ]($style)";
        substitutions = {
          Documents = "󰈙 ";
          Downloads = " ";
          Music = " ";
          Pictures = " ";
          Developer = "󰲋 ";
          Others = " ";
        };
      };

      os.disabled = false;

      git_branch = {
        symbol = "[](black) ";
        style = "fg:lavender bg:black";
        format = "  on [$symbol$branch]($style)[](black)";
      };

      git_status = {
        format = " [($all_status$ahead_behind )]($style)";
      };

      nodejs = {
        symbol = "";
        format = "[ $symbol( $version) ]($style)";
      };

      c = {
        symbol = " ";
        format = "[ $symbol( $version) ]($style)";
      };

      rust = {
        symbol = "";
        format = "[ $symbol( $version) ]($style)";
      };

      golang = {
        symbol = "";
        format = "[ $symbol( $version) ]($style)";
        detect_files = [ "go.mod" ];
      };

      php = {
        symbol = "";
        format = "[ $symbol( $version) ]($style)";
      };

      java = {
        symbol = " ";
        format = "[ $symbol( $version) ]($style)";
      };

      kotlin = {
        symbol = "";
        format = "[ $symbol( $version) ]($style)";
      };

      haskell = {
        symbol = "";
        format = "[ $symbol( $version) ]($style)";
      };

      python = {
        symbol = "";
        format = "[ $symbol( $version) ]($style)";
      };

      docker_context = {
        symbol = "";
        format = "[ $symbol( $context) ]($style)";
      };

      time = {
        disabled = true;
        time_format = "%R";
        style = "bg:peach";
        format = "[[  $time ](fg:mantle bg:foam)]($style)";
      };

      line_break.disabled = true;

      character = {
        disabled = false;
        success_symbol = "[✘ ](bold fg:green)";
        error_symbol = "[✘ ](bold fg:red)";
        vimcmd_symbol = "[ :](bold yellow)";
        vimcmd_replace_one_symbol = "[󰝿 :](bold purple)";
        vimcmd_replace_symbol = "[  :](bold purple)";
        vimcmd_visual_symbol = "[  :](bold cyan)";
      };
    };
  };
}
