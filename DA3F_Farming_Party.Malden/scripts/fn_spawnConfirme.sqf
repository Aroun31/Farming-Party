//#include "..\..\DA3F_macros.hpp"
    /*
    *
    *       Project :
    *               Projet Alice
    *
    *       Team   :
    *               Dev'Arma 3 France / http://devarma3france.fr/
    *
    *       Author  :
    *               [DA3F] Aroun Le BriCodeur
    *
    *       File :
    *           fn_spawnConfirme.sqf
    *
    *       DESCRIPTION :
    *               -------------
    *       ARGUMENTS :
    *               -------------
    *       EXEMPLES :
    *               -------------
    *
    */

    disableSerialization;
        private _DA3F_idc = ctrlIDC(_this select 0);
        switch (_DA3F_idc) do {

            case 2400: {
                player setPos getMarkerPos "DA3F_mrk_taff";
                cutText ["Vous venez d'arriver à l'entreprise","Black IN",5];
            };
            case 2401: {
                player setPos getMarkerPos "DA3F_mrk_cope";
                cutText ["Vous venez d'arriver à la coopérative","Black IN",5];
            };
            case 2402: {
                closeDialog 0;endMission "BackLobby";
            };
        };
        closeDialog 0;