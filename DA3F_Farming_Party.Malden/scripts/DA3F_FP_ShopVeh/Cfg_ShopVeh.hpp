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
    *           Cfg_ShopVeh.hpp
    *
    *       DESCRIPTION :
    *               -------------
    *       ARGUMENTS :
    *               -------------
    *       EXEMPLES :
    *               -------------
    *
	*/


    class CfgShopVehicles
    {
	    class Pnj_Concess
	    {
	    	class Shop_Entrep_1
	    	{
	    		condition 	= "";
	    		SpawnMarker	= "DA3F_Mrk_Sp_VehEntrep_01";
	    		vehicles[]	= {
					{"C_Van_01_transport_F",1500,500,""},
					{"C_Van_01_box_F",1500,500,""},
					{"C_Van_02_vehicle_F",1500,500,"DA3F_lvl_Farm >= 5"},
					{"C_Truck_02_transport_F",1500,500,"DA3F_lvl_Farm >= 5"},
					{"I_Truck_02_transport_F",1500,500,"DA3F_lvl_Farm >= 5"}
	    		};
	    	};

	    	class Shop_Entrep_2
	    	{
	    		condition 	= "";
	    		SpawnMarker	= "DA3F_Mrk_Sp_VehEntrep_02";
	    		vehicles[]	= {
					{"C_Van_01_transport_F",1500,500,""},
					{"C_Van_01_box_F",1500,500,""},
					{"C_Van_02_vehicle_F",1500,500,"DA3F_lvl_Farm >= 2"},
					{"C_Truck_02_transport_F",1500,500,"DA3F_lvl_Farm >= 2"},
					{"I_Truck_02_transport_F",1500,500,"DA3F_lvl_Farm >= 2"}
	    		};
	    	};

	    	class Shop_Coope
	    	{
	    		condition 	= "";
	    		SpawnMarker	= "DA3F_Mrk_Sp_VehCoope_01";
	    		vehicles[]	= {
					{"C_Van_01_transport_F",1500,500,""},
					{"C_Van_01_box_F",1500,500,""},
					{"C_Van_02_vehicle_F",1500,500,"DA3F_lvl_Farm >= 2"},
					{"C_Truck_02_transport_F",1500,500,"DA3F_lvl_Farm >= 2"},
					{"I_Truck_02_transport_F",1500,500,"DA3F_lvl_Farm >= 2"},
					{"C_Truck_02_covered_F",1500,500,"DA3F_lvl_Farm >= 4"},
					{"C_Truck_02_box_F",1500,500,"DA3F_lvl_Farm >= 4"},
					{"B_Truck_01_covered_F",1500,500,"DA3F_lvl_Farm >= 6"},
					{"B_Truck_01_box_F",1500,500,"DA3F_lvl_Farm >= 6"}
	    		};
	    	};
	    };

	    class Vehicles_Info
	    {
	    	class C_Van_01_transport_F
	    	{
				Item_MaxCoffre = 150;	    		
	    	};
	    	
	    	class C_Van_01_box_F
	    	{
				Item_MaxCoffre = 150;	    		
	    	};
	    	
	    	class C_Van_02_vehicle_F
	    	{
				Item_MaxCoffre = 150;	    		
	    	};
	    	
	    	class C_Truck_02_transport_F
	    	{
				Item_MaxCoffre = 150;	    		
	    	};
	    	
	    	class I_Truck_02_transport_F
	    	{
				Item_MaxCoffre = 150;	    		
	    	};
	    	
	    	class C_Truck_02_covered_F
	    	{
				Item_MaxCoffre = 150;	    		
	    	};
	    	
	    	class C_Truck_02_box_F
	    	{
				Item_MaxCoffre = 150;	    		
	    	};
	    	
	    	class B_Truck_01_covered_F
	    	{
				Item_MaxCoffre = 150;	    		
	    	};
	    	
	    	class B_Truck_01_box_F
	    	{
				Item_MaxCoffre = 150;	    		
	    	};
	    	
	    };
    };

