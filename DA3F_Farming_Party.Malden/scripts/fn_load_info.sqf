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
    *           fn_load_info.sqf
    *
    *       DESCRIPTION :
    *               -------------
    *       ARGUMENTS :
    *               -------------
    *       EXEMPLES :
    *               -------------
    *
    */


        private _DA3F_Save  = false;
        DA3F_Stats_Life     = profileNamespace getVariable "DA3F_Stats_Life";
        DA3F_Stats_Lvl      = profileNamespace getVariable "DA3F_Stats_Lvl";
        DA3F_Inventory      = profileNamespace getVariable "DA3F_Inventory";
        DA3F_InvVirt        = profileNamespace getVariable "DA3F_InvVirt";

        {
            missionNamespace setVariable [format ["DA3F_Item_%1",(configName _x)],0];
        } forEach ("true" configClasses (missionConfigFile >> "DA3F_Cfg_Items"));

        if (isNil "DA3F_Stats_Life" || isNil "DA3F_Stats_Lvl" || isNil "DA3F_Inventory" || isNil "DA3F_InvVirt") exitWith {
            []call DA3F_fnc_Create_info;
        };
            profileNamespace setVariable ["DA3F_Stats_Lvl",[["DA3F_lvl_Farm","DA3F_lvl_prog"],[0,0]]];
            DA3F_Stats_Lvl = profileNamespace getVariable "DA3F_Stats_Lvl";

            _DA3F_lvl_Farm = DA3F_Stats_Lvl select 0;
            _DA3F_lvl_Prog = DA3F_Stats_Lvl select 1;
            missionNamespace setVariable ["DA3F_lvl_Farm",_DA3F_lvl_Farm];
            missionNamespace setVariable ["DA3F_lvl_prog",_DA3F_lvl_Prog];

            private _DA3F_Dmg = DA3F_Stats_Life select 0;
            DA3F_Faim = DA3F_Stats_Life select 1;
            DA3F_Soif = DA3F_Stats_Life select 2;
            DA3F_Cash = DA3F_Stats_Life select 3;
            DA3F_Bank = DA3F_Stats_Life select 4;


            player setVariable ["DA3F_InvVirtUnit",DA3F_InvVirt,false];
            private _DA3F_ListItems     = DA3F_InvVirt select 0;
            private _DA3F_ListNrbItems  = DA3F_InvVirt select 1;

            {
                private _DA3F_Item  = _x;
                private _DA3F_value = _DA3F_ListNrbItems select _foreachindex;
                missionNamespace setVariable [format["DA3F_item_%1",_DA3F_Item],_DA3F_value];
            } forEach _DA3F_ListItems;


            [] spawn compile preprocessFileLineNumbers "scripts\init_Player.sqf";