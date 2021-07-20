% Partiamo da (0, 0) per ridurre operazioni
% Le azioni sono i movimenti fatti sulle tessere verso lo spazio vuoto:
% L'inverso delle azioni stampate è lo spostamento dello spazio vuoto (Nord->Sud, Sud->Ovest, ecc...)
% Nord -> la cella SOTTO allo spazio vuoto viene spinta in ALTO
% Sud -> la cella SOPRA allo spazio vuoto viene spinta in BASSO
% Ovest -> la cella a DESTRA dello spazio vuoto viene spinta a SINISTRA
% Est -> la cella a SINISTRA dello spazio vuoto viene spinta a DESTRA

% Regole APPLICABILE ----------------------------------------------------------
% applicabile/2 - applicabile(+Azione, +Stato)

%Questi metodi verificano solo la validità (poi scelgo io se applicare la trasformazione)
% (Su - Nord) se la posizione X della cella vuota è < (num_righe - 1) Uso notazione binaria quindi parto da 0
applicabile(nord, Stato) :-
    posizioneCella(x, Stato, (X, _)),
    num_righe(Righe),
    X < Righe - 1.

% (Giù - Sud) se la posizione X della cella vuota è > 0
applicabile(sud, Stato) :-
    posizioneCella(x, Stato, (X, _)),
    X > 0.

% (Sinistra - Ovest) se la posizione Y della cella vuota è < (num_colonne - 1)
applicabile(ovest, Stato) :-
    posizioneCella(x, Stato, (_, Y)),
    num_colonne(Colonne),
    Y < Colonne - 1.

% (Destra - Est) se la posizione Y della cella vuota è > 0
applicabile(est, Stato) :-
    posizioneCella(x, Stato, (_, Y)),
    Y > 0.

% -----------------------------------------------------------------------------

% Regole TRASFORMA ------------------------------------------------------------
% trasforma/3 - trasforma(+Azione, +StatoPartenza, -StatoFinale)
trasforma(nord, StatoPartenza, StatoFinale) :-
    posizioneCella(x, StatoPartenza, (X, Y)),
    num_colonne(Colonne),
    Index is ((X + 1) * Colonne) + Y,
    nth0(Index, StatoPartenza, Elem),
    scambiaCelle(Elem, x, StatoPartenza, StatoFinale).

trasforma(sud, StatoPartenza, StatoFinale) :- 
    posizioneCella(x, StatoPartenza, (X, Y)),
    num_colonne(Colonne),
    Index is ((X - 1) * Colonne) + Y,
    nth0(Index, StatoPartenza, Elem),
    scambiaCelle(x, Elem, StatoPartenza, StatoFinale).

trasforma(ovest, StatoPartenza, StatoFinale) :- 
    posizioneCella(x, StatoPartenza, (X, Y)),
    num_colonne(Colonne),
    Index is (X * Colonne) + (Y + 1),
    nth0(Index, StatoPartenza, Elem),
    scambiaCelle(Elem, x, StatoPartenza, StatoFinale).

trasforma(est, StatoPartenza, StatoFinale) :- 
    posizioneCella(x, StatoPartenza, (X, Y)),
    num_colonne(Colonne),
    Index is (X * Colonne) + (Y - 1),
    nth0(Index, StatoPartenza, Elem),
    scambiaCelle(x, Elem, StatoPartenza, StatoFinale).

% Regole ULTERIORI ------------------------------------------------------------
% Posso definire come uno stato è definito goal
goal(Stato) :-
    finale(Stato).

% Dato uno stato, ritorna la posizione (X, Y) della cella vuota
posizioneCella(Cella, Stato, (X, Y)) :-
    subPosizioneCella(Cella, Stato, 0, (X, Y)).

subPosizioneCella(Cella, [Cella | _], Cont, (X, Y)) :-
    num_righe(Righe),
    num_colonne(Colonne),
    X is Cont // Righe, % Divisione INTERA
    Y is (Cont mod Colonne), % Resto Divisione
    !.

subPosizioneCella(Cella, [_ | Tail], Cont, (X, Y)):-
    NuovoCont is Cont + 1,
    subPosizioneCella(Cella, Tail, NuovoCont, (X, Y)).


% Scambia il contenuto di due celle all'interno di uno stato
scambiaCelle(Cella1, Cella2, StatoPartenza, StatoFinale) :-
    subScambiaCelle(Cella1, Cella2, false, StatoPartenza, StatoFinale).
%false indica che non c'è ancora stato alcuno spostamento
%true vuol dire che già c'è stato uno spostamento
%dato che ho solo 1 swap da fare, quando scambio un elemento e già ho cambiato l'altro posso chiudere
subScambiaCelle(Cella1, Cella2, false, [Cella2 | StatoPartenza], [Cella1 | SubStatoFinale]) :-
    subScambiaCelle(Cella1, Cella2, true, StatoPartenza, SubStatoFinale), !.
subScambiaCelle(Cella1, Cella2, true, [Cella2 | StatoPartenza], [Cella1 | StatoPartenza]) :- !.

subScambiaCelle(Cella1, Cella2, true, [Cella1 | StatoPartenza], [Cella2 | StatoPartenza]) :- !.
subScambiaCelle(Cella1, Cella2, false, [Cella1 | StatoPartenza], [Cella2 | SubStatoFinale]) :-
    subScambiaCelle(Cella1, Cella2, true, StatoPartenza, SubStatoFinale), !.

subScambiaCelle(Cella1, Cella2, X, [Cella | StatoPartenza], [Cella | SubStatoFinale]) :-
    subScambiaCelle(Cella1, Cella2, X, StatoPartenza, SubStatoFinale).