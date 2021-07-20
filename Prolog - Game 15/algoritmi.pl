:- ['euristiche.pl'].
% Clausola RICHIESTA, che viene richiamata dall'esterno.
ricerca_soluzione(StatoIniziale, Soluzione) :-
    %%%%%%%%%%%%%%%%%%%%%%%%
    % ALGORITMI 'STANDARD' %
    %%%%%%%%%%%%%%%%%%%%%%%%
    %depthfirst(StatoIniziale, RevStatiSoluzione),
    %breadthfirst(StatoIniziale, RevStatiSoluzione),
    %iterativedeepening(StatoIniziale, RevStatiSoluzione),
    %%%%%%%%%%%%%%%%%%%%%%%
    % ALGORITMI EURISTICI %
    %%%%%%%%%%%%%%%%%%%%%%%
    %astar(StatoIniziale, RevStatiSoluzione),
    %IDAstar ritorna già la soluzione come lista di azioni
    idastar(StatoIniziale, Soluzione),
    nl. % Va a capo (linea di testo nel terminale)
    % Se uso depthfirst, breadthfirst, iterativedeepening o astar mi serve decommentare le 2 righe qua sotto:
    % La soluzione è al contrario: [StatoFinale | ... | StatoIniziale], quindi faccio reverse
    %reverse(RevStatiSoluzione, StatiSoluzione),
    % Trasformo la soluzione da lista di stati a lista di azioni
    %map_soluzione_azione(StatiSoluzione, Soluzione).
    
% Clausole di utilità:

% Trasformazione Stati -> Azioni
% Altrimenti mi prendo la trasformazione per passare da Stato1 a Stato2
map_soluzione_azione([Stato1, Stato2 | Tail], [Azione | Soluzione]) :-
    trasforma(Azione, Stato1, Stato2),
    map_soluzione_azione([Stato2 | Tail], Soluzione).
% Se c'è un solo stato, vuol dire che è quello finale e quindi ho finito
map_soluzione_azione([_], []).

% Movimento che tiene conto anche degli stati visitati
muovi_controllato(Stato, StatiVisitati, NuovoStato) :-
    findall(Azione, applicabile(Azione, Stato), AzioniApplicabili),
    member(Azione, AzioniApplicabili),
    trasforma(Azione, Stato, NuovoStato),
    \+member(NuovoStato, StatiVisitati).

% Nota % -------------- %
% Esponenziale -> BLEAH |
% Lineare -> OTTIMO     |
% --------------------- %

% RICERCA IN PROFONDITA --------------------------------------------------------------------------------
% Profondità: d (MaxProfondita)
% Branching factor: b
% Complessita temporale -> nel caso peggiore cerco tutto l'albero -> ESPONENZIALE alla profondità e branching factor (O(b^d))
% Complessita spaziale -> LINEARE (O(d))
% Avendo una profondità massima, non posso assicurare la completezza (la assicuro rimuovendo la profondità massima)
% Non assicuro nemmeno l'ottimalità poichè magari c'è una soluzione migliore a profondità più piccola.
depthfirst(StatoIniziale, Soluzione) :-
    write("Algoritmo selezionato: DepthFirst"),
    MaxProfondita is 10,
    depthfirst_alg(StatoIniziale, [StatoIniziale], MaxProfondita, Soluzione).

depthfirst_alg(Stato, _, _, [Stato]) :- goal(Stato).
depthfirst_alg(Stato, StatiVisitati, MaxProfondita, [Stato | Path]):-
    NuovaMaxProfondita is MaxProfondita - 1,
    NuovaMaxProfondita > 0,
    muovi_controllato(Stato, StatiVisitati, NuovoStato),
    depthfirst_alg(NuovoStato, [NuovoStato | StatiVisitati], NuovaMaxProfondita, Path).
% ----------------------------------------------------------------------------------------------------

% RICERCA IN LARGHEZZA --------------------------------------------------------------------------------
% Profondità: d
% Branching factor: b
% Complessita temporale -> nel caso peggiore cerco tutto l'albero -> ESPONENZIALE alla profondità e branching factor (O(b^d))
% Complessita spaziale -> dobbiamo memorizzare tutti i vecchi percorsi, ESPONENZIALE (O(b^d))
% Garantisce la completezza, se una soluzione è presente, la trova di sicuro
% Garantisce l'ottimalità, la prima soluzione è sicuramente quella ottimale (se presumo che ogni mossa costi 1)
breadthfirst(StatoIniziale, Soluzione) :-
    write("Algoritmo selezionato: BreadthFirst"),
    breadthfirst_alg([[StatoIniziale]], Soluzione).

breadthfirst_alg([[Stato | Percorso]|_], [Stato | Percorso]) :- goal(Stato).
breadthfirst_alg([Percorso | Percorsi], Soluzione) :-
    expand_breadthfirst(Percorso, PercorsoEspanso),
    append(Percorsi, PercorsoEspanso, NuoviPercorsi),
    breadthfirst_alg(NuoviPercorsi, Soluzione).

expand_breadthfirst([Stato | Percorso], PercorsoEspanso) :-
    findall([NuovoStato, Stato | Percorso], muovi_controllato(Stato, Percorso, NuovoStato), PercorsoEspanso).
% ----------------------------------------------------------------------------------------------------
    
% RICERCA ITERATIVE DEEPENING --------------------------------------------------------------------------------
% Profondita: d
% Branching factor: b
% Complessita Temporale: Esponenziale alla profondità e al branching factor (O(b^d))
% Nota: Qua sembra andare persino peggio, perchè eseguiamo più volte l'algoritmo, ma alla fine è 2*(b^d), costante trascurabile
% Complessita Spaziale: LINEARE (O(d)) (Salvo solo il percorso attuale)
% Garantisce la completezza, cerca tutte le possibile soluzioni
% Garantisce l'ottimalità, la prima soluzione è sicuramente quella ottimale.
iterativedeepening(StatoIniziale, Soluzione) :-
    write("Algoritmo selezionato: Iterative Deepening"),
    iterativedeepening_alg(StatoIniziale, Soluzione).

% Rieseguo più volte finchè non trova soluzione, se non c'è, l'algoritmo gira all'infinito
iterativedeepening_alg(Stato, Soluzione) :-
    cerca_percorso(Stato, StatoFinale, Soluzione),
    goal(StatoFinale).

% Mi cerco un percorso a partire dallo stato finale, in questo modo posso generare percorsi più o meno lunghi
cerca_percorso(Stato, Stato, [Stato]).
cerca_percorso(Stato, StatoFinale, [StatoFinale | Soluzione]) :-
    cerca_percorso(Stato, PenultimoStato, Soluzione),
    muovi_controllato(PenultimoStato, Soluzione, StatoFinale).
% ----------------------------------------------------------------------------------------------------


% RICERCA CON A-STAR --------------------------------------------------------------------------------
% Profondità: d (MaxProfondita)
% Branching factor: b

% Per le complessità di A-star, è difficile fare una stima, dipende principalmente dalla precisione
% che ha l'euristica utilizzata, nel caso peggiore comunque è:
% Complessita temporale -> nel caso peggiore cerco tutto l'albero -> ESPONENZIALE alla profondità e branching factor (O(b^d))
% Complessita spaziale -> ESPONENZIALE (O(b^d))
% Garantisce la completezza, cerca tutte le possibile soluzioni visitando il numero minimo di nodi
% Garantisce l'ottimalità, se l'euristica è ammissibile
astar(StatoIniziale, Soluzione) :-
    write("Algoritmo selezionato: A-Star"),
    G is 0,
    calcola_euristica(StatoIniziale, H),
    % Soluzione/Costo(G)/Euristica(H)
    %astar_alg([[StatoIniziale]/G/H], Soluzione/GFinale/HFinale). % HFinale in teoria vale 0
    astar_alg([[StatoIniziale]/G/H], Soluzione/_/_).
% Termino se ho trovato il goal
astar_alg([Soluzione | _], Soluzione) :-
    % Se il primo nodo del nostro percorso è proprio il nostro goal, allora sono a posto
    Soluzione = [Stato | _]/_/_,
    goal(Stato),
    % Se metto la cut, non mi trova altre soluzioni, ma dato che la prima è la ottimale ci sta
    !.

astar_alg([BestPercorso | Percorsi], Soluzione) :-
    %Essendo Percorsi una lista ordinata so che in posizione 0 c'è il migliore (F più piccola)
    expand_astar(BestPercorso, NuoviPercorsi),
    mergeOpen(NuoviPercorsi, Percorsi, MergedPercorsi),
    astar_alg(MergedPercorsi, Soluzione).

% Cerco i successori
expand_astar(Percorso, NuoviPercorsi) :-
    findall(NuovoPercorso, move_astar(Percorso, NuovoPercorso), NuoviPercorsi).

% Eseguo il movimento
move_astar([Stato | Percorso]/G/_, [NuovoStato, Stato | Percorso]/NuovoG/NuovoH) :-
    muovi_controllato(Stato, Percorso, NuovoStato),
    NuovoG is G + 1,
    calcola_euristica(NuovoStato, NuovoH).

% Funzioni di utilità di A-star

/* 
  Merge della lista dei successori con la lista Open, mantenendola ordinata.
  Se un elemento della lista dei successori fa parte della lista Open non lo aggiungo alla lista Open 
*/
% mergeOpen/3 - mergeOpen(+ListaSuccessori, +ListaOpen, +ListaOpenOrdinata)
mergeOpen([Percorso/G/H | Percorsi], Open, OpenOrdered) :-
    \+member([Percorso/_/_], Open),
    !,
    % Facendo l'inserimento in modo ordinato non avremo bisogno di eseguire la sort dopo. (Prestazioni notevolente migliorate)
    insertInOrder(Percorso/G/H, Open, OpenExtended),
    mergeOpen(Percorsi, OpenExtended, OpenOrdered).
mergeOpen([_ | Percorsi], Open, OpenOrdered) :-
    mergeOpen(Percorsi, Open, OpenOrdered). 
mergeOpen([], Open, Open).

/*
  Ordino i nodi in modo crescente di F = G + H
*/
% inserInOrder/3 - insertInOrder(+ListaSuccessori, +ListaOpen, -OrderedList)
insertInOrder(Stato/G/H, [Head/G2/H2 | OpenTail], [Stato/G/H, Head/G2/H2 | OpenTail]) :-
    F is G + H,
    F2 is G2 + H2,
    F < F2,
    % In questo caso, lo stato ha F più piccola di Head (che è l'elemento con F + piccolo in OpenTail) e quindi lo metto prima
    !.
insertInOrder(Stato, [Head | OpenTail], [Head | SubOpenTail]) :-
    insertInOrder(Stato, OpenTail, SubOpenTail).
insertInOrder(Stato, [], [Stato]).
%%%

% RICERCA CON IDA-STAR --------------------------------------------------------------------------------
% Tutto come A*, ma complessità spaziale è O(d) come la ricerca in profondità

% Wrapper IDA*
idastar(StatoIniziale, Soluzione):-
    write("Algoritmo selezionato: IDA-Star"),
    calcola_euristica(StatoIniziale, InitialThreshold),
    idastar_alg(StatoIniziale, Soluzione, [StatoIniziale], 0, InitialThreshold).
    
% Algoritmo di IDA*
idastar_alg(StatoIniziale, Soluzione, NodiVisitati, G, Threshold):-
    idastar_search(StatoIniziale, Soluzione, NodiVisitati, G, Threshold);
    % Rieseguo l'algoritmo cambiando la threshold
    findall(F, idastar_threshold(F), ThresholdList),
    exclude(>=(Threshold), ThresholdList, OverThresholdList),
    min_list(OverThresholdList, NewThreshold),
    retractall(idastar_threshold(_)),
    idastar_alg(StatoIniziale, Soluzione, NodiVisitati, G, NewThreshold).

% Ricerca di IDA*
idastar_search(Stato, [], _, _, _):-
    goal(Stato), !.

idastar_search(Stato, [Azione | Azioni], NodiVisitati, G, Threshold):-
    applicabile(Azione, Stato),
    trasforma(Azione, Stato, NuovoStato), 
    \+member(NuovoStato, NodiVisitati),
    calcola_euristica(NuovoStato, NS_H),
    NS_G is G + 1,
    NS_F is NS_G + NS_H,
    assert(idastar_threshold(NS_F)),
	NS_F =< Threshold,
    idastar_search(NuovoStato, Azioni, [NuovoStato | NodiVisitati], NS_G, Threshold).