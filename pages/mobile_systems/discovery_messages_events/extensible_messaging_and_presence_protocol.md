---
id: EXTENSIBLE_MESSAGING_AND_PRESENCE_PROTOCOL
next: "pages/mobile_systems/discovery_messages_events/events.md"
previous: "pages/mobile_systems/discovery_messages_events/corba_messaging.md"
aliases: []
tags: []
index: 63
---

# Extensible messaging and presence protocol (xmpp)

Protocol develop for large scale distributed application to notify if a user is connected to the application (*online status*).It's  a [pub/sub](pages/mobile_systems/iot/pub_sub_model.md) protocol with messages codified in xml format

XMPP is based on the client server model of interaction, where client send XML encoded data flows to the server after parameter negotiation.

## Interaction semantics

The protocol manages one-to-one and one-to-many communication

- message stanza one-to-one mechanism
- presence stanza one-to-many mechanism based on pub/sub
- info/query stanza request-response mechanism

## Not specific designed for the purpose

XMPP is not designed for message exchange but given the popularity is a good candidate with some major flaws

- XML format is expensive for constrained devices
- high cost for message interaction cause connection needs to be reestablished with each interaction

to address this flows Android use a proprietary implementation to address this issues

![](assets/mobile_systems/Pasted%20image%2020240616164345.png)
[<](pages/mobile_systems/discovery_messages_events/corba_messaging.md) [>](pages/mobile_systems/discovery_messages_events/events.md)
