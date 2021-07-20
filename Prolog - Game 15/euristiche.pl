% Clausola RICHIESTA che viene richiamata dall'esterno
% Posso modificare l'euristica utilizzata nel file euristiche.pl
calcola_euristica(Stato, H) :-
    finale(StatoFinale),
    euristica_nblocchi_differenti(Stato, StatoFinale, H).
    %euristica_manhattan(Stato, StatoFinale, H).

% Euristica Blocchi Differenti -----------------------------------------
% Calcola il numero di blocchi che sono differenti nei due stati
euristica_nblocchi_differenti([Head | StatoIniziale], [Head | StatoFinale], H) :-
    !,
    euristica_nblocchi_differenti(StatoIniziale, StatoFinale, H).

euristica_nblocchi_differenti([_ | StatoIniziale], [_ | StatoFinale], H) :-
    euristica_nblocchi_differenti(StatoIniziale, StatoFinale, SubH),
    H is SubH + 1.
euristica_nblocchi_differenti([], [], 0).
% ----------------------------------------------------------------------

% Euristica Manhattan --------------------------------------------------
% Calcola la distanza di manhattan di ogni blocco rispetto alla sua posizione finale
euristica_manhattan(StatoIniziale, StatoFinale, H) :-
    sub_euristica_manhattan(StatoIniziale, StatoIniziale, StatoFinale, H).

sub_euristica_manhattan([], _, _, 0).
sub_euristica_manhattan([Elem | Elements], Configurazione, StatoFinale, H) :-
    posizioneCella(Elem, Configurazione, (XI, YI)),
    posizioneCella(Elem, StatoFinale, (XF, YF)),
    CurrentH is abs(XF - XI) + abs(YF - YI),
    sub_euristica_manhattan(Elements, Configurazione, StatoFinale, SubH),
    H is SubH + CurrentH.
% ----------------------------------------------------------------------