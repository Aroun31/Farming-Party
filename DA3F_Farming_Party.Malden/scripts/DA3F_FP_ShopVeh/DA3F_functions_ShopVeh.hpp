	/*
    *
    *       Project :  
    *              Farming Party 
    *
    *       Team   :
    *               Dev'Arma 3 France / http://devarma3france.fr/
    *
    *       Author  :
    *               [DA3F] Aroun Le BriCodeur
    *
    *       File :
    *           DA3F_functions.hpp
    *
    *       DESCRIPTION :
    *               -------------
    *       ARGUMENTS :
    *               -------------
    *       EXEMPLES :
    *               -------------
    *
	*/

        class DA3F_VehShop
        {
            tag="DA3F";
            class Shop_vehicles
            {
                file = "scripts\DA3F_FP_ShopVeh";
                    class init_ShopVeh {}; 
                    class init_Garage {}; 
                    class addAction_PnjVeh {}; 
                    class ValideAchat {}; 
                    class ShowInfo {}; 
                    class Create_New_Plaque {}; 
                    class vehicleGoInGarage {}; 
                    class SpawnMyVeh {}; 
            };
        };