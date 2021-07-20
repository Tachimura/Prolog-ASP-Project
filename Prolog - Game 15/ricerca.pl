/*
  [Gruppo]: Gianluca Dalmasso, Christian Garro
*/
:- ['algoritmi.pl', 'dominio.pl'].
/*
  Wrapper dell'algoritmo di ricerca
*/
% prova/1 - prova(-Path)
prova(Soluzione):-
    iniziale(StatoIniziale),
    ricerca_soluzione(StatoIniziale, Soluzione).

/*
  Wrapper dell'algoritmo di ricerca che calcola anche il suo tempo di esecuzione 
*/
% prova/2 - prova(-Path, -Timer)
prova(Soluzione, Timer) :-
    statistics(runtime, [Start | _]), % Inizia a salvare il tempo
    prova(Soluzione),
    statistics(runtime, [Stop | _]), % Termina il salvataggio del tempo
    Timer is Stop - Start. % Calcolo tempo di esecuzione