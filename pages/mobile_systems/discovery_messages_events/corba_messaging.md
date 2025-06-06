---
id: CORBA_MESSAGING
aliases: []
tags: []
index: 62
next: pages/mobile_systems/discovery_messages_events/extensible_messaging_and_presence_protocol.md
previous: pages/mobile_systems/discovery_messages_events/java_message_service.md
---

# [CORBA](https://www.corba.org/) MESSAGING

Also the CORBA project offers support for messaging infrastructure, the messaging infrastructure is made of 2 principal components:



- **Asynchronous Messaging Interface (AMI)** Possibility of both polling and callback (*callback is passed as CORBA object, therefore even not in the same addressing space of client*)
- **Time Independent Invocation (TII)** to specify which CORBA objects play the role of router for the message ( *implementation of the [store and forward](pages/mobile_systems/discovery_messages_events/messaging.md#protocol%20aspects) principle* )

## [LOCATORS](pages/mobile_systems/discovery_messages_events/messaging.md#locators) IN CORBA

locators are implemented trough Interoperable Object Reference (IOR), with different profiles depending on binding protocol

## Callback vs polling

For the callback approach the application defines a callback function to be called

```c
voidsendpoll_somma (in int i, in int j)
voidpollsomma (out int success, out int somma)
```

![](assets/mobile_systems/Pasted%20image%2020240616160030.png)

For the Polling approach the application decides when to interrogate the CORBA support to retrieve the operation result:

```c
voidsendpoll_somma (in int i, in int j)
voidpollsomma (out int success, out int somma)
```

![](assets/mobile_systems/Pasted%20image%2020240616160048.png)

[<](pages/mobile_systems/discovery_messages_events/java_message_service.md)[>](pages/mobile_systems/discovery_messages_events/extensible_messaging_and_presence_protocol.md)
