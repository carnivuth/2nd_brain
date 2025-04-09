---
id: pgp
aliases: []
tags: []
index: 14
---

# Pretty good privacy (PGP)

Protocollo di sicurezza pensato per scambiare documenti in modo sicuro (*email e file storage*), compatibile con differenti sistemi di messaggistica email, fornisce anche servizi di autenticazione per mezzo di meccanismi di [firma digitale](protocolli.md#FIRMA%20DIGITALE).

## PGP e la riservatezza

per lo scambio di informazioni viene applicato un [cifrario ibrido](cifrari_asimmetrici.md#CIFRARIO%20IBRIDO) con [rsa](sicurezza_informazione/rsa.md), i messaggi scambiati contengono il testo cifrato, la chiave k  per la cifratura simmetrica che a sua volta viene cifrata con la chiave pubblica della destinazione.

## PGP e autenticazione 

L'autenticazione si basa su hashing e signing di messaggi

## cifratura

la cifratura simmetrica avviene per mezzo del [CFB](modalita_cifratura.md#CIPHER%20FEEDBACK%20(CFB)).

## formato dei messaggi

I messaggi scambiati contengono:

- message digest (*hash del messaggio*)
- timestamp (*non sicuro*)
- identificatore della chiave pubblica del destinatario o del firmatario (*a seconda del pacchetto*)

## Gestione delle chiavi: il portachiavi

PGP non prevede nessuna entità centralizzata per l'autenticazione, invece ogni utente si predispone di 2 portachiavi (*uno per le chiavi private l'altro per le pubbliche*) in cui conservare le chiavi utilizzate per il protocollo PGP.

Le chiavi pubbliche possono essere ottenute:

- dal possessore della chiave stessa
- da un intermediario

A ogni chiave e associato un livello di fiducia che può dipendere:

- dal canale di comunicazione in cui la chiave e stata scambiata
- dal possessore
- dall'intermediario che ha fornito la chiave

E previsto inoltre un meccanismo di fiducia anche per i certificati mostrati dagli intermediari.

[PREVIOUS](kerberos.md) [NEXT](sicurezza_informazione/blockchain.md)