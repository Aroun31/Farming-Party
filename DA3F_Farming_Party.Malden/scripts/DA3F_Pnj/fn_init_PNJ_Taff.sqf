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
    *           fn_init_PNJ_Taff.sqf
    *
    *       DESCRIPTION :
    *               -------------
    *       ARGUMENTS :
    *               -------------
    *       EXEMPLES :
    *               _DA3F = this call DA3F_fnc_init_PNJ_Taff;
    *
    */

    [_this,"Shop_Entrep_1"]call DA3F_fnc_addAction_PnjVeh;

    _this addAction ["<t color='#0F00F0' >Sortir un véhicule</t>",DA3F_fnc_init_Garage,"Shop_Entrep_1",0,true,false,"","_this distance _target < 5 && !(isnull _target)"];

    _this addAction ["<t color='#00FF00' >Gérer de la marchandise</t>",{
        hint "Interaction à venir";
    },"",0,true,false,"","_this distance _target < 5 && !(isnull _target)"];

    _this addAction ["<t color='#F0F000' >Vérifier le travail des employés</t>",{
        hint "Interaction à venir";
    },"",0,true,false,"","_this distance _target < 5 && !(isnull _target)"];

    _this addAction ["<t color='#00F00F' >Ranger le véhicule</t>",DA3F_fnc_vehicleGoInGarage,"Shop_Entrep_1",0,true,false,"","_this distance _target < 5 && !(isnull _target)"];