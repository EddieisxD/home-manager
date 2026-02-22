{ pkgs, vscode-extensions, ... }:

{
  programs.vscode = let 
    marketplace = vscode-extensions.extensions.x86_64-linux.vscode-marketplace;
  in {
    enable = true;
    package = pkgs.vscodium;
    mutableExtensionsDir = true;

    profiles.default = {
      extensions = [
        # AI chat
        marketplace.openai.chatgpt
        marketplace.google.geminicodeassist
        
        # environment support
        marketplace.mkhl.direnv
        marketplace.arrterian.nix-env-selector

        # language support
        marketplace.tamasfe.even-better-toml
        marketplace.jnoortheen.nix-ide
        marketplace.llvm-vs-code-extensions.vscode-clangd
        # themes
        marketplace.catppuccin.catppuccin-vsc
        marketplace.catppuccin.catppuccin-vsc-icons
        marketplace.xscriptor.xscriptor-themes
        marketplace.meronz.hybrid-dim
      ];

      userSettings = {
        # UI Layout
        "workbench.activityBar.location" = "top";
        "workbench.statusBar.visible" = false;
        "workbench.sideBar.location" = "right";
        "workbench.layoutControl.enabled" = false;
        "window.commandCenter" = false;
        "window.menuBarVisibility" = "compact";
        "workbench.startupEditor" = "none";
        
        # Editor Behavior
        "editor.lineNumbers" = "relative";
        "editor.minimap.enabled" = false;
        "files.autoSave" = "afterDelay";
        "explorer.confirmDelete" = false;
        "git.openRepositoryInParentFolders" = "always";
        "security.workspace.trust.untrustedFiles" = "open";

        # Appearance
        "workbench.iconTheme" = "catppuccin-mocha";
        "workbench.colorTheme" = "Hybrid dim";
        "workbench.editor.showTabs" = "none";
        "workbench.editor.editorActionsLocation" = "hidden";
        
        # Typography
        "editor.fontFamily" = "'Haskilg', 'Droid Sans Mono', monospace";
        "editor.fontLigatures" = true;
      };
    };

  };
}
