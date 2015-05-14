///briefing 1 
playSound "Recqscene1";
hint "Requisition Officer: Colonel told me you were coming. You really *DO* look like shit. 
Okay, we have a pretty wide selection here. I can get you anything you want.";
sleep 6.0;
hint "Get what you need, save a loadout for later if you like, and then head on over to the helipad.";
sleep 8.0;
hint "Here, this is what I got, man. Choose wisely and load up. It's rough out there I hear.";
sleep 3.0;
hint ""; 
nul1=execVM "VAS\open.sqf"; 
RO setTaskState "Succeeded";
reqo addAction["<t color='006600'>Requisition Equipment</t>", "VAS\open.sqf"];
sleep 3.0;
hint "It's a long way out to the village you need to patrol. You recon boys have air transport you can call in using your
radio, right? Yeah...I'd be using that.";
sleep 10.0;
hint "You can find the requisition officer hanging around base. You may requistion gear from him at any time. His live location at any given time is marked on your map.";
HP1 = player createSimpleTask ["Move to the helipad and staging area."];
HP1 setSimpleTaskDescription ["Move to the helipad and staging area. Read the short tutorial on helicopter usage. CHoose if you want to use air transport or the nearby hunter, and then make your way to the Area of Operations.","Move to the helipad","Move to the Helipad."];
HP1 setSimpleTaskDestination (getMarkerPos "HP11");
HP1 setTaskState "Assigned";
Player setCurrentTask HP1;
hint "Get your ass to the helipad.";
