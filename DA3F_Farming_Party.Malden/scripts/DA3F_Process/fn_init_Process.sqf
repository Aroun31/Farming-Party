#include "DA3F_Define_Ctrl_Process.hpp"
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
    *           fn_init_Process.sqf
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
	if !(createDialog "DA3F_GUI_Process") exitWith {};

		_DA3F_items = player getVariable ["DA3F_InvVirtUnit",[]];

            private _DA3F_ListItems     = _DA3F_items select 0;
            private _DA3F_ListNrbItems  = _DA3F_items select 1;
			private _DA3F_ItemName		= "";

            {
                private _DA3F_Item  	= _x;
                _DA3F_ItemName  		= Cfg_FP_ItemInfo(getText,_DA3F_Item,"displayname");
                private _DA3F_value 	= _DA3F_ListNrbItems select _foreachindex;
                List_inv lbAdd format ["[x%2] %1", _DA3F_ItemName,_DA3F_value];
                List_inv lbsetdata [(lbSize List_inv)-1,str([_DA3F_Item,_DA3F_value])];
            } forEach _DA3F_ListItems;


        Ctrl_Edit_Q ctrlSetText format ["x%1",(missionNamespace getVariable ["DA3F_CtrlEditValue",1])];


            DA3F_My_StockUsine params[
                ["_DA3F_listItemsUsine",[],[[]]],
                ["_DA3F_listValueUsine",[],[[]]]
            ];
            {
                private _DA3F_ClassName = _x;
                private _DA3F_ValInUsine = _DA3F_listValueUsine select _foreachindex;
                _DA3F_ItemName          = Cfg_FP_ItemInfo(getText,_DA3F_ClassName,"displayname");
                List_Usine lbAdd format ["[x%2] %1", _DA3F_ItemName,_DA3F_ValInUsine];
                List_Usine lbSetData [_foreachindex,str([_DA3F_ClassName,_DA3F_ValInUsine])];
            } forEach _DA3F_listItemsUsine;