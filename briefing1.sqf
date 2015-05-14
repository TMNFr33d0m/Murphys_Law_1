///The Mission: 
playSound "briefing1";
hint "Welcome to Camp Tulsa, Lieutenant. You haven't been told your assignment, yet, have you? Lemme fill you in.";
sleep 7.0;

hint "You are going to assist my regimen in keeping peace in the region. 
We are directed by NATO to assist the local forces as they push back invasions from the nearby imperialist bastards 
that have been raping and pillaging poor little Altis.";
sleep 12.0;
hint "First thing's first, you guys look like shit. Head on into the Central Command building over there. 
See the R.O., he'll get you sorted out with some fresh gear. 
Load up and meet us at the helipad. local forces in the nearby town have reported seeing enemy forces in the region. 
We are deploying to reinforce.";
sleep 12.0;
hint "";
meet1 setTaskState "Succeeded";
////
RO = player createSimpleTask ["Speak to the Requisitions Officer"];
RO setSimpleTaskDescription ["Since you are an elite operator, you can requisition any gear within our arsenal from the Requisitions Officer. He should be in his office. Go and see him.","Speak with the R.O.","Speak with the requisitions officer"];
RO setSimpleTaskDestination (getMarkerPos "RO");
RO setTaskState "Assigned";
Player setCurrentTask RO;
////
ROtrg=createTrigger["EmptyDetector",(getMarkerPos "RO")];
ROtrg setTriggerArea[5,5,0,false];
ROtrg setTriggerActivation["WEST","PRESENT",false];
ROtrg triggerAttachVehicle [player];
ROtrg setTriggerStatements["this","nul1=execVM 'reqscene.sqf'", ""]; 
////
waitUntil {triggeractivated ROtrg};
////
RO setTaskState "Succeeded";
////
AAF1 = player createSimpleTask ["Use air transport or move in by ground forces to the AAF base and reinforce the position."];
AAF1 setSimpleTaskDescription ["The colonel has ordered me and my team to reinforce the local military forces in a nearby village.", "Reinforce the AAF Camp Disappointment", "Reinforce the AAF"];
AAF1 setSimpleTaskDestination (getMarkerPos "AAF");
AAF1 setTaskState "Assigned";
////
P1trg=createTrigger["EmptyDetector",(getMarkerPos "patrol1")];
P1trg setTriggerArea[450,450,0,false];
P1trg setTriggerActivation["WEST","PRESENT",false];
P1trg triggerAttachVehicle [player];
P1trg setTriggerStatements["this","saveGame", ""];
//// 
waitUntil {triggeractivated patrol1trg};
patrol1 = player createSimpleTask ["Patrol the assigned sector and reinforce the local forces"];
patrol1 setSimpleTaskDescription ["The colonel has ordered you to patrol the nearby sector and repel any attempts to disturb the peace in the city while reinforcing the local military in defending it.", "Patrol the assigned sector", "Patrol the Sector"];
patrol1 setSimpleTaskDestination (getMarkerPos "patrol1");
patrol1 setTaskState "Assigned";
Player setCurrentTask patrol1;