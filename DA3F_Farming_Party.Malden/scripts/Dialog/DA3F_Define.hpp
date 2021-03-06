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
			animTextureNormal = "";
			animTextureDisabled = "";
			animTextureOver = "";
			animTextureFocused = "";
			animTexturePressed = "";
			animTextureDefault = "";
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
			onbuttonclick = "hint format['%1',ctrlText (_this select 0)]";
		};

		class DA3F_Btn_Close: DA3F_Btn {
			color[] = {0.95,0.25,0.1,1};
			colorFocused[] = {1,0.85,0.8,1};
			color2[] = {0,0.85,0.2,1};
			onbuttonclick = "closeDialog 0";
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

		class DA3F_StructuredText {
			type = 13;
			style = 0;
			x = 0;
			y = 0;
			h = 0.035;
			w = 0.1;
			text = "";
			size = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
			colorText[] = {1, 1, 1, 1.0};
			shadow = 1;

			class Attributes {
				font = "PuristaMedium";
				color = "#fffff0";
				align = "center";
				shadow = 1;
			};
		};		

		class DA3F_RscScrollBar
		{
			color[] = {0,0.8,0.9,0.45};
			colorActive[] = {0,0.8,0.9,0.45};
			colorDisabled[] = {0,0.6,0.9,0.25};
			thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
			arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
			arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
			border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
			shadow = 0;
			scrollSpeed = 0.06;
			width = 0;
			height = 0;
			autoScrollEnabled = 1;
			autoScrollSpeed = -1;
			autoScrollDelay = 5;
			autoScrollRewind = 0;
		};

		class DA3F_BackG {
			type = 0;
			style = 0;
			shadow = 1;
			x = 0;
			y = 0;
			h = 0.037;
			w = 0.3;
			colorShadow[] = {0, 0.2, 0.4, 0.35};
			font = "PuristaMedium";
			SizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
			text = "";
			colorText[] = {1, 1, 1, 1.0};
			colorBackground[] = {0, 0, 0, 0};
			linespacing = 1;
			tooltipColorText[] = {1,1,1,1};
			tooltipColorBox[] = {1,1,1,1};
			tooltipColorShade[] = {0,0,0,0.65};
		};

		class DA3F_RscListBox
		{
			style = 16;
			idc = -1;
			type = 5;
			w = 0.275;
			h = 0.04;
			font = "PuristaMedium";
			colorSelect[] = {1, 1, 1, 1};
			colorText[] = {0.1, 0.95, 1, 1};
			colorBackground[] = {0.08,0.18,0.22,0.28};
			colorSelect2[] = {1, 0.35, 0.1, 1};
			colorSelectBackground[] = {0.1, 0.95, 0.5, 0.5};
			colorSelectBackground2[] = {1, 1, 1, 0.5};
			colorScrollbar[] = {0.2, 0.2, 0.2, 1};
			colorPicture[] = {1,1,1,1};
			colorPictureSelected[] = {1,1,1,1};
			colorPictureDisabled[] = {1,1,1,1};
			arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
			arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
			wholeHeight = 0.45;
			rowHeight = 0.04;
			color[] = {0.7, 0.7, 0.7, 1};
			colorActive[] = {0,0,0,1};
			colorDisabled[] = {0,0,0,0.3};
			sizeEx = 0.035;
			soundSelect[] = {"",0.1,1};
			soundExpand[] = {"",0.1,1};
			soundCollapse[] = {"",0.1,1};
			maxHistoryDelay = 1;
			autoScrollSpeed = -1;
			autoScrollDelay = 5;
			autoScrollRewind = 0;
			tooltipColorText[] = {1,1,1,1};
			tooltipColorBox[] = {1,1,1,1};
			tooltipColorShade[] = {0,0,0,0.65};
			class ListScrollBar: DA3F_RscScrollBar
			{
				color[] = {0,0.3,0.4,0.2};
				autoScrollEnabled = 1;
			};
		};		

		class DA3F_Ctrl_Grp {
			type = 15;
			idc = -1;
			x = 0;
			y = 0;
			w = 1;
			h = 1;
			shadow = 0;
			style = 16;

			class VScrollBar : DA3F_RscScrollBar
			{
				width = 0.021;
				autoScrollEnabled = 1;
			};

			class HScrollBar : DA3F_RscScrollBar
			{
				height = 0.028;
			};

			class Controls {};
		};

		class DA3F_Edit {
			type = 2;
			style = 0x00 + 0x40;
			font = "PuristaMedium";
			shadow = 2;
			text = "";
			sizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
			colorBackground[] = {0, 0, 0, 1};
			soundSelect[] = {"",0.1,1};
			soundExpand[] = {"",0.1,1};
			colorText[] = {0, 0.9, 0.95, 1};
			colorDisabled[] = {1, 0.7, 0.6, 0.25};
			autocomplete = false;
			colorSelection[] = {0,0.5,0.45, 0.3}; //"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])"
			canModify = 1;
		};


				class Btn_Down: DA3F_Btn
				{
					idc		= 1531;
					text = "AA";
				};

				class Btn_Up: DA3F_Btn
				{
					idc		= 1532;
					text = "BB";
				};	

			class DA3F_Edit_Btn: DA3F_Edit
			{
				type = 2;
				style = 0x00 + 0x40;
				font = "PuristaMedium";
				shadow = 2;
				text = "";
				sizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
				colorBackground[] = {0, 0, 0, 1};
				soundSelect[] = {"",0.1,1};
				soundExpand[] = {"",0.1,1};
				colorText[] = {0, 0.9, 0.95, 1};
				colorDisabled[] = {1, 0.7, 0.6, 0.25};
				autocomplete = false;
				colorSelection[] = {0,0.5,0.45, 0.3}; //"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])"
				canModify = 1;
				IdcDown	= 1531;
				IdcUp	= 1532;
			};

		class DA3F_Progress
		{
			type = 8;
			style = 0;
			x = 0.344;
			y = 0.619;
			w = 0.313726;
			h = 0.0261438;
			texture = "";
			shadow = 2;
			colorFrame[] = {0.8, 0.7, 0.65, 1};
			colorBackground[] = {0.2,0.5,0.1,0.7};
			colorBar[] = {0.1,0.45,0.65,0.75};
		};

		class DA3F_Combo {
			style = 16;
			type = 4;
			x = 0;
			y = 0;
			w = 0.12;
			h = 0.035;
			shadow = 0;
			colorSelect[] = {0, 0, 0, 1};
			soundExpand[] = {"",0.1,1};
			colorText[] = {0.95, 0.95, 0.95, 1};
			soundCollapse[] = {"",0.1,1};
			maxHistoryDelay = 1;
			colorBackground[] = {0.4,0.4,0.4,0.4};
			colorSelectBackground[] = {1, 1, 1, 0.7};
			colow_Rscrollbar[] = {1, 0, 0, 1};
			soundSelect[] = {
					"", 0.000000, 1
			};
			arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
			arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
			wholeHeight = 0.45;
			color[] = {1, 1, 1, 1};
			colorActive[] = {1, 0, 0, 1};
			colorDisabled[] = {1, 1, 1, 0.25};
			font = "PuristaMedium";
			sizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";

			class ComboScrollBar : DA3F_RscScrollBar {};
		};		