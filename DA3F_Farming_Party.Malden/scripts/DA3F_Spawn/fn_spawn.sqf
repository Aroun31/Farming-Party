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
    *           fn_AddAction_to_Bob.sqf
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
    if !(createDialog "DA3F_GUI_Spawn") exitWith {};
        cutText ["","BLACK FADED",0];
        private _DA3F_Display = findDisplay 230318;
        private _DA3F_btn_Taff = _DA3F_Display displayCtrl 2400;
        private _DA3F_btn_Cope = _DA3F_Display displayCtrl 2401;
        private _DA3F_btn_Exit = _DA3F_Display displayCtrl 2402;