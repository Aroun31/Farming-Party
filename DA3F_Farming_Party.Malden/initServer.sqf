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
    *           initServer.sqf
    *
    *       DESCRIPTION :
    *               -------------
    *       ARGUMENTS :
    *               -------------
    *       EXEMPLES :
    *               -------------
    *
    */

    if !(isServer) exitWith {};
        private _DA3F_Save      = false;
        DA3F_StockEntreprise    = profileNamespace getVariable "DA3F_Stats_Stock_taff";
        DA3F_StockCoperative    = profileNamespace getVariable "DA3F_Stats_Stock_Cope";

        if (isNil "DA3F_StockEntreprise") then {
            profileNamespace setVariable ["DA3F_Stats_Stock_taff",[[],[]]];
            DA3F_StockEntreprise = profileNamespace getVariable "DA3F_Stats_Stock_taff";
            _DA3F_Save      = true;
        };

        if (isNil "DA3F_StockCoperative") then {
            profileNamespace setVariable ["DA3F_Stats_Stock_Cope",[[],[]]];
            DA3F_StockCoperative = profileNamespace getVariable "DA3F_Stats_Stock_Cope";
            _DA3F_Save      = true;
        };

        if (_DA3F_Save) then {
            saveProfileNamespace;
        };