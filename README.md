# Sokoban PDDL Planning Repository

This repository contains the PDDL files for solving the **Sokoban** puzzle game using automated planning.

## Files

- **sokoban_problem.pddl**: Defines the problem instance for Sokoban, including the initial state and goals.
- **sokoban.pddl**: Defines the domain for Sokoban, specifying the actions, conditions, and effects required for solving the puzzle.

## Description

This repository demonstrates the use of PDDL (Planning Domain Definition Language) to represent the Sokoban puzzle game. The `sokoban.pddl` file outlines the actions and logic that can be used to move crates in the game, while the `sokoban_problem.pddl` file defines a specific puzzle scenario with initial conditions and the goal state.

## Usage

To use the PDDL files for planning, you can input them into any online PDDL solver. These solvers will try to find a sequence of actions that lead from the initial state to the goal state in the Sokoban puzzle.
