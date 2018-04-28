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
    *           fn_addAction_PnjVeh.sqf
    *
    *       DESCRIPTION :
    *               -------------
    *       ARGUMENTS :
    *               -------------
    *       EXEMPLES :
    *               [this,"Shop_Entrep_1"]call DA3F_fnc_addAction_PnjVeh;
    *
	*/

	params[
		["_DA3F_Pnj",objNull,[objNull]],
		["_DA3F_ShopType","",[""]]
	];

	_DA3F_Pnj addAction ["Concessionnaire",DA3F_fnc_init_ShopVeh,_DA3F_ShopType,500,true,false,"","_this distance _target < 5 && !(isNull _target)"];