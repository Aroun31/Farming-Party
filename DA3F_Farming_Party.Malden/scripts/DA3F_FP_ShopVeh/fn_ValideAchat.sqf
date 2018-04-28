	#include "..\..\DA3F_FP_macros.hpp"
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
    *           fn_ValideAchat.sqf
    *
    *       DESCRIPTION :
    *               -------------
    *       ARGUMENTS :
    *               -------------
    *       EXEMPLES :
    *
    *
	*/

    private _DA3F_index = lbCurSel CtrlListVeh;

    if (_DA3F_index isEqualTo -1) exitWith {};
        private _DA3F_Data      = CtrlListVeh lbData _DA3F_index;

        _DA3F_Data  = call compile format ["%1", _DA3F_Data];
        _DA3F_Data params[
            ["_DA3F_ClassName","",[""]],
            ["_DA3F_PrixAchat",0,[0]],
            ["_DA3F_PrixVente",0,[0]],
            ["_DA3F_Exit",false,[false]]
        ];

        if (_DA3F_Exit) exitWith {
            hint localize "DA3F_NotLevel";
        };
        private _DA3F_MrkSpawn  = Cfg_FP_VehShop(getText,DA3F_TypeShop,"SpawnMarker");
        private _DA3F_MaxCapa   = Cfg_FP_VehInfo(getNumber,_DA3F_ClassName,"Item_MaxCoffre");
        private _DA3F_RealName  = Cfg_Veh_A3(getText,_DA3F_ClassName,"displayName");
        private _DA3F_Picture   = Cfg_Veh_A3(getText,_DA3F_ClassName,"picture");
        private _DA3F_value     = 0;
       if (_DA3F_PrixAchat > DA3F_Cash) exitWith {
            hint localize "DA3F_NotCash";
       };

       private _DA3F_Veh = objNull;
       _DA3F_Veh = createVehicle [_DA3F_ClassName,getMarkerPos _DA3F_MrkSpawn, [], 0, "NONE"];
       _DA3F_Veh setDir markerDir _DA3F_MrkSpawn;
       hint localize "DA3F_BuyVehSucces";
       DA3F_Cash = DA3F_Cash - _DA3F_PrixAchat;

       DA3F_My_Garage params[
           ["_DA3F_ListVeh",[],[[]]],
           ["_DA3F_InfoVeh",[],[[]]]
       ];
       _DA3F_Plak = call DA3F_fnc_Create_New_Plaque;
       _DA3F_ListVeh pushBack _DA3F_ClassName;
       DA3F_MyKeysVeh pushBack _DA3F_Plak;
       _DA3F_Veh setVariable ["DA3F_VehInfos",[profileName,_DA3F_PrixVente,_DA3F_Plak]];
       _DA3F_InfoVeh pushBack [(getAllHitPointsDamage _DA3F_Veh)select 2,1,_DA3F_PrixVente,_DA3F_Plak,1];// [Damage,fuel,PrixVente,plak,actif];

       DA3F_My_Garage set [0,_DA3F_ListVeh];
       DA3F_My_Garage set [1,_DA3F_InfoVeh];

            missionNamespace setVariable ["DA3F_My_Garage",DA3F_My_Garage];
            closeDialog 0;