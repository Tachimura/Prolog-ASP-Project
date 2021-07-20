%*
 [Gruppo]: Dalmasso Gianluca, Garro Christian

 You were expecting the ASP Project, but it was me, DIO!
*%

%-----------------------------------------------------------------------
%-----------------------------------------------------------------------
%-------------------------- DATA SET REALE -----------------------------
%-----------------------------------------------------------------------
%-----------------------------------------------------------------------
% Elenco delle materie
materia(presentazione_master ;
        blocco_libero ;
        project_Management ;
        fondamenti_di_ICT_e_Paradigmi_di_Programmazione ;
        linguaggi_di_markup ;
        la_gestione_della_qualita;
        ambienti_di_sviluppo_e_linguaggi_client_side_per_il_web ;
        progettazione_grafica_e_design_di_interfacce ;
        progettazione_di_basi_di_dati ;
        strumenti_e_metodi_di_interazione_nei_Social_media ;
        acquisizione_ed_elaborazione_di_immagini_statiche_grafica ;
        accessibilita_e_usibilita_nella_progettazione_multimediale ;
        marketing_digitale ;
        elementi_di_fotografia_digitale ;
        risorse_digitali_per_il_progetto_Collaborazione_e_documentazione ;
        tecnologie_server_side_per_il_web ;
        tecniche_e_strumenti_di_Marketing_digitale ;
        introduzione_al_social_media_management ;
        acquisizione_ed_elaborazione_del_suono ;
        acquisizione_ed_elaborazione_di_sequenze_di_immagini_digitali ;
        comunicazione_pubblicitarie_e_comunicazione_pubblica ;
        semiologia_e_multimedialita ;
        crossmedia_Articolazione_delle_scritture_multimediali ;
        grafica_3D ;
        progettazione_e_sviluppo_di_applicazioni_web_su_dispositivi_mobili_1 ;
        progettazione_e_sviluppo_di_applicazioni_web_su_dispositivi_mobili_2 ;
        la_gestione_delle_risorse_umane ;
        i_vincoli_giuridici_del_progetto_Diritto_dei_media).
%-----------------------------------------------------------------------
% Elenco dei docenti
docente(docente_generico ;
        muzzetto ;
        pozzato ;
        gena ;
        tomatis ;
        micalizio ;
        terranova ; 
        mazzei ;
        giordani ;
        zanchetta ;
        vargiu ;
        boniolo ;
        damiano ;
        suppini ;
        valle ;
        ghidelli ;
        gabardi ;
        santangelo ;
        taddeo ;
        gribaudo ;
        schifanella ;
        lombardo ;
        travostino).
%-----------------------------------------------------------------------
% Elenco degli insegnamenti
insegnamento(presentazione_master, docente_generico, 2 ; % Slot di presentazione del master
             blocco_libero, docente_generico, 12 ;
             project_Management, muzzetto, 14 ;
             fondamenti_di_ICT_e_Paradigmi_di_Programmazione, pozzato, 14 ;
             linguaggi_di_markup, gena, 20 ;
             la_gestione_della_qualita, tomatis, 10 ;
             ambienti_di_sviluppo_e_linguaggi_client_side_per_il_web, micalizio, 20 ;
             progettazione_grafica_e_design_di_interfacce, terranova, 10 ;
             progettazione_di_basi_di_dati, mazzei, 20 ;
             strumenti_e_metodi_di_interazione_nei_Social_media, giordani, 14 ;
             acquisizione_ed_elaborazione_di_immagini_statiche_grafica, zanchetta, 14 ;
             accessibilita_e_usibilita_nella_progettazione_multimediale, gena, 14 ;
             marketing_digitale, muzzetto, 10 ;
             elementi_di_fotografia_digitale, vargiu, 10 ;
             risorse_digitali_per_il_progetto_Collaborazione_e_documentazione, boniolo, 10 ;
             tecnologie_server_side_per_il_web, damiano, 20 ;
             tecniche_e_strumenti_di_Marketing_digitale, zanchetta, 10 ;
             introduzione_al_social_media_management, suppini, 14 ;
             acquisizione_ed_elaborazione_del_suono, valle, 10 ;
             acquisizione_ed_elaborazione_di_sequenze_di_immagini_digitali, ghidelli, 20 ;
             comunicazione_pubblicitarie_e_comunicazione_pubblica, gabardi, 14 ;
             semiologia_e_multimedialita, santangelo, 10 ;
             crossmedia_Articolazione_delle_scritture_multimediali, taddeo, 20 ;
             grafica_3D, gribaudo, 20 ;
             progettazione_e_sviluppo_di_applicazioni_web_su_dispositivi_mobili_1, pozzato, 10 ;
             progettazione_e_sviluppo_di_applicazioni_web_su_dispositivi_mobili_2, schifanella, 10 ;
             la_gestione_delle_risorse_umane, lombardo, 10 ;
             i_vincoli_giuridici_del_progetto_Diritto_dei_media, travostino, 10).
%-----------------------------------------------------------------------
% Elenco delle propedeuticità
% propedeutico(InsegnamentoPrecedente, InsegnamentoSuccessivo)
propedeutico(fondamenti_di_ICT_e_Paradigmi_di_Programmazione, ambienti_di_sviluppo_e_linguaggi_client_side_per_il_web ;
             ambienti_di_sviluppo_e_linguaggi_client_side_per_il_web, progettazione_e_sviluppo_di_applicazioni_web_su_dispositivi_mobili_1 ;
             progettazione_e_sviluppo_di_applicazioni_web_su_dispositivi_mobili_1, progettazione_e_sviluppo_di_applicazioni_web_su_dispositivi_mobili_2 ;
             progettazione_di_basi_di_dati, tecnologie_server_side_per_il_web ;
             linguaggi_di_markup ; ambienti_di_sviluppo_e_linguaggi_client_side_per_il_web ;
             project_Management, strumenti_e_metodi_di_interazione_nei_Social_media ;
             project_Management, progettazione_grafica_e_design_di_interfacce ;
             acquisizione_ed_elaborazione_di_immagini_statiche_grafica, elementi_di_fotografia_digitale ;
             elementi_di_fotografia_digitale, acquisizione_ed_elaborazione_di_sequenze_di_immagini_digitali ;
             acquisizione_ed_elaborazione_di_immagini_statiche_grafica, grafica_3D).
%-----------------------------------------------------------------------
% Elenco delle propedeuticità2 (per vincolo ausiliario)
% propedeutico2(InsegnamentoPrecedente, InsegnamentoSuccessivo)
propedeutico2(fondamenti_di_ICT_e_Paradigmi_di_Programmazione, progettazione_di_basi_di_dati ;
              tecniche_e_strumenti_di_Marketing_digitale, introduzione_al_social_media_management ;
              comunicazione_pubblicitarie_e_comunicazione_pubblica, la_gestione_delle_risorse_umane ;
              tecnologie_server_side_per_il_web, progettazione_e_sviluppo_di_applicazioni_web_su_dispositivi_mobili_1).
%-----------------------------------------------------------------------
%-----------------------------------------------------------------------
%-----------------------------------------------------------------------
%-----------------------------------------------------------------------

% -------------------------------------------------------------------------------------------------------
% ----- Queste mi permettono di trasformare la stringa del giorno in un numero intero confrontabile -----
% -------------------------------------------------------------------------------------------------------
giorno(lunedi, 1).                                                                                % -----
giorno(martedi, 2).                                                                               % -----
giorno(mercoledi, 3).                                                                             % -----
giorno(giovedi, 4).                                                                               % -----
giorno(venerdi, 5).                                                                               % -----
giorno(sabato, 6).                                                                                % -----
% -------------------------------------------------------------------------------------------------------

% Ogni slot lezione viene considerato da 2 ore.
% Lunedì...Venerdì hanno 4 slot lezioni (totale 8 ore)
slot_lezione(1..4).
% Sabato ha solo 3 slot lezioni (totale 6 ore)
slot_lezione_sabato(1..3).

% giorno_settimana(N_Settimana, Giorno)
giorno_settimana((1..6 ; 8..15 ; 17..24), (venerdi ; sabato)).
% Settimana 7 e 16 sono full-time
giorno_settimana((7 ; 16), (lunedi ; martedi ; mercoledi ; giovedi ; venerdi ; sabato)).

% Assegnamento blocchi ai giorni con 4 blocchi
4 { assegna(Settimana, Giorno, Slot, Materia, Docente) :
                insegnamento(Materia, Docente, _), slot_lezione(Slot)
        } 4 :-
        giorno_settimana(Settimana, Giorno), Giorno != sabato.

% Assegnamento blocchi al sabato che ha solo 3 blocchi
3 { assegna(Settimana, sabato, Slot, Materia, Docente) :
                insegnamento(Materia, Docente, _), slot_lezione_sabato(Slot)
        } 3 :-
        giorno_settimana(Settimana, sabato).

% ---------------------------------------------------------------------------------------------------------
% ----- Queste mi permettono di prendere la prima, seconda, ultima e penultima lezione di una materia -----
% ---------------------------------------------------------------------------------------------------------
% SECONDA E PENULTIMA LEZIONE SONO MOLTO COSTOSE
% SERVONO SOLO PER I VINCOLI AUSPICABILI 2 E 5
% SE NON SI VOGLIONO, CONVIENE COMMENTARE ANCHE QUESTI
% -----------------------------------------------------------------------------
% -----------------------------------------------------------------------------
%*
1 { seconda_lezione(Materia, SettimanaX, GiornoX, SlotX) :
                assegna(SettimanaX, GiornoX, SlotX, Materia, _),
                giorno(GiornoX, GiornoValX),
                (100 * SettimanaX + 10 * GiornoValX + SlotX) = X
        } 1 :- 
        % La presentazione_master non ha altre lezioni
        materia(Materia), Materia != presentazione_master, Materia != blocco_libero,
        prima_lezione(Materia, SettMin, GiornoMin, SlotMin),
        giorno(GiornoMin, GiornoMinVal),
        X = #min{
                (Sett * 100 + GiornoVal * 10 + Slot) :
                        assegna(Sett, Giorno, Slot, Materia, _), giorno(Giorno, GiornoVal),
                        (Sett * 100 + GiornoVal * 10 + Slot) != (SettMin * 100 + GiornoMinVal * 10 + SlotMin)
                }.

1 { penultima_lezione(Materia, SettimanaX, GiornoX, SlotX) :
                assegna(SettimanaX, GiornoX, SlotX, Materia, _),
                giorno(GiornoX, GiornoValX),
                (100 * SettimanaX + 10 * GiornoValX + SlotX) = X
        } 1 :- 
        % La presentazione_master non ha altre lezioni
        materia(Materia), Materia != presentazione_master, Materia != blocco_libero,
        ultima_lezione(Materia, SettMax, GiornoMax, SlotMax),
        giorno(GiornoMax, GiornoMaxVal),
        X = #max{
                (Sett * 100 + GiornoVal * 10 + Slot) :
                        assegna(Sett, Giorno, Slot, Materia, _), giorno(Giorno, GiornoVal),
                        (Sett * 100 + GiornoVal * 10 + Slot) != (SettMax * 100 + GiornoMaxVal * 10 + SlotMax)
                }.
*%
% -----------------------------------------------------------------------------
% -----------------------------------------------------------------------------

% DATO CHE DA MOLTI PROBLEMI POSSO CRARE SECONDA/PENULTIMA LEZIONE APPOSITO PER I CORSI CHE LO RICHIEDONO
% Il vincolo auspicabile 2, richiede la PENULTIMA_LEZIONE DI: fondamenti_di_ICT_e_Paradigmi_di_Programmazione
1 { penultima_lezione(fondamenti_di_ICT_e_Paradigmi_di_Programmazione, SettimanaX, GiornoX, SlotX) :
                assegna(SettimanaX, GiornoX, SlotX, fondamenti_di_ICT_e_Paradigmi_di_Programmazione, _),
                giorno(GiornoX, GiornoValX),
                (100 * SettimanaX + 10 * GiornoValX + SlotX) = X
        } 1 :- 
        ultima_lezione(fondamenti_di_ICT_e_Paradigmi_di_Programmazione, SettMax, GiornoMax, SlotMax),
        giorno(GiornoMax, GiornoMaxVal),
        X = #max{
                (Sett * 100 + GiornoVal * 10 + Slot) :
                        assegna(Sett, Giorno, Slot, fondamenti_di_ICT_e_Paradigmi_di_Programmazione, _),
                        giorno(Giorno, GiornoVal),
                        (Sett * 100 + GiornoVal * 10 + Slot) != (SettMax * 100 + GiornoMaxVal * 10 + SlotMax)
                }.

%
% Il vincolo auspicabile 5, richiede la SECONDA_LEZIONE degli elementi di destra in propedeutico2.
% progettazione_di_basi_di_dati
1 { seconda_lezione(Materia, SettimanaX, GiornoX, SlotX) :
                assegna(SettimanaX, GiornoX, SlotX, Materia, _),
                giorno(GiornoX, GiornoValX),
                (100 * SettimanaX + 10 * GiornoValX + SlotX) = X
        } 1 :- 
        Materia = progettazione_di_basi_di_dati,
        prima_lezione(Materia, SettMin, GiornoMin, SlotMin),
        giorno(GiornoMin, GiornoMinVal),
        X = #min{
                (Sett * 100 + GiornoVal * 10 + Slot) :
                        assegna(Sett, Giorno, Slot, Materia, _), giorno(Giorno, GiornoVal),
                        (Sett * 100 + GiornoVal * 10 + Slot) != (SettMin * 100 + GiornoMinVal * 10 + SlotMin)
                }.
% introduzione_al_social_media_management
1 { seconda_lezione(Materia, SettimanaX, GiornoX, SlotX) :
                assegna(SettimanaX, GiornoX, SlotX, Materia, _),
                giorno(GiornoX, GiornoValX),
                (100 * SettimanaX + 10 * GiornoValX + SlotX) = X
        } 1 :- 
        % La presentazione_master non ha altre lezioni
        Materia = introduzione_al_social_media_management,
        prima_lezione(Materia, SettMin, GiornoMin, SlotMin),
        giorno(GiornoMin, GiornoMinVal),
        X = #min{
                (Sett * 100 + GiornoVal * 10 + Slot) :
                        assegna(Sett, Giorno, Slot, Materia, _), giorno(Giorno, GiornoVal),
                        (Sett * 100 + GiornoVal * 10 + Slot) != (SettMin * 100 + GiornoMinVal * 10 + SlotMin)
                }.
% la_gestione_delle_risorse_umane
1 { seconda_lezione(Materia, SettimanaX, GiornoX, SlotX) :
                assegna(SettimanaX, GiornoX, SlotX, Materia, _),
                giorno(GiornoX, GiornoValX),
                (100 * SettimanaX + 10 * GiornoValX + SlotX) = X
        } 1 :- 
        % La presentazione_master non ha altre lezioni
        Materia = la_gestione_delle_risorse_umane,
        prima_lezione(Materia, SettMin, GiornoMin, SlotMin),
        giorno(GiornoMin, GiornoMinVal),
        X = #min{
                (Sett * 100 + GiornoVal * 10 + Slot) :
                        assegna(Sett, Giorno, Slot, Materia, _), giorno(Giorno, GiornoVal),
                        (Sett * 100 + GiornoVal * 10 + Slot) != (SettMin * 100 + GiornoMinVal * 10 + SlotMin)
                }.
% progettazione_e_sviluppo_di_applicazioni_web_su_dispositi_mobili_1
1 { seconda_lezione(Materia, SettimanaX, GiornoX, SlotX) :
                assegna(SettimanaX, GiornoX, SlotX, Materia, _),
                giorno(GiornoX, GiornoValX),
                (100 * SettimanaX + 10 * GiornoValX + SlotX) = X
        } 1 :- 
        % La presentazione_master non ha altre lezioni
        Materia = progettazione_e_sviluppo_di_applicazioni_web_su_dispositi_mobili_1,
        prima_lezione(Materia, SettMin, GiornoMin, SlotMin),
        giorno(GiornoMin, GiornoMinVal),
        X = #min{
                (Sett * 100 + GiornoVal * 10 + Slot) :
                        assegna(Sett, Giorno, Slot, Materia, _), giorno(Giorno, GiornoVal),
                        (Sett * 100 + GiornoVal * 10 + Slot) != (SettMin * 100 + GiornoMinVal * 10 + SlotMin)
                }.
%

1 { prima_lezione(Materia, SettimanaX, GiornoX, SlotX) :
                assegna(SettimanaX, GiornoX, SlotX, Materia, _),
                giorno(GiornoX, GiornoValX),
                (100 * SettimanaX + 10 * GiornoValX + SlotX) = X
        } 1 :- 
        materia(Materia),
        X = #min{
                (Settimana * 100 + GiornoVal * 10 + Slot) :
                        assegna(Settimana, Giorno, Slot, Materia, _), giorno(Giorno, GiornoVal)
                }.

1 { ultima_lezione(Materia, SettimanaX, GiornoX, SlotX) :
                assegna(SettimanaX, GiornoX, SlotX, Materia, _),
                giorno(GiornoX, GiornoValX),
                (100 * SettimanaX + 10 * GiornoValX + SlotX) = X
        } 1 :- 
        materia(Materia),
        X = #max{
                (Settimana * 100 + GiornoVal * 10 + Slot) : 
                        assegna(Settimana, Giorno, Slot, Materia, _), giorno(Giorno, GiornoVal)
                }.

% ---------------------------------------------------------------------------------------------------------
% ---------------------------------------------------------------------------------------------------------

% Dico che devo avere per ogni materia il numero giusto di ore (faccio diviso 2 perchè gli slot sono da 2 ore)
:- insegnamento(Materia, _, Ore), Materia != blocco_libero, not { assegna(_, _, _, Materia, _) } = (Ore/2).

% Non ci possono essere due materie nello stesso slot (dello stesso giorno/settimana)
% Funzionano entrambi, nel primo caso basta una singola regola, però scrivendo le 2 regole specifiche è più preciso
% Qua metto <= 1 perchè il sabato non c'è lo slot 4, usando le due regole invece va bene = perchè considerano gli slot corretti
:- giorno_settimana(Settimana, Giorno), slot_lezione(Slot), not { assegna(Settimana, Giorno, Slot, _, _) } <= 1.
%*
:- giorno_settimana(Settimana, Giorno), Giorno != sabato, slot_lezione(Slot), not {assegna(Settimana, Giorno, Slot, _, _)} = 1.
:- giorno_settimana(Settimana, sabato), slot_lezione_sabato(Slot), not {assegna(Settimana, sabato, Slot, _, _)} = 1.
*%
% -------------------------------------------------------------------------------------------------
% -------------------------------------------------------------------------------------------------
% -----                                  VINCOLI RIGIDI                                       -----
% -------------------------------------------------------------------------------------------------
% -------------------------------------------------------------------------------------------------

% 1)- UN DOCENTE NON PUò FARE PIù DI 4 ORE DI LEZIONE IN UN GIORNO
% NOTA: DATO CHE I BLOCCHI SONO DA 2 ORE, BASTA CONTROLLARE CHE CI SIANO MENO DI 3 BLOCCHI OGNI GIORNO CON LO STESSO DOCENTE
:- giorno_settimana(Settimana, Giorno), docente(Docente), Docente != docente_generico, 
   not { assegna(Settimana, Giorno, _, _, Docente) } < 3.

% 2)- AD UN INSEGNAMENTO NON POSSONO ESSERCI MENO DI 2 O PIù DI 4 ORE AL GIORNO
% NOTA: MINORE DI 2 è GESTITO AUTOMATICAMENTE DATO CHE I BLOCCHI SONO DA 2 ORE
%       QUINDI BASTA CONTROLLARE CHE CI SIANO MENO DI 3 BLOCCHI OGNI GIORNO
:- giorno_settimana(Settimana, Giorno), materia(Materia), Materia != blocco_libero,
    not { assegna(Settimana, Giorno, _, Materia, _) } < 3.

% 3)- IL PRIMO GIORNO DI LEZIONE HA LA PRESENTAZIONE DEL MASTER (DI 2 ORE)
:- not assegna(1, venerdi, 1, presentazione_master, docente_generico).

% 4)- IL CALENDARIO DEVE PREVEDERE ALMENO 6 BLOCCHI LIBERI DA 2 ORE PER RECUPERI
:- insegnamento(blocco_libero, _, Ore), not { assegna(_, _, _, blocco_libero, _) } >= (Ore / 2).

% 5)- "PROJECT_MANAGEMENT" DEVE CONCLUDERSI NON OLTRE LA PRIMA SETTIMANA FULL TIME (SETTIMANA 7 è LA PRIMA SETTIMANA FULL TIME)
% NOTA: BASTA CHE NON CI SIANO ASSEGNAMENTI PER PROJECT_MANAGEMENT CHE HANNO IL NUMERO DI SETTIMANA > DI 7
:- giorno_settimana(Settimana, _), Settimana > 7, not { assegna(Settimana, _, _, project_Management, _) } = 0.

% 6)- LA PRIMA LEZIONE DI "ACCESSIBILITA_E_USABILITA_NELLA_PROGETTAZIONE_MULTIMEDIALE" DEVE ESSERE COLLOCATA PRIMA
%     DELL'ULTIMA LEZIONE DEL CORSO "LINGUAGGI DI MARKUP"
% NOTA: PRENDO PRIMA LEZIONE (PL) DEL CORSO A, ULTIMA LEZIONE (UL) DEL CORSO B, CONTROLLO CHE PL(A) < UL(B)
:- prima_lezione(accessibilita_e_usibilita_nella_progettazione_multimediale, SettimanaPL, GiornoPL, SlotPL), 
   ultima_lezione(linguaggi_di_markup, SettimanaUL, GiornoUL, SlotUL),
   giorno(GiornoPL, GiornoValPL), giorno(GiornoUL, GiornoValUL),
   not (100 * SettimanaPL + 10 * GiornoValPL + SlotPL) < (100 * SettimanaUL + 10 * GiornoValUL + SlotUL).
   
% 7)- LE LEZIONI DEVONO RISPETTARE UNA LISTA DI PROPEDEUTICITà:
%     LA PRIMA LEZIONE DEL CORSO DI DESTRA DEVE ESSERE DOPO L'ULTIMA LEZIONE DEL CORSO DI SINISTRA
% NOTA: PRENDO PRIMA LEZIONE (PL) DEL CORSO B, ULTIMA LEZIONE (UL) DEL CORSO A, CONTROLLO CHE UL(A) < PL(B)
:- propedeutico(InsegnamentoPrecedente, InsegnamentoSuccessivo),
   prima_lezione(InsegnamentoSuccessivo, SettimanaPL, GiornoPL, SlotPL), 
   ultima_lezione(InsegnamentoPrecedente, SettimanaUL, GiornoUL, SlotUL),
   giorno(GiornoPL, GiornoValPL), giorno(GiornoUL, GiornoValUL),
   not (100 * SettimanaUL + 10 * GiornoValUL + SlotUL) < (100 * SettimanaPL + 10 * GiornoValPL + SlotPL).

% -------------------------------------------------------------------------------------------------
% -------------------------------------------------------------------------------------------------
% -----                                VINCOLI AUSPICABILI                                    -----
% -------------------------------------------------------------------------------------------------
% -------------------------------------------------------------------------------------------------

% 1)- LA DISTANZA FRA LA PRIMA E L'ULTIMA LEZIONE DI UN CORSO NON DEVE SUPERARE LE 6 SETTIMANE
% TEMPO - CIRCA 10 SECONDI IN PIù
:- materia(Materia), Materia != blocco_libero,
   prima_lezione(Materia, SettimanaPL, _, _), ultima_lezione(Materia, SettimanaUL, _, _), 
   not (SettimanaPL - SettimanaUL) <= 6.

% 4)- LE PRIME LEZIONI DELLE MATERIE "CROSSMEDIA: ARTICOLAZIONE..." E "INTRODUZIONE AI SOCIAL MEDIA" DEVONO ESSERE NELLA 2 SETTIMANA FULL-TIME
% A CONFRONTO DI AVERE SOLO IL PRIMO VINCOLO, IL TEMPO SCENDE DA CIRCA 26S A 6S
% BESTISSIMO STO VINCOLO
:- prima_lezione(crossmedia_Articolazione_delle_scritture_multimediali, SettimanaPL1, _, _),
   prima_lezione(introduzione_al_social_media_management, SettimanaPL2, _, _),
   not SettimanaPL1 = 16,
   not SettimanaPL2 = 16.
   
% 2)- L'ULTIMA LEZIONE DELLA MATERIA "FONDAMENTI DI ITC E PARADIGMI DI PROGRAMMAZIONE" DEVE ESSERE DISTANTE
%     ALMENO DUE SETTIMANE DALLA PENULTIMA
:- ultima_lezione(fondamenti_di_ICT_e_Paradigmi_di_Programmazione, SettimanaUL, _, _), 
   penultima_lezione(fondamenti_di_ICT_e_Paradigmi_di_Programmazione, SettimanaPUL, _, _), 
   not (SettimanaUL - SettimanaPUL) >= 2.

% 3)- LE ORE DELLA MATERIA "TECNOLOGIE SERVER-SIDE PER IL WEB" DEVONO ESSERE ORGANIZZATE IN
%     5 BLOCCHI DA 4 ORE CIASCUNO
% QUA DICO CHE, DOVE C'è UNA LEZIONE, DEVONO PER FORZA ESSERCENE 2 QUEL GIORNO
:- giorno_settimana(Settimana, Giorno),
   Materia = tecnologie_server_side_per_il_web,
   assegna(Settimana, Giorno, Slot1, Materia, _),
   not { assegna(Settimana, Giorno, _, Materia, _) } = 2.
% QUA DICO CHE, DOVE CI SONO 2 LEZIONI, PER FORZA DI COSE LA LORO DISTANZA DEVE ESSERE 1
% QUINDI STANNO IN 2 BLOCCHI VICINI
:- giorno_settimana(Settimana, Giorno),
   Materia = tecnologie_server_side_per_il_web,
   assegna(Settimana, Giorno, Slot1, Materia, _),
   assegna(Settimana, Giorno, Slot2, Materia, _),
   Slot1 != Slot2,
   not (Slot1 - Slot2) * (Slot1 - Slot2) = 1.

% 5)- ALCUNE LE LEZIONI DEVONO RISPETTARE UNA LISTA DI PROPEDEUTICITA2:
%     LA PRIMA LEZIONE DEL CORSO DI DESTRA DEVE ESSERE DOPO LE PRIME 4 ORE DEL CORSO DI SINISTRA
:- propedeutico2(InsegnamentoPrecedente, InsegnamentoSuccessivo),
   prima_lezione(InsegnamentoSuccessivo, SettimanaPL, GiornoPL, SlotPL), 
   seconda_lezione(InsegnamentoPrecedente, SettimanaSL, GiornoSL, SlotSL),
   giorno(GiornoPL, GiornoValPL), giorno(GiornoSL, GiornoValSL),
   not (100 * SettimanaPL + 10 * GiornoValPL + SlotPL) > (100 * SettimanaSL + 10 * GiornoValSL + SlotSL).

% 6)- LA DISTANZA FRA L'ULTIMA LEZIONE DI "PROGETTAZIONE E SVILUPPO ... MOBILE I" E LA PRIMA DI "PROGETTAZIONE E SVILUPPO ... MOBILE II"
%     NON DEVE SUPERARE 2 SETTIMANE
:- ultima_lezione(progettazione_e_sviluppo_di_applicazioni_web_su_dispositivi_mobili_1, SettimanaUL, _, _),
   prima_lezione(progettazione_e_sviluppo_di_applicazioni_web_su_dispositivi_mobili_2, SettimanaPL, _, _),
   not (SettimanaUL - SettimanaPL) <= 2.
   % chiedere se devo controllare anche per i giorni
#show assegna/5.