---
id: blockchain
previous: "pages/sicurezza_informazione/pgp.md"
aliases: []
tags: []
index: 15
---

# Blockchain

E una infrastruttura dati in modalità append only distribuita in una rete di nodi P2P decentralizzata.
Composta da blocchi immutabili resi sicuri da algoritmi di encryption hashing e firma digitale

Per far si che una blockchain funzioni devono essere definiti protocolli per garantire le seguenti funzionalità (*implementate per mezzo di firma digitale e hash*):

- solo transazioni valide possono essere inserite nella blockchain
- tutti i nodi devono concordare sulla stessa blockchain

## Struttura

Ogni elemento della blockchain rispetta la seguente struttura

![](assets/sicurezza_informazione/Pasted%20image%2020240709122716.png)

Dove e presente un header che contiene informazioni riguardanti:

- numero del blocco
- nounce
- timestamp
- l'hash del blocco precedente (*puntatore*)
- l'hash del blocco dati (*e.g. radice del merkle tree*)

Con questa struttura **ogni modifica al blocco $i$ necessita di modificare tutti i blocchi successivi per poter mantenere la catena**

## Data payload (merkle tree)

Il blocco dati e organizzato secondo una struttura ad albero chiamata merkle tree

![](assets/sicurezza_informazione/Pasted%20image%2020240709123120.png)

Dove le foglie dell'albero contengono i dati effettivi e i relativi genitori l'hash dei rispettivi figli, la radice dell'albero e mantenuta nel header del blocco

## Verifica della base dati

La verifica della base dati può essere fatta chiedendo alla maggioranza dei nodi che ospitano la block chain

## Inserimento di nuovi blocchi

Il protocollo di inserimento di nuovi dati e una procedura critica che deve essere svolta attraverso un consenso della maggioranza

## Esempio applicativo: bitcoin

Sistema basato su blockchain per le transazioni economiche anonime fra utenti, ogni nodo mantiene nella sua blockchain le informazioni riguardo le transazioni che sono state convalidate.

### Terminologia

- **Address**: Stringa alfanumerica associata a un singolo utente e a una coppia di chiavi
- **Transaction**: l'azione di scambio di valuta fra due utenti
- **Block**: L'elemento base della blockchain che contiene un insieme immutabile di transazioni
- **Network**: rete P2P dove ogni nodo gioca il ruolo di client e di server
- **Miner**: nodo della rete che inserisce all'interno della blockchain nuove transazioni per mezzo della cosiddetta prof of work
- **Wallet**: nodo della rete che contiene chiavi identita e consente di fare transazioni

![](assets/sicurezza_informazione/Pasted%20image%2020240709153830.png)

### Protocollo di consenso

I nodi devono poter espletare, alla richiesta di inserimento di un blocco nella blockchain un protocollo con le seguenti caratteristiche:

- deve terminare
- i nodi concordano ordine e validità dei nuovi blocchi nella blockchain

Bitcoin implementa la seguente soluzione:

-  le nuove transazioni vengono inviate a tutti i nodi, che le verificano e le mantengono in un blocco temporaneo
- periodicamente un nodo viene selezionato e il suo blocco viene inviato a tutti gli altri
- il blocco viene accettato se tutte le transazioni sono corrette e veritiere
- il blocco viene inserito nella blockchain

### Cosa può fare un attaccante

Un attaccante può tentare una doppia spesa se viene selezionato per l'invio del blocco agli atri in cui non e presente la transazione del nodo in questione verso un altro utente

Il problema non e risolvibile può essere arginato scegliendo nodi che hanno probabilità più alta di essere onesti.

DI conseguenza la selezione di un nodo non e randomica ma segue un processo di selezione, incentivato da due fattori:

- **block reward**: il nuovo blocco contiene una transazione speciale che genera del denaro, il nodo selezionato decide il destinatario
- **transaction fees**: quando avviene una transazione il mandante puo decidere di ridurre il valore in output versato, la differenza va al nodo che inserisce il blocco con quella transazione nella blockchain

Per far funzionare un simile sistema e necessario che il processo di selezione sia basato su un qualcosa che nessun nodo puo monopolizzare, in bitcoin si usa la potenza di calcolo (**proof of work**)

### Processo di selezione: proof of work

Nel processo di selezione i nodi che concorrono per inserire il blocco devono risolvere un hash puzzle ovvero **trovare un intero nounce tale per cui l'hash del blocco sia inferiore a un certo valore**

[<](pages/sicurezza_informazione/pgp.md)
