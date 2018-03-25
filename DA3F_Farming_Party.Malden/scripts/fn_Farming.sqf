    #define Cfg_DA3F_Fp_Farm(TYPE,Class,SETTING) TYPE(missionConfigFile >> "DA3F_Cfg_Zones" >> Class >> SETTING)
    #define Cfg_DA3F_Fp_Item(TYPE,Class,SETTING) TYPE(missionConfigFile >> "DA3F_Cfg_Items" >> Class >> SETTING)
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
    *           fn_Farming.sqf
    *
    *       DESCRIPTION :
    *               -------------
    *       ARGUMENTS :
    *               -------------
    *       EXEMPLES :
    *               -------------
    *
    */

    private _DA3F_mrk_Name  = "";
    private _DA3F_Class     = "";

    if (DA3F_Action) exitWith {};

        {
            private _DA3F_NameClass =  (configName _x);
            private _DA3F_Mrk =  getText(_x >> "marker");
                if (player distance getMarkerPos _DA3F_Mrk < 300) exitWith {
                _DA3F_mrk_Name  = _DA3F_Mrk;
                _DA3F_Class     = _DA3F_NameClass;
            };
        } forEach ("true" configClasses (missionConfigFile >> "DA3F_Cfg_Zones"));

        private _DA3F_Distance      = Cfg_DA3F_Fp_Farm(getNumber,_DA3F_Class,"Mrk_radius");
        private _DA3F_items         = Cfg_DA3F_Fp_Farm(getArray,_DA3F_Class,"items");
        private _DA3F_Quantit       = Cfg_DA3F_Fp_Farm(getNumber,_DA3F_Class,"Quantit");

        if (player distance getMarkerPos _DA3F_mrk_Name > _DA3F_Distance) exitWith {hint "Tu n'es pas dans un champs";};

        DA3F_Action = true;
        for "_i" from 0 to 6 do {
            player playMoveNow "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
            waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon"};
            sleep 0.6;
        };
            private _DA3F_item      = selectRandom(_DA3F_items);
            private _DA3F_NameItem  = Cfg_DA3F_Fp_Item(getText,_DA3F_item,"displayname");
            private _DA3F_PoidsItem = Cfg_DA3F_Fp_Item(getNumber,_DA3F_item,"Poids");
            private _DA3F_OldPoids  = DA3F_poids;
            private _DA3F_Value     = (ceil Random _DA3F_Quantit);
            private _DA3F_CalPoid   = (_DA3F_PoidsItem * _DA3F_Value);
            private _DA3F_Calcul    = _DA3F_OldPoids + _DA3F_CalPoid;
                if (_DA3F_Calcul >= DA3F_poidMaxInv) exitWith {
                    hint "Tu ne dispose pas d'assez de place";
                };
            DA3F_poids = DA3F_poids + _DA3F_CalPoid;
            DA3F_Action = false;
            private _DA3F_invVirt = player getVariable ["DA3F_InvVirtUnit",[]];
            if (str _DA3F_invVirt isEqualTo "[]") then {
                player setVariable ["DA3F_InvVirtUnit",[[],[]],false];
                _DA3F_invVirt = player getVariable ["DA3F_InvVirtUnit",[]];
            };
            private _DA3F_ListItem      = _DA3F_invVirt select 0;
            private _DA3F_ListNrbItem   = _DA3F_invVirt select 1;

            if (_DA3F_item in _DA3F_ListItem) then [{
                private _DA3F_Index = _DA3F_ListItem find _DA3F_item;
                private _DA3F_Val   = _DA3F_ListNrbItem select _DA3F_Index;
                _DA3F_Val = _DA3F_Val + _DA3F_Value;
                _DA3F_ListNrbItem set [_DA3F_Index,_DA3F_Val];
                _DA3F_invVirt set [1,_DA3F_ListNrbItem];
            },{
                _DA3F_ListItem pushBack _DA3F_item;
                _DA3F_ListNrbItem pushBack _DA3F_Value;
                _DA3F_invVirt set [0,_DA3F_ListItem];
                _DA3F_invVirt set [1,_DA3F_ListNrbItem];
        }];

    private _DA3F_Show = "Inventaire\n\n";
    {
        _DA3F_Show = _DA3F_Show + format ["[x%2] %1\n",Cfg_DA3F_Fp_Item(getText,_x,"displayname"),(_DA3F_invVirt select 1)select _foreachindex]
    } forEach (_DA3F_invVirt select 0);



    private _DA3F_NextLvl = (DA3F_lvl_next * DA3F_lvl_Farm);
    private _DA3F_prog = ceil(random 20);
    DA3F_lvl_prog = DA3F_lvl_prog + _DA3F_prog;
    if (DA3F_lvl_prog >= _DA3F_NextLvl) then {
        DA3F_lvl_Farm = DA3F_lvl_Farm + 1;
        private _DA3F_Diff = DA3F_lvl_prog - _DA3F_NextLvl;
        DA3F_lvl_prog = _DA3F_Diff;
    };
    private _DA3F_lvl = format ["+ %1pts Farm\n%2/%3\nLevel actuel : %4",_DA3F_prog,DA3F_lvl_prog,(DA3F_lvl_next * DA3F_lvl_Farm),DA3F_lvl_Farm];
        hintSilent format ["Item ramassé :\n [x%2]%1\n\n%3\n\n%4", _DA3F_NameItem,_DA3F_Value,_DA3F_lvl,_DA3F_Show];