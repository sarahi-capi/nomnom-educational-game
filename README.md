# NomNom: Educational Math Game 🖐🏻🧺

A 2D interactive educational game built in the Godot Engine to help 1st-grade students learn foundational math, quantity recognition, and counting through visual play and positive reinforcement.

<p align="center">
  <video src="https://github.com/user-attachments/assets/214366c1-ce02-402d-95a7-6d04ec0cf742" width="100%" controls></video>
  <video src="https://github.com/user-attachments/assets/b7feed63-65e6-465e-82c1-47b9e903c310" width="100%" controls></video>
</p>

## The Concept ✨
**NomNom** was developed in a collaborative team environment as a strictly visual, text-minimal educational tool. The game features two core mechanics: a "Counting Hands" pattern recognition system and a "Feeding the Monster" logic puzzle where players must match recipe quantities using a drag-and-drop inventory system. 

## Software Architecture & Core Logic 🛠️
While the project features beautiful custom art, my primary role in this project was **Core Game Logic, Scene Architecture, and Backend Development**. I focused on building a scalable, modular foundation using GDScript:

* The game was designed using strict Component-Based design. Every mini-game, UI element, and interactive object (like ingredients or the monster) acts as an independent, decoupled Godot scene, allowing for high maintainability and easy future expansion.
* Event-Driven Mechanics were implemented with custom Godot Signals to handle communication between nodes, such as updating the basket inventory when an item is dropped or triggering celebratory animations when reaching win-states.
* A mathematical logic was used for the recipe system, tracking ingredient arrays and handling the physics/input logic for the drag-and-drop mechanics.
* It was ensured a lightweight performance through optimized asset loading and built-in Godot features (`AudioStreamPlayer`, `2DAnimatedSprite`) to ensure the game runs smoothly on every device.

## The Development Team 🤝
This project was a successful agile collaboration, combining logic, art, and version control:
* **Sarahi Capi Casillas:** Game Logic, Scene Architecture, and Backend Development.
* **Albany Carrero Pereira:** UI/UX Design and Sound Integration.
* **Sebastian Zelaya Bustillo:** Version Control (GitLab) and Integration Testing.
* **Jou-Pei Fang:** Asset Collection and Demo Presentation.

## Project Documentation 📚
This project was built following strict Software Engineering protocols. I highly encourage reviewing our [**Full Project Documentation**](documentation.md) to see our complete process, including:
* System Architecture & Domain Data Models (UML)
* Requirements Engineering (User Stories & Personas)
* QA Testing Protocols & Acceptance Documentation

## How to Run 🚀
This game was built using Godot 4.4.
1. Clone the repository to your local machine.
2. Open the Godot Engine and click **Import**.
3. Select the `project.godot` file inside the cloned folder.
4. Press `F5` or click the Play button in the top right corner to run the main scene!

---
*Developed collaboratively — Showcasing modular game architecture and event-driven programming in GDScript.*
