#include "..\..\DA3F_FP_macros.hpp"
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
    *           fn_init_ShopVeh.sqf
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

		if !(createDialog "DA3F_GUI_Shop_veh") exitWith {};

	params[
		"",
		"",
		"",
		["_DA3F_TypeShop","",[""]]
	];

		if (_DA3F_TypeShop isEqualTo "") exitWith {systemChat "ha"};
			missionNamespace setVariable ["DA3F_TypeShop",_DA3F_TypeShop];
	private _DA3F_RealName 	= "";
	private _DA3F_Picture 	= "";
	private _DA3F_Condition = "";
	private _DA3F_ListVeh 	= [];
	private _DA3F_NoShow	= false;

	_DA3F_Condition = Cfg_FP_VehShop(getText,_DA3F_TypeShop,"condition");
	_DA3F_ListVeh 	= Cfg_FP_VehShop(getArray,_DA3F_TypeShop,"vehicles");

	if !(_DA3F_Condition isEqualTo "") then {
		_DA3F_Condition = call compile format ["%1", _DA3F_Condition];
		if !(_DA3F_Condition) then {
			_DA3F_NoShow = true;
		};
	};

		if (_DA3F_NoShow) exitWith
		{
			hintSilent localize "DA3F_NotUseShop";
		};


	{

		_DA3F_NoShow	= false;
		_x params[
		    ["_DA3F_ClassName","",[""]],
			["_DA3F_PrixAchat",0,[0]],
			["_DA3F_PrixVente",0,[0]],
			["_DA3F_Condition","",[""]]
		];

			if !(_DA3F_Condition isEqualTo "") then {
				_DA3F_Condition = call compile format ["%1", _DA3F_Condition];
				if !(_DA3F_Condition) then {
					_DA3F_NoShow = true;
				};
			};

		_DA3F_MaxCapa 	= Cfg_FP_VehInfo(getNumber,_DA3F_ClassName,"Item_MaxCoffre");
		_DA3F_RealName 	= Cfg_Veh_A3(getText,_DA3F_ClassName,"displayName");
		_DA3F_Picture 	= Cfg_Veh_A3(getText,_DA3F_ClassName,"picture");
		//_DA3F_index 	= CtrlListVeh lbAdd format ["%1 :: Achat : %2 :: Vente : %3 :: Capa. : %4",
		_DA3F_index 	= CtrlListVeh lbAdd format ["%1",_DA3F_RealName];

		CtrlListVeh lbSetData [_DA3F_index,str[_DA3F_ClassName,_DA3F_PrixAchat,_DA3F_PrixVente,_DA3F_NoShow]];
		CtrlListVeh lbSetPicture [_DA3F_index,_DA3F_Picture];

			if (_DA3F_NoShow) then [{
				CtrlListVeh lbSetColor [_DA3F_index,[0.95,0.3,0.1,1]];
			},{
				CtrlListVeh lbSetColor [_DA3F_index,[0.15,0.9,0.1,1]];
		}];

	} forEach _DA3F_ListVeh;

	[]spawn {
	disableSerialization;
	waitUntil {(isNull (findDisplay 240418))};
	missionNamespace setVariable ["DA3F_TypeShop",nil];
};