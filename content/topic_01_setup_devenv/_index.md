+++
title = 'Entwicklungsumgebung einrichten'
draft = false
weight = 10 
+++

## Inhalte

Entwicklungsumgebung installieren

- Godot Installieren (Produktiv)
- Godot Bauen
  - Visual Studio IDE Community installieren
    - C++ Workload
  - scons (Godot-Build-System) installieren
    - Python
    - pip scons
  - Godot Sourcen ziehen
  - Godot mit scons mit debug_symbols und als dev_build bauen
  - Mit scons eine Visual-Studio-Solution und Visual-Studio-Project-Dateien erzeugen: vsproj
- GitHub Copilot installieren
  - Bei GitHub als Student registrieren

Alternativ: Entwicklung mit Visual Studio Code (statt VS IDE)

- Anleitung/Tutorial auf der [VS-Code-Seite für C++](https://code.visualstudio.com/docs/languages/cpp)
- VS-Code installieren und für C++ aufsetzen
  - C/C++ Extension und C++ compiler installieren. [Video](http://code.visualstudio.com/docs/cpp/introvideos-cpp)
  - Compiler muss vermutlich nicht mehr installiert werden, wenn zuvor bereits VS IDE mit C++ Workload installiert wurde.
  - Empfohlen: Statt des der [C/C++ Extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools) wie im Video beschrieben kann die [C/C++ Extension Pack Extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools-extension-pack) installiert werden, die zusätzlich zur C/C++ Extension auch Themes und CMake Tools installiert
  - In VS-Code: 
    - mit `Ctrl`+`P` die Command-Box öffnen
    - `>Wel` eingeben
    - "Welcome: Open Walkthrough" auswählen
    - "Get Started with C++ development" auswählen
    - Instruktionen folgen
  - Zum Bauen und Debuggen allerhand Einstellungen vornehmen...
    - VS Code nur über die "Developer Shell/Console" (Windows-Taste) starten
    - Compiler (cl.exe) muss in VS-Code hinterlegt werden. Diesen unterhalb des Startverzeichnisses der Developer Console irgendwo in "bin" suchen.


## Resourcen

- [Godot-Engine] & Download Produktiversion(https://godotengine.org/)
- [Einführungstutorial 3+h](https://www.youtube.com/watch?v=A3R6T1h0ln8)
- Godot Docs: 
  - [Building from Source](https://docs.godotengine.org/en/stable/contributing/development/compiling/index.html#)
  - [Introduction to the build system](https://docs.godotengine.org/en/stable/contributing/development/compiling/introduction_to_the_buildsystem.html)
- Build Godot for debugging: 
  ```scons dev_build=yes debug_symbols=yes```
- Generate vsproj and sln files: 
  ```platform=windows vsproj=yes```

