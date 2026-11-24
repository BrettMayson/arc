# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

- ISR menu for the remote designators
- "Show Sensor Targets" ISR setting
- Unlock camera option in the ISR camera menu
- Localization for compat item names, actions and keybinds
- GitHub release workflow

### Changed

- "Move to grid" is now released when the camera is moved, "Lock to grid" stays locked
- Cases go into the vest or uniform when the backpack is full, before being dropped on the ground

### Fixed

- Deploying a UAV now connects the terminal to it
- Signal was calculated from near ground level instead of the terminal
- Rain attenuation only applied to the last segment of the signal path
- Sensor targets and laser codes not showing in ISR
- Disabling ISR had no effect on UAVs
- ISR not working for the gunner when another player is flying the UAV
- UAVs without ARC config never losing signal, and auto adjust choosing the wrong frequency and power
- Switching directly between UAVs kept tracking the first one
- Mini UAVs being lost when grabbed with a full inventory
- RC40 battery charge increasing every time it was fired
- RC40 UAVs possibly spawning on every machine in multiplayer
- Two players being able to pack the same UAV, and cases duplicating when moved while deploying
- UAV crew being left behind after packing
- IED drone pylons not updating on servers that restrict remote execution
- Entering the gunner view resetting marker channels for everyone
- Pack action showing on UAVs that can't be packed
- JIP clients resetting UAV frequency and power

## [1.5.3] - 2026-09-14

### Added

- Proper power settings added to the Bustard

### Fixed

- Packing issues with the Bustard
