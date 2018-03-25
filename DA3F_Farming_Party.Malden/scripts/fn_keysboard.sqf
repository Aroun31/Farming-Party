//#include "..\..\DA3F_macros.hpp"
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


        params[
            ["_DA3F_Type",-1,[0]],
            ["_DA3F_Title","Action",[""]],
            "_DA3F_Code",
            ["_DA3F_Args","",[""]],
            ["_DA3F_Prio",10,[0]],
            ["_DA3F_Bool_1",false,[false]],
            ["_DA3F_Bool_2",false,[false]],
            ["_DA3F_String","",[""]],
            ["_DA3F_Condi","",[""]]
        ];
        if (_DA3F_Type isEqualTo -1) exitWith {};

            if (_DA3F_Type isEqualTo 0) then {
                DA3F_AllEtablis        = [];
                    {
                        if(typeOf _x isEqualTo "DA3F_WorkBench")then {
                            private _DA3F_Craft_Etab        = _DA3F_Etabli getVariable "DA3F_IsEtabli";
                                if !(isNil "_DA3F_Craft_Etab") then {
                                    DA3F_AllEtablis set [count DA3F_AllEtablis,_x];
                                };
                            };
                    } forEach (allMissionObjects "Cargo");

            /*_DA3F_Target addAction [_DA3F_Title, _DA3F_Code, _DA3F_Args, _DA3F_Prio, _DA3F_Bool_1, _DA3F_Bool_2, _DA3F_String, _DA3F_Condi];*/

            {
                _x addAction [_DA3F_Title, _DA3F_Code, _DA3F_Args, _DA3F_Prio, _DA3F_Bool_1, _DA3F_Bool_2, _DA3F_String, _DA3F_Condi];
            } forEach DA3F_AllEtablis;
        };


        if (_DA3F_Type isEqualTo 1) then {
           private _DA3F_Target = nearestObjects [player,["DA3F_WorkBench"],6]select 0;

            /*_DA3F_Target addAction [_DA3F_Title, _DA3F_Code, _DA3F_Args, _DA3F_Prio, _DA3F_Bool_1, _DA3F_Bool_2, _DA3F_String, _DA3F_Condi];*/


                _DA3F_Target addAction [_DA3F_Title, _DA3F_Code, _DA3F_Args, _DA3F_Prio, _DA3F_Bool_1, _DA3F_Bool_2, _DA3F_String, _DA3F_Condi];

        };
