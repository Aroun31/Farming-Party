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
    *           fn_Create_info.sqf
    *
    *       DESCRIPTION :
    *               -------------
    *       ARGUMENTS :
    *               -------------
    *       EXEMPLES :
    *   // Remise à zéro de la mission (Console de debug)
        profileNamespace setVariable ["DA3F_Stats_Life",nil];
        profileNamespace setVariable ["DA3F_Stats_Lvl",nil];
        profileNamespace setVariable ["DA3F_Inventory_Unit",nil];
        profileNamespace setVariable ["DA3F_InvVirt",nil];
    *
    */

        if (isNil "DA3F_Stats_Life") then {
        private _DA3F_Dmg   = damage player;
            profileNamespace setVariable ["DA3F_Stats_Life",[_DA3F_Dmg,100,100,DA3F_Cash,DA3F_Bank]];
            DA3F_Stats_Life = profileNamespace getVariable "DA3F_Stats_Life";
            _DA3F_Save      = true;
        };

        if (isNil "DA3F_Stats_Lvl") then {


            profileNamespace setVariable ["DA3F_Stats_Lvl",[["DA3F_lvl_Farm","DA3F_lvl_prog"],[0,0]]];
            DA3F_Stats_Lvl = profileNamespace getVariable "DA3F_Stats_Lvl";
            _DA3F_Save      = true;
        };

        if (isNil "DA3F_Inventory") then {
            profileNamespace setVariable ["DA3F_Inventory_Unit",[[],[]]];
            DA3F_Inventory = profileNamespace getVariable "DA3F_Inventory_Unit";
            _DA3F_Save      = true;
        };

        if (isNil "DA3F_InvVirt") then {
            profileNamespace setVariable ["DA3F_InvVirt",[[],[]]];
            DA3F_InvVirt = profileNamespace getVariable "DA3F_InvVirt";
            player setVariable ["DA3F_InvVirtUnit",DA3F_InvVirt,false];
        };

        if (_DA3F_Save) then {
            saveProfileNamespace;
        };

    [] spawn compile preprocessFileLineNumbers "scripts\init_Player.sqf";

