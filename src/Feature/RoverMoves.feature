﻿Feature: RoverMoves

    As a rover operator
    I want the rover to make moves
    So that the rover moves one step ahead.

   Scenario: Rover Movement
        Given Rover is in plateau at (<X>,<Y>) co-ordinates and facing the <Direction>
        When the rover moves (<X>,<Y>) co-ordinates and facing <Direction>
        Then the rover reaches new position (<M>,<N>) in the same <Direction>
        Examples:
            | X | Y | Direction | M | N |
            | 1 | 1 | N         | 1 | 2 |
            | 1 | 1 | S         | 1 | 0 |
            | 1 | 1 | E         | 2 | 1 |
            | 1 | 1 | W         | 0 | 1 |


    Scenario: Rover movement out of boundary
        Given Rover is in plateau at (<X>,<Y>) co-ordinates and facing the <Direction>
        When the rover moves (<X>,<Y>) co-ordinates and facing <Direction>
        Then the rover falls out of the plateau
        Examples:
        | X | Y | Direction |
        | 0 | 0 | W         |
        | 0 | 0 | S         |
        | 5 | 5 | E         |
        | 5 | 5 | N         |
        | 0 | 5 | N         |
        | 0 | 5 | W         |
        | 5 | 0 | E         |
        | 5 | 0 | S         |
