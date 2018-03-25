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
	*           DA3F_Define.hpp
	*
	*       DESCRIPTION :
	*               -------------
	*       ARGUMENTS :
	*               -------------
	*       EXEMPLES :
	*               -------------
	*
	*/

		class DA3F_Btn
		{
			idc = -1;
			type = 16;
			style = "0x02 + 0xC0";
			default = 0;
			shadow = 0;
			x = 0;
			y = 0;
			w = 0.095589;
			h = 0.039216;
			animTextureNormal = "#(argb,8,8,3)color(1,1,1,1)";
			animTextureDisabled = "#(argb,8,8,3)color(1,1,1,1)";
			animTextureOver = "#(argb,8,8,3)color(1,1,1,1)";
			animTextureFocused = "#(argb,8,8,3)color(1,1,1,1)";
			animTexturePressed = "#(argb,8,8,3)color(1,1,1,1)";
			animTextureDefault = "#(argb,8,8,3)color(1,1,1,1)";
			colorBackground[] = {0,0,0,0};
			colorBackgroundFocused[] = {0.7,0.25,0,0};
			colorBackground2[] = {0.75,0.75,0.75,0};
			color[] = {0,0.85,1,1};
			colorFocused[] = {1,0.85,0.1,1};
			color2[] = {0,0.85,0.2,1};
			colorText[] = {0,0,0,1};
			colorDisabled[] = {0.9,0.65,0.1,0.5};
			period = 1.2;
			periodFocus = 1.2;
			periodOver = 1.2;
			size = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
			sizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
			tooltipColorText[] = {1,1,1,1};
			tooltipColorBox[] = {0,0.85,1,1};
			tooltipColorShade[] = {0,0,0,0.65};
			
			class HitZone
			{
				left = 0.0;
				top = 0.0;
				right = 0.0;
				bottom = 0.0;
			};
			class TextPos
			{
				left = "0.25 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
				top = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) - 		(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)) / 2";
				right = 0.005;
				bottom = 0.0;
			};
			class Attributes
			{
				font = "PuristaLight";
				color = "#E5E5E5";
				align = "center";
				shadow = "false";
			};
			class ShortcutPos
			{
				left = "(6.25 * 			(			((safezoneW / safezoneH) min 1.2) / 40)) - 0.0225 - 0.005";
				top = 0.005;
				w = 0.0225;
				h = 0.03;
			};
			font = "PuristaMedium";
			text = "";
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1};
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1};
			action = "";
			textureNoShortcut = "";
		};


		class DA3F_Pix {
			shadow = 0;
			type = 0;
			style = 48;
			sizeEx = 0.023;
			font = "PuristaMedium";
			colorBackground[] = {};
			colorText[] = {};
			x = 0;
			y = 0;
			w = 0.2;
			h = 0.15;
			tooltipColorText[] = {1,1,1,1};
			tooltipColorBox[] = {1,1,1,1};
			tooltipColorShade[] = {0,0,0,0.65};
		};