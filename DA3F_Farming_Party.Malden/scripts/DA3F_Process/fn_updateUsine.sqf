#include "..\..\DA3F_FP_macros.hpp"
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
    *           fn_updateUsine.sqf
    *
    *       DESCRIPTION :
    *               -------------
    *       ARGUMENTS :
    *               -------------
    *       EXEMPLES :
    *               -------------
    *
	*/

		_DA3F_items = player getVariable ["DA3F_InvVirtUnit",[]];
			_DA3F_items params[
			    ["_DA3F_ListItems",[],[[]]],
				["_DA3F_ListNrbItems",[],[[]]]
			];
			private _DA3F_ItemName		= "";

		lbClear List_inv;
            {
                private _DA3F_Item  	= _x;
                _DA3F_ItemName  		= Cfg_FP_ItemInfo(getText,_DA3F_Item,"displayname");
                private _DA3F_value 	= _DA3F_ListNrbItems select _foreachindex;
                List_inv lbAdd format ["[x%2] %1", _DA3F_ItemName,_DA3F_value];
                List_inv lbsetdata [(lbSize List_inv)-1,str([_DA3F_Item,_DA3F_value])];
            } forEach _DA3F_ListItems;


			DA3F_My_StockUsine params[
			    ["_DA3F_listItemsUsine",[],[[]]],
				["_DA3F_listValueUsine",[],[[]]]
			];

		lbClear List_Usine;

			{
				private _DA3F_ClassName = _x;
				private _DA3F_ValInUsine = _DA3F_listValueUsine select _foreachindex;
				_DA3F_ItemName  		= Cfg_FP_ItemInfo(getText,_DA3F_ClassName,"displayname");
				List_Usine lbAdd format ["[x%2] %1", _DA3F_ItemName,_DA3F_ValInUsine];
				List_Usine lbSetData [_foreachindex,str([_DA3F_ClassName,_DA3F_ValInUsine])];
			} forEach _DA3F_listItemsUsine;