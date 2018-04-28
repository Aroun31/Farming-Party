class DA3F_GUI_PlayerMenu
{
	Author 	= "@roun";
	name 	= "DA3F_GUI_PlayerMenu";
	idd 	= 2604182;
	class controlsBackground
	{
		class DA3F_BackG: DA3F_BackG
		{
			idc = 1000;
			x = 0.322812 * safezoneW + safezoneX;
			y = 0.276 * safezoneH + safezoneY;
			w = 0.354375 * safezoneW;
			h = 0.448 * safezoneH;
			colorBackground[] = {-1,0.15,0.2,0.7};
		};
		class DA3F_txt_head: DA3F_StructuredText
		{
			idc = 1100;
			text = "<t align='center' size='1.8'>Menu interaction</t>"; //--- ToDo: Localize;
			x = 0.329375 * safezoneW + safezoneX;
			y = 0.29 * safezoneH + safezoneY;
			w = 0.34125 * safezoneW;
			h = 0.056 * safezoneH;
		};
	};

	class controls
	{
		class DA3F_List_ItemsVirt: DA3F_RscListBox
		{
			idc = 1500;
			x = 0.335938 * safezoneW + safezoneX;
			y = 0.36 * safezoneH + safezoneY;
			w = 0.177187 * safezoneW;
			h = 0.35 * safezoneH;
			sizeEx = 0.035;
			colortext[] = {-1,0.85,0.9,0.95};
			colorBackground[] = {-1,0.1,0.2,0.35};
		};
		class DA3F_Btn_01: DA3F_Btn
		{
			idc = 2400;
			text = "Donner"; //--- ToDo: Localize;
			x = 0.519688 * safezoneW + safezoneX;
			y = 0.514 * safezoneH + safezoneY;
			w = 0.065625 * safezoneW;
			h = 0.028 * safezoneH;
			onbuttonclick = "hint 'interaction à venir'";
		};
		class DA3F_Btn_02: DA3F_Btn
		{
			idc = 2401;
			text = "Supprimer"; //--- ToDo: Localize;
			x = 0.598437 * safezoneW + safezoneX;
			y = 0.514 * safezoneH + safezoneY;
			w = 0.065625 * safezoneW;
			h = 0.028 * safezoneH;
			onbuttonclick = "hint 'interaction à venir'";
		};
		class DA3F_Btn_03: DA3F_Btn
		{
			idc = 2402;
			text = "action 3"; //--- ToDo: Localize;
			x = 0.519688 * safezoneW + safezoneX;
			y = 0.556 * safezoneH + safezoneY;
			w = 0.065625 * safezoneW;
			h = 0.028 * safezoneH;
			onbuttonclick = "hint format['%1',ctrlText (_this select 0)]";
		};
		class DA3F_Btn_04: DA3F_Btn
		{
			idc = 2403;
			text = "action 4"; //--- ToDo: Localize;
			x = 0.598437 * safezoneW + safezoneX;
			y = 0.556 * safezoneH + safezoneY;
			w = 0.065625 * safezoneW;
			h = 0.028 * safezoneH;
			onbuttonclick = "hint format['%1',ctrlText (_this select 0)]";
		};
		class DA3F_Btn_05: DA3F_Btn
		{
			idc = 2404;
			text = "action 5"; //--- ToDo: Localize;
			x = 0.519688 * safezoneW + safezoneX;
			y = 0.598 * safezoneH + safezoneY;
			w = 0.065625 * safezoneW;
			h = 0.028 * safezoneH;
			onbuttonclick = "hint format['%1',ctrlText (_this select 0)]";
		};
		class DA3F_Btn_06: DA3F_Btn
		{
			idc = 2405;
			text = "action 6"; //--- ToDo: Localize;
			x = 0.598437 * safezoneW + safezoneX;
			y = 0.598 * safezoneH + safezoneY;
			w = 0.065625 * safezoneW;
			h = 0.028 * safezoneH;
			onbuttonclick = "hint format['%1',ctrlText (_this select 0)]";
		};
		class DA3F_Btn_07: DA3F_Btn
		{
			idc = 2406;
			text = "action 7"; //--- ToDo: Localize;
			x = 0.519688 * safezoneW + safezoneX;
			y = 0.64 * safezoneH + safezoneY;
			w = 0.065625 * safezoneW;
			h = 0.028 * safezoneH;
			onbuttonclick = "hint format['%1',ctrlText (_this select 0)]";
		};
		class DA3F_Btn_08: DA3F_Btn
		{
			idc = 2407;
			text = "action 8"; //--- ToDo: Localize;
			x = 0.598437 * safezoneW + safezoneX;
			y = 0.64 * safezoneH + safezoneY;
			w = 0.065625 * safezoneW;
			h = 0.028 * safezoneH;
			onbuttonclick = "hint format['%1',ctrlText (_this select 0)]";
		};
		class DA3F_Btn_09: DA3F_Btn
		{
			idc = 2408;
			text = "Action 9"; //--- ToDo: Localize;
			x = 0.519688 * safezoneW + safezoneX;
			y = 0.682 * safezoneH + safezoneY;
			w = 0.065625 * safezoneW;
			h = 0.028 * safezoneH;
			onbuttonclick = "hint format['%1',ctrlText (_this select 0)]";
		};
		class DA3F_Btn_10: DA3F_Btn
		{
			idc = 2409;
			text = "action 10"; //--- ToDo: Localize;
			x = 0.598437 * safezoneW + safezoneX;
			y = 0.682 * safezoneH + safezoneY;
			w = 0.065625 * safezoneW;
			h = 0.028 * safezoneH;
			onbuttonclick = "hint format['%1',ctrlText (_this select 0)]";
		};
		class DA3F_grpctrl: DA3F_Ctrl_Grp
		{
			idc = 2300;
			x = 0.519688 * safezoneW + safezoneX;
			y = 0.36 * safezoneH + safezoneY;
			w = 0.144375 * safezoneW;
			h = 0.14 * safezoneH;
			class Controls
			{
				class DA3F_txt_infoPlayer: DA3F_StructuredText
				{
					idc = 1101;
					text = "réception des données"; //--- ToDo: Localize;
					x = 0.00656199 * safezoneW;
					y = 0.014 * safezoneH;
					w = 0.13125 * safezoneW;
					h = 0.112 * safezoneH;
				};
			};
		};
		class DA3F_btn_Close: DA3F_Btn_Close
		{
			idc = 2410;
			text = "X"; //--- ToDo: Localize;
			x = 0.677188 * safezoneW + safezoneX;
			y = 0.276 * safezoneH + safezoneY;
			w = 0.0196875 * safezoneW;
			h = 0.028 * safezoneH;
		};		
	};
};

