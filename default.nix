{}:
(import ./reflex-platform {}).project ({ pkgs, ... }: {
  packages = {
    common = ./common;
    backend = ./backend;
    frontend = ./frontend;
    BasicTodo = ./BasicTodo;
    drag-and-drop = ./drag-and-drop;
    fileinput = ./fileinput;
    nasa-pod = ./nasa-pod;
    Keyboard = ./Keyboard;
    othello = ./othello;
    peg-solitaire = ./peg-solitaire;
    websocket-echo = ./websocket-echo;
    xhr-blob = ./xhr-blob;
    ws-chat = ./ws-chat;
    ws-chat2 = ./ws-chat2;
    common-ws-chat2 = ./common-ws-chat2;
    backend-ws-chat = ./backend-ws-chat;
    backend-ws-chat2 = ./backend-ws-chat2;
  };

  android.keyboard = {
    executableName = "keyboard";
    applicationId = "org.example.keyboard";
    displayName = "Example Keyboard App";
  };
  android.othello = {
    executableName = "othello";
    applicationId = "org.example.othello";
    displayName = "Example Othello App";
  };
  android.nasapod = {
    executableName = "nasapod";
    applicationId = "org.example.nasapod";
    displayName = "Example Nasapod App";
  };

  ios.keyboard = {
    executableName = "keyboard";
    bundleIdentifier = "org.example.keyboard";
    bundleName = "Example iOS App (keyboard ex)";
  };

  shells = {
    ghc = ["Keyboard" "BasicTodo" "drag-and-drop" "fileinput" "nasa-pod"
        "othello" "peg-solitaire" "websocket-echo" "xhr-blob"
        "ws-chat" "backend-ws-chat"
        "ws-chat2" "backend-ws-chat2" "common-ws-chat2"
    ];
    ghcjs = ["Keyboard" "BasicTodo" "drag-and-drop" "fileinput" "nasa-pod"
        "othello" "peg-solitaire" "websocket-echo" "xhr-blob"
        "ws-chat"
        "ws-chat2" "common-ws-chat2"
    ];
    /* ghc = ["common" "backend" "frontend"]; */
    /* ghcjs = ["common" "frontend"]; */
  };
  tools = ghc: with ghc; [
    pkgs.haskellPackages.hlint
    # pkgs.haskellPackages.hdevtools
    # pkgs.haskellPackages.ghc-mod
    # pkgs.haskellPackages.hasktags
    # pkgs.haskellPackages.haskdogs
    # pkgs.haskellPackages.hindent
    # pkgs.haskellPackages.hsimport
    # pkgs.haskellPackages.pointfree
    # pkgs.haskellPackages.pointful
    # pkgs.haskellPackages.stylish-haskell
  ];
})
