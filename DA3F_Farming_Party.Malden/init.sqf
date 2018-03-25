    /*
    *
    *       Project :
    *               Farming Party
    *
    *       Team   :
    *               Dev'Arma 3 France / http://devarma3france.fr/
    *
    *       Author  :
    *               [DA3F] Aroun Le BriCodeur
    *
    *       File :
    *           init.sqf
    *
    *       DESCRIPTION :
    *               -------------
    *       ARGUMENTS :
    *               -------------
    *       EXEMPLES :
    *               -------------
    *
    */

    DA3F_Action     = false;
    DA3F_Cash       = 0;
    DA3F_Bank       = 0;
    DA3F_Faim       = 100;
    DA3F_Soif       = 100;
    DA3F_NextLvl    = 75;
    DA3F_Death      = false;
    DA3F_poids      = 0;
    DA3F_poidMaxInv = 100;
            missionNamespace setVariable ["DA3F_lvl_Farm",0];
            missionNamespace setVariable ["DA3F_lvl_prog",0];
            missionNamespace setVariable ["DA3F_lvl_next",DA3F_NextLvl];
    []call DA3F_fnc_load_info;

    player addEventHandler ["killed",{_this spawn{DA3F_Death = true}}];