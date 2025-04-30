---
id: RADAR
next: "pages/mobile_systems/positioning_systems/ekahau.md"
previous: "pages/mobile_systems/positioning_systems/active_bat.md"
aliases: []
tags: []
index: 23
---

# Radar

Positioning system for indoor environment based on RSSI computation and fingerprinting, it exploits a [scene analisys](mobile_systems/positioning_systems/base_techniques.md#scene%20analysis)

![](assets/mobile_systems/Pasted%20image%2020240609155153.png)

## Offline phase

A central server collects data sent by devices in UDP packets containing orientation and position, manually inserted by users

## Online phase

mobile nodes send periodically UDP packets to the server that compares the packets to the dataset collected in the offline phase
