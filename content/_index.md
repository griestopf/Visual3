+++
archetype = "home"
title = "Software-Entwicklung interaktiver Medien"
date = 2024-09-28T15:27:29+02:00
draft = false
weight = 0
+++


## Ablauf Vorlesung

| Datum      | Inhalt                                                                                          |
|------------|-------------------------------------------------------------------------------------------------|
| Mi 19. Mrz | Veranstaltungsinfo. Installationshinweise                                                       |
| Mi 26. Mrz | C/C++ Einführung: Hello, World. |
| Mi 02. Apr | C/C++ Einführung: memory. Reference vs. Value Semantik. Pointer, Arrays und Strings              |
| Mi 09. Apr | C/C++-Einführung: Std.-Libraries                                                                |
| Mi 16. Apr | Godot-Engine Bauen                                                                              |
| Mi 23. Apr | Game-Engine Architecture: Initialization and Game Loop                                          |
| Mi 30. Apr | G-E-A: Scene Management: Class library of scene parts                                           |
| Mi 07. Mai | G-E-A: Scene Management: Collections and Trees                                                  |
| Mi 14. Mai | G-E-A: Scene Management: Collections and Trees                                                  |
| Mi 21. Mai | G-E-A: Scene Management: Scene-Traversal                                                        |
| Mi 28. Mai | G-E-A: Render-Engine abstraction                                                                |
| Mi 04. Jun | G-E-A: Render-Engine abstraction                                                                |
| Mi 11. Jun | Pfingsten                                                                                       |
| Mi 18. Jun | G-E-A: Platform independence                                                                    |
| Mi 25. Jun | Puffer                                                                                          |
| Mi 02. Jul | Puffer                                                                                          |


## Resourcen

- Buch: "Game Engine Architecture" Third Edition von Jason Gregory (ISBN 9781138035454)


## [hfu.li/SWD-GAM](https://hfu.li/SWD-GAM)

![QR-Code](./QR-Code-SWD-GAM.svg)

<!--


- Bauen und Debuggen der Godot Engine
- C++ Crash Course
- Struktur ausgewählter Teile einer Game Engine am Beispiel von Godot
- Seminar
  - ENTWEDER ausgewählte Themen dem Bereich Game Engine Architechture
    - Theoretisch aufarbeiten 
    - In Godot-Sourcen erklären
  - ODER ausgewählte Themen im Skripting von Game Engines
    - Theoretisch aufarbeiten
    - In Godot beispielhaft anwenden


### Ausgewählte Themen Game Engine Architecture
- Szenengraph & Traversierung
- Physik
- Animation & Animation-Blending
- Material & Shader

### Ausgewählte Themen Game-Skripting
- 3rd Person Kamera in Räumen
- NPC Pathfinding
- ...








## Lecture Pool

- Introduction to using Godot (done in Game Production?)
- Introduction to C++
  - History of C++
  - C++ in comparison to known languages
  - Hello, World
  - Concepts
    - Header Files
      - Separating class declaration (.h) and implementation (.cpp)
    - Compiled language
    - Compiling and Linking
    - Macros
    - Pointers
    - Standard Libraries
      - Std::
      - Boost
      - Project-wise
- The DNA of an interactive application (such as a game)
  - Init Things
  - Loop forever
    - Get Input
    - Process Input to parameterize output
    - Generate output (graphics, sound, ...)
- From the scene to the graphics card.
- Understanding the Godot Initialization and Main Loop 
  - [SceneTree](https://docs.godotengine.org/en/stable/classes/class_scenetree.html#class-scenetree) is the standard [MainLoop](https://docs.godotengine.org/en/stable/classes/class_mainloop.html#class-mainloop)
  - Any MainLoop implements _initialize, _process, _physics_process and _finalize.

- Debugging into Godot
  - From WinMain to widechar_main.
  - In widechar_main: 
    - Main::Start (main/main.cpp) initializes stuff
    - os.run() runs the application main loop
  - 
   
-->

