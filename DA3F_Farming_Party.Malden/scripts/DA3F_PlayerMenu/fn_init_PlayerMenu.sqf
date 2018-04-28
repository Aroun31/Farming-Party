#include "DA3F_DefineCtrl_PlayerMenu.hpp"
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
    *           fn_init_PlayerMenu.sqf
    *
    *       DESCRIPTION :
    *               -------------
    *       ARGUMENTS :
    *               -------------
    *       EXEMPLES :
    *               -------------
    *
    DA3F_ItemsList
	DA3F_TxtInfo
	DA3F_Btn_act_01
	*/

		disableSerialization;

			if !(createDialog "DA3F_GUI_PlayerMenu") exitWith {};

				private _DA3F_items = [];

 					_DA3F_items = player getVariable ["DA3F_InvVirtUnit",[]];

	 					if (str _DA3F_items isEqualTo "[]") exitWith {};

			                private _DA3F_ListItems     = _DA3F_items select 0;
			                private _DA3F_ListNrbItems  = _DA3F_items select 1;
							private _DA3F_ItemName		= "";
			                {
			                    private _DA3F_Item  	= _x;
			                    _DA3F_ItemName  		= Cfg_FP_ItemInfo(getText,_DA3F_Item,"displayname");
			                    private _DA3F_value = _DA3F_ListNrbItems select _foreachindex;

			                    DA3F_ItemsList lbAdd format ["[x%2] %1", _DA3F_ItemName,_DA3F_value];
			                    DA3F_ItemsList lbsetdata [(lbSize DA3F_ItemsList)-1,str([_DA3F_Item,_DA3F_value])];
			                } forEach _DA3F_ListItems;

			                private _DA3F_infoPlayer = "<t size='0.75' align='left'>Cash :<t/><t size='0.75' align='right'>%1€<t/><br/><t size='0.75' align='left'>Bank :<t/><t size='0.75' align='right'>%2€<t/><br/><t size='0.75' align='left'>Faim :<t/><t size='0.75' align='right'>%3%8<t/><br/><t size='0.75' align='left'>Soif :<t/><t size='0.75' align='right'>%4%8<t/><br/><t size='0.75' align='left'>Level farm :<t/><t size='0.75' align='right'>%5<t/><br/><t size='0.75' align='left'>Progression :<t/><t size='0.75' align='right'>%6/%7<t/>";
			                DA3F_TxtInfo ctrlSetStructuredText parseText format [_DA3F_infoPlayer, DA3F_Cash,DA3F_Bank,DA3F_Faim,DA3F_Soif,DA3F_lvl_Farm,DA3F_lvl_prog,(DA3F_NextLvl * DA3F_lvl_Farm),"%"];

			                		(ctrlPosition DA3F_TxtInfo) params["_axX","_axY","_axW"];
									private _axH = ctrlTextHeight DA3F_TxtInfo;

										DA3F_TxtInfo ctrlSetPosition [_axX,_axY,_axW,_axH];
										DA3F_TxtInfo ctrlCommit 0.3;