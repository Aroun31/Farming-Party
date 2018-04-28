#include "..\..\..\DA3F_FP_macros.hpp"
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
    *           fn_UpDownValue.sqf
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
	params[["_DA3F_ctrl",controlNull,[controlNull]]];

    if (isNil{missionNamespace getVariable "DA3F_CtrlEditValue"}) then {
        missionNamespace setVariable ["DA3F_CtrlEditValue",1];
    };

    private _DA3F_Value    = missionNamespace getVariable ["DA3F_CtrlEditValue",1];
    private _DA3F_Idc      = ctrlIDC _DA3F_ctrl;
	private _DA3F_Exit     = false;
	switch (_DA3F_Idc) do {

	    case 2404: {
	    	if (_DA3F_Value isEqualTo 1) exitWith {
                hint localize "DA3F_NotPossible";
                _DA3F_Exit     = true;
            };
            _DA3F_Value = _DA3F_Value - 1;
	    };

	    case 2405: {
            if (_DA3F_Value isEqualTo 10) exitWith {
                hint localize "DA3F_NotPossible";
                _DA3F_Exit     = true;
            };
            _DA3F_Value = _DA3F_Value + 1;
	    };
	};

    if (_DA3F_Exit) exitWith {systemChat "exit"};
        Ctrl_Edit_Q ctrlSetText format ["x%1",_DA3F_Value];
        missionNamespace setVariable ["DA3F_CtrlEditValue",_DA3F_Value];