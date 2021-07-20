:- ['regole.pl'].
% -----------------------------------------------------------------------------------------
% iniziale e finale devono avere lo stesso formato di numero righe e numero colonne ovvero:
% numero_righe di iniziale deve essere uguale a numero_righe di finale
% numero_colonne di iniziale deve essere uguale a numero_colonne di finale
% -----------------------------------------------------------------------------------------
% Posso scegliere un numero di righe/colonne preferito
% Per avere proprio il gioco del 15, bisogna impostarle entrambe a 4 
num_righe(4).
num_colonne(4).
% -----------------------------------------------------------------------------------------
% Usare la x per indicare lo spazio vuoto
iniziale(
    [
        3, 5, 13, 6,
        8, x, 12, 14,
        2, 9, 10, 15,
        7, 4, 11, 1
    ]).
/*
finale( %1
    [
        3, 5, 13, 6,
        8, 12, x, 14,
        2, 9, 10, 15,
        7, 4, 11, 1
    ]).
finale( %3
    [
        3, 5, 13, 6,
        8, 12, 10, 14,
        2, x, 9, 15,
        7, 4, 11, 1
    ]).
finale( %5
    [
        3, 5, 13, 6,
        8, 12, 10, 14,
        7, 2, 9, 15,
        x, 4, 11, 1
    ]).
finale( %7
    [
        3, 5, 13, 6,
        8, 12, 10, 14,
        7, 2, 9, 15,
        4, 11, x, 1
    ]).
finale( %10
    [
        3, 5, 13, 6,
        8, 12, 10, x,
        7, 2, 9, 14,
        4, 11, 1, 15
    ]).
finale( %13
    [
        3, x, 5, 6,
        8, 12, 13, 10,
        7, 2, 9, 14,
        4, 11, 1, 15
    ]).
finale( %15
    [
        8, 3, 5, 6,
        x, 12, 13, 10,
        7, 2, 9, 14,
        4, 11, 1, 15
    ]).
finale( %18
    [
        8, 3, 5, 6,
        12, 2, 13, 10,
        7, 9, x, 14,
        4, 11, 1, 15
    ]).
finale( %20
    [
        8, 3, 5, 6,
        12, 2, 10, x,
        7, 9, 13, 14,
        4, 11, 1, 15
    ]).
*/
finale( %25
    [
        8, x, 10, 5,
        12, 3, 2, 6,
        7, 9, 13, 14,
        4, 11, 1, 15
    ]).