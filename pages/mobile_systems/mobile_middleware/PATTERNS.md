---
id: PATTERNS
aliases: []
tags: []
index: 34
---

# PATTERNS

Mobile environment can exploit several patterns for different tasks typologies

## ARCHITECTURAL PATTERNS

inherited from non mobile environments, patterns for application's architectures that describes how component should interact
### Level-based

Multi-layer sw architecture with different responsibilities “rigidly” allocated to different layers
### Client-Server

Most frequent pattern in distributed computing: clients use resources and services offered by server
### Peer-to-peer

Any node can dynamically play the role of either client or server; functionality could be more or less symmetric
### Pipeline

Pipeline as chain of processing elements aligned in such a way that output of one is offered as input for the successive one in the chain
### Multi-tier

Client-server architecture where applications are run by a multiplicity of different software agents
### Blackboard

A common knowledge base (blackboard) is updated iteratively by different knowledge sources, starting from including problem specification and then evolving to solution results
### Publish/Subscribe

Different nodes publish data to a broker that can be received from different nodes acting as subscribers

other types of patterns specific for mobile nodes are
- [COMMUNICATION_PATTERNS](mobile_systems/COMMUNICATION_PATTERNS.md)
- [RESOURCE_MANAGEMENT_PATTERNS](mobile_systems/RESOURCE_MANAGEMENT_PATTERNS.md)
- [DISTRIBUTION_PATTERNS](mobile_systems/DISTRIBUTION_PATTERNS.md)
Tre categorie principali:
- per la **distribuzione**
	- [RemoteFacade](mobile_systems/RemoteFacade.md)
	- [DataTransferObj](mobile_systems/DataTransferObj.md)
	- [remoteProxy](mobile_systems/remoteProxy.md)
	- [observer](mobile_systems/observer.md)
- per la **gestione delle risorse** e la **sincronizzazione**
	- [session token](mobile_systems/sessTok.md)
	- [caching](mobile_systems/caching.md)
	- [eager](mobile_systems/eager.md) acquisition
	- [lazy](mobile_systems/lazy.md) acquisition
	- [synchronization](mobile_systems/synch.md)
	- [rendezvous & state transfer](mobile_systems/stateTransfer.md)
- per la **comunicazione**
	- [connection factory](mobile_systems/connFact.md)
	- [multiplexed connection](mobile_systems/multiplexedConn.md)
	- [client-initiated connection for push model](mobile_systems/clientInit.md)

[PREVIOUS](pages/mobile_middleware/MOBILE_MIDDLEWARE_PRINCIPLES.md) [NEXT](mobile_systems/mobile_middleware/DISTRIBUTION_PATTERNS.md)
