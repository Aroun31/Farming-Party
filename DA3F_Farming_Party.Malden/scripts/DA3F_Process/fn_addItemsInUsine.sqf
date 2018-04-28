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
    *           fn_addItemsInUsine.sqf
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

    private _DA3F_index    	= lbCurSel List_inv;
    	if (_DA3F_index isEqualTo -1) exitWith {
    		hint localize "DA3F_ItemNoSelect";
    	};
    private _DA3F_Data		= call compile format ["%1",List_inv lbData _DA3F_index];
    private _DA3F_Value    	= missionNamespace getVariable ["DA3F_CtrlEditValue",1];
			_DA3F_items 	= player getVariable ["DA3F_InvVirtUnit",[]];

            private _DA3F_ListItems     = _DA3F_items select 0;
            private _DA3F_ListNrbItems  = _DA3F_items select 1;
			private _DA3F_ItemName		= "";
			private _DA3F_Item 			= _DA3F_ListItems select _DA3F_index;
			private _DA3F_Val 			= _DA3F_ListNrbItems select _DA3F_index;

				_DA3F_Val = _DA3F_Val - _DA3F_Value;
				if (_DA3F_Val < 0) then [{
					_DA3F_Val = 0;
					_DA3F_ListItems deleteAt _DA3F_index;
				},{
				_DA3F_ListNrbItems set [_DA3F_index,_DA3F_Val];
			}];

			DA3F_My_StockUsine params[
			    ["_DA3F_listItemsUsine",[],[[]]],
				["_DA3F_listValueUsine",[],[[]]]
			];

			if (_DA3F_Item in _DA3F_listItemsUsine) then [{
				_DA3F_indexItem = _DA3F_listItemsUsine find _DA3F_Item;
				_DA3F_ValUsne	= _DA3F_listValueUsine select _DA3F_indexItem;
				_DA3F_ValUsne = _DA3F_ValUsne + _DA3F_Value;
				_DA3F_listValueUsine set [_DA3F_index,_DA3F_ValUsne];
				DA3F_My_StockUsine set [1,_DA3F_listValueUsine];
			},{
				_DA3F_listItemsUsine pushBack _DA3F_Item;
				_DA3F_listValueUsine pushBack _DA3F_Value;
				DA3F_My_StockUsine set [0,_DA3F_listItemsUsine];
				DA3F_My_StockUsine set [1,_DA3F_listValueUsine];
		}];

		call DA3F_fnc_updateUsine;