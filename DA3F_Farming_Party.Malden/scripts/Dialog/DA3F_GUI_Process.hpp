class DA3F_GUI_Process
{

	idd 	= 280418;
	author	= "@roun";
	name	= "DA3F_GUI_Process";

	class controlsBackground
	{
		class DA3F_backG: DA3F_BackG
		{
			idc = 1000;
			x = 0.270313 * safezoneW + safezoneX;
			y = 0.0660001 * safezoneH + safezoneY;
			w = 0.459375 * safezoneW;
			h = 0.882 * safezoneH;
			colorBackground[] = {-1,0.15,0.2,0.7};
		};
		class DA3F_TxtHeader: DA3F_StructuredText
		{
			idc = 1100;
			text = "<t align='center' size='1.3' >Usine de processe<t/>"; //--- ToDo: Localize;
			x = 0.309687 * safezoneW + safezoneX;
			y = 0.094 * safezoneH + safezoneY;
			w = 0.3675 * safezoneW;
			h = 0.056 * safezoneH;
		};
		class DA3F_Txt_inv: DA3F_StructuredText
		{
			idc = 1101;
			text = "<t align='center' size='1.3' >Inventaire<t/>"; //--- ToDo: Localize;
			x = 0.296562 * safezoneW + safezoneX;
			y = 0.178 * safezoneH + safezoneY;
			w = 0.196875 * safezoneW;
			h = 0.042 * safezoneH;
		};
		class DA3F_Txt_Usine: DA3F_StructuredText
		{
			idc = 1102;
			text = "<t align='center' size='1.3' >Usine<t/>"; //--- ToDo: Localize;
			x = 0.296562 * safezoneW + safezoneX;
			y = 0.416 * safezoneH + safezoneY;
			w = 0.196875 * safezoneW;
			h = 0.042 * safezoneH;
		};

		class DA3F_Txt_Progress: DA3F_StructuredText
		{
			idc = 1104;
			text = "<t align='center' size='1.3' >Procédure<t/>"; //--- ToDo: Localize;
			x = 0.513125 * safezoneW + safezoneX;
			y = 0.5 * safezoneH + safezoneY;
			w = 0.18375 * safezoneW;
			h = 0.042 * safezoneH;
		};

		class DA3F_Txt_Silo: DA3F_StructuredText
		{
			idc = 1105;
			text = "<t align='center' size='1.3' >Silo<t/>"; //--- ToDo: Localize;
			x = 0.296562 * safezoneW + safezoneX;
			y = 0.668 * safezoneH + safezoneY;
			w = 0.196875 * safezoneW;
			h = 0.042 * safezoneH;
		};					
	};


	class controls
	{

		class DA3F_ListInv: DA3F_RscListBox
		{
			idc = 1500;
			x = 0.296562 * safezoneW + safezoneX;
			y = 0.22 * safezoneH + safezoneY;
			w = 0.196875 * safezoneW;
			h = 0.168 * safezoneH;
		};

		class DA3F_ListUsine: DA3F_RscListBox
		{
			idc = 1501;
			x = 0.296562 * safezoneW + safezoneX;
			y = 0.458 * safezoneH + safezoneY;
			w = 0.196875 * safezoneW;
			h = 0.168 * safezoneH;
		};

		class DA3F_ListItemPur: DA3F_RscListBox
		{
			idc = 1502;
			x = 0.296562 * safezoneW + safezoneX;
			y = 0.71 * safezoneH + safezoneY;
			w = 0.196875 * safezoneW;
			h = 0.168 * safezoneH;
		};

		class DA3F_btn_Transfert: DA3F_Btn
		{
			idc = 2412;
			text = "Mettre dans l'usine"; //--- ToDo: Localize;
			x = 0.53125 * safezoneW + safezoneX;
			y = 0.682 * safezoneH + safezoneY;
			w = 0.15 * safezoneW;
			h = 0.07 * safezoneH;
			onbuttonClick = "_this call DA3F_fnc_addItemsInUsine";
		};
		class RscControlsGroup_2300: DA3F_Ctrl_Grp
		{
			idc = 2300;
			x = 0.513125 * safezoneW + safezoneX;
			y = 0.192 * safezoneH + safezoneY;
			w = 0.190312 * safezoneW;
			h = 0.196 * safezoneH;
			class Controls
			{
				class DA3F_Txt_info: DA3F_StructuredText
				{
					idc = 1103;
					text = "<t align='center' size='1.3' >Informations<t/>"; //--- ToDo: Localize;
					x = 0.00656196 * safezoneW;
					y = 0.014 * safezoneH;
					w = 0.177187 * safezoneW;
					h = 0.168 * safezoneH;
				};
			};
		};
		class DA3F_Action: DA3F_Btn
		{
			idc = 2400;
			text = "Action"; //--- ToDo: Localize;
			x = 0.513125 * safezoneW + safezoneX;
			y = 0.584 * safezoneH + safezoneY;
			w = 0.18375 * safezoneW;
			h = 0.056 * safezoneH;
		};
		class DA3F_Progress: DA3F_Progress
		{
			idc = 1800;
			x = 0.513125 * safezoneW + safezoneX;
			y = 0.556 * safezoneH + safezoneY;
			w = 0.18375 * safezoneW;
			h = 0.014 * safezoneH;
		};
		class DA3F_Close: DA3F_Btn_Close
		{
			idc = 2401;
			text = "X"; //--- ToDo: Localize;
			x = 0.729688 * safezoneW + safezoneX;
			y = 0.066 * safezoneH + safezoneY;
			w = 0.0196875 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class DA3F_btn_Down: DA3F_Btn
		{
			idc = 2402;
			text = "-"; //--- ToDo: Localize;
			x = 0.513125 * safezoneW + safezoneX;
			y = 0.416 * safezoneH + safezoneY;
			w = 0.0459375 * safezoneW;
			h = 0.07 * safezoneH;
		};

		class DA3F_Txt_Temp: DA3F_StructuredText
		{
			onload = ""
			idc = 1106;
			text = "<t align='center' size='0.9' >Température<t/>"; //--- ToDo: Localize;
			x = 0.559062 * safezoneW + safezoneX;
			y = 0.416 * safezoneH + safezoneY;
			w = 0.091875 * safezoneW;
			h = 0.07 * safezoneH;
		};	

		class DA3F_btn_Up: DA3F_Btn
		{
			idc = 2403;
			text = "+"; //--- ToDo: Localize;
			x = 0.650937 * safezoneW + safezoneX;
			y = 0.416 * safezoneH + safezoneY;
			w = 0.0459375 * safezoneW;
			h = 0.07 * safezoneH;
		};
	
		class DA3F_EditQuantit: DA3F_Edit
		{
			onload	= "";
			idc = 1400;
			text = "x1";
			x = 0.57875 * safezoneW + safezoneX;
			y = 0.627 * safezoneH + safezoneY;
			w = 0.0525 * safezoneW;
			h = 0.028 * safezoneH;
			canModify = 0;
		};

		class DA3F_btnMin: DA3F_Btn
		{
			onload	= "";
			idc 	= 2404;
			text 	= "min"; //--- ToDo: Localize;
			x 		= 0.52625 * safezoneW + safezoneX;
			y 		= 0.627 * safezoneH + safezoneY;
			w 		= 0.0525 * safezoneW;
			h 		= 0.028 * safezoneH;
			onbuttonClick = "_this call DA3F_fnc_UpDownValue;";
		};

		class DA3F_btn_max: DA3F_Btn
		{
			onload	= "";
			idc 	= 2405;
			text 	= "max"; //--- ToDo: Localize;
			x 		= 0.63125 * safezoneW + safezoneX;
			y 		= 0.627 * safezoneH + safezoneY;
			w 		= 0.0525 * safezoneW;
			h 		= 0.028 * safezoneH;
			onbuttonClick = "_this call DA3F_fnc_UpDownValue;";
		};		

		class DA3F_btn_RecupAll: DA3F_Btn
		{
			idc = 2406;
			text = "Tout récup"; //--- ToDo: Localize;
			x = 0.519688 * safezoneW + safezoneX;
			y = 0.85 * safezoneH + safezoneY;
			w = 0.170625 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class DA3F_btn_Recup: DA3F_Btn
		{
			idc = 2407;
			text = "récup Quantit"; //--- ToDo: Localize;
			x = 0.519688 * safezoneW + safezoneX;
			y = 0.808 * safezoneH + safezoneY;
			w = 0.170625 * safezoneW;
			h = 0.028 * safezoneH;
		};

		class DA3F_Combo_1: DA3F_Combo
		{
			idc = 2100;
			x = 0.519688 * safezoneW + safezoneX;
			y = 0.724 * safezoneH + safezoneY;
			w = 0.170625 * safezoneW;
			h = 0.028 * safezoneH;
		};

		class DA3F_Combo_2: DA3F_Combo
		{
			idc = 2101;
			x = 0.519688 * safezoneW + safezoneX;
			y = 0.766 * safezoneH + safezoneY;
			w = 0.170625 * safezoneW;
			h = 0.028 * safezoneH;
			show = false;
		};
	};
};