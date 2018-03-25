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
    *           fn_Respawn.sqf
    *
    *       DESCRIPTION :
    *               -------------
    *       ARGUMENTS :
    *               -------------
    *       EXEMPLES :
    *               -------------
    *
    */
    if (DA3F_Death) exitWith {
        DA3F_Action     = false;
        DA3F_Cash       = 0;
        DA3F_Bank       = 0;
        DA3F_Faim       = 100;
        DA3F_Soif       = 100;
        DA3F_Death      = false;
        []spawn DA3F_fnc_spawn;
    };
