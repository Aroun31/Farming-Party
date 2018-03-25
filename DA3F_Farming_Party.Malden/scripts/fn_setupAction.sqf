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
    *           fn_setupAction.sqf
    *
    *       DESCRIPTION :
    *               -------------
    *       ARGUMENTS :
    *               -------------
    *       EXEMPLES :
    *               -------------
    *
    */

    switch (playerSide) do {
        case civilian: {
            player addAction ["Farm",DA3F_fnc_Farming,"",0,false,false,"",""];
        };

        case west: {
            player addAction ["Menotter",{
                _target = cursorObject;
                if (isNull _target) exitWith {};
                    if (_target distance player > 5) exitWith {};
                _target attachTo [player, [0,1.5,0]];
                    _id = player addAction ["Demenotter",{
                        private _DA3F_Info = player getVariable ["DA3F_ID_Act",[]];
                        private _DA3F_id = _DA3F_Info select 0;
                        private _DA3F_Target = _DA3F_Info select 1;
                            Detach _DA3F_Target;
                            player setVariable ["DA3F_ID_Act",nil];
                    }];
                player setVariable ["DA3F_ID_Act",[_id,_target]];
            },"",0,false,false,"","(isNil {player getVariable ""DA3F_ID_Act""}) && (_target distance _this < 5)"];

        };

        case east: {
            /* STATEMENT */
        };
        case independent: {
            /* STATEMENT */
        };

        default {
             /* Unknown */
        };
    };