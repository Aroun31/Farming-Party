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
    *           DA3F_GUI_Spawn.hpp
    *
    *       DESCRIPTION :
    *               -------------
    *       ARGUMENTS :
    *               -------------
    *       EXEMPLES :
    *               -------------
    *
	*/

		class DA3F_GUI_Spawn
		{
			idd = 230318;
			name = "DA3F_GUI_Spawn";
			author = "@roun";

			class controlsBackground
			{
				class RscPicture_1200: DA3F_Pix
				{
					idc = 1200;
					text = "#(argb,8,8,3)color(0,0.45,1,0.85)";
					x = 0.316251 * safezoneW + safezoneX;
					y = 0.262 * safezoneH + safezoneY;
					w = 0.3675 * safezoneW;
					h = 0.476 * safezoneH;
				};
			};	

			class controls
			{	
				class RscButtonMenu_2400: DA3F_Btn
				{
					idc = 2400;
					text = "Spawn entreprise";
					x = 0.375312 * safezoneW + safezoneX;
					y = 0.318 * safezoneH + safezoneY;
					w = 0.249375 * safezoneW;
					h = 0.084 * safezoneH;
					OnButtonClick = "_this call DA3F_fnc_spawnConfirme";
				};
				class RscButtonMenu_2401: DA3F_Btn
				{
					idc = 2401;
					text = "Spawn coopérative";
					x = 0.375312 * safezoneW + safezoneX;
					y = 0.458 * safezoneH + safezoneY;
					w = 0.249375 * safezoneW;
					h = 0.084 * safezoneH;
					OnButtonClick = "_this call DA3F_fnc_spawnConfirme";
				};
				class RscButtonMenu_2402: DA3F_Btn
				{
					idc = 2402;
					text = "Retour lobby";
					x = 0.375312 * safezoneW + safezoneX;
					y = 0.598 * safezoneH + safezoneY;
					w = 0.249375 * safezoneW;
					h = 0.084 * safezoneH;
					OnButtonClick = "_this call DA3F_fnc_spawnConfirme";
				};
			};
		};