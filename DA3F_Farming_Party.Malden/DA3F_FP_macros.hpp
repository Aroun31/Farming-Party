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
    *           DA3F_FP_macros.hpp
    *
    *       DESCRIPTION :
    *               -------------
    *       ARGUMENTS :
    *               -------------
    *       EXEMPLES :
    *               #include "DA3F_FP_macros.hpp"
    *
	*/

    #define My_Ctrl(disp,ctrl) ((findDisplay ##disp) displayCtrl ##ctrl)
    #define Cfg_FP_ItemInfo(TYPE,Class,SETTING) TYPE(missionConfigFile >> "DA3F_Cfg_Items" >> Class >> SETTING)
    #define Cfg_FP_VehInfo(TYPE,Class,SETTING) TYPE(missionConfigFile >> "CfgShopVehicles" >> "Vehicles_Info" >> Class >> SETTING)
    #define Cfg_FP_VehShop(TYPE,Class,SETTING) TYPE(missionConfigFile >> "CfgShopVehicles" >> "Pnj_Concess" >> Class >> SETTING)
    #define Cfg_Veh_A3(TYPE,Class,SETTING) TYPE(ConfigFile >> "CfgVehicles" >> Class >> SETTING)
    
#define CtrlListMyVeh My_Ctrl(290418,1500)
#define Ctrl_Edit_Q My_Ctrl(280418,1400)
#define CtrlListVeh My_Ctrl(240418,1500)
        	    