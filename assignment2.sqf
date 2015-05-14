patrol1 setTaskState "Succeeded";
saveGame;
hint "Altis Armed Forces to NATO: The enemy has been repelled to a point where we feel comfortable taking security in the area back
under our control. Thank you.";
sleep 10.0;
hint "Return to Base. Remember that you can call in air support to extract from the field back to back utilizing the method in the tutorial. This will work for all future Murphy's Law series missions.";

RT = player createSimpleTask ["Return to Camp Tulsa"];
RT setSimpleTaskDescription ["You have successfully repelled the CSAT invasion on Athira. Return to Camp Tulsa to Rearm and Debrief","Return to base","Return to base"];
RT setSimpleTaskDestination (getMarkerPos "RT1");
RT setTaskState "Assigned";
player setCurrentTask RT;

RT1TRG=createTrigger["EmptyDetector",(getMarkerPos "RT1")];
RT1TRG setTriggerArea[5,5,0,false];
RT1TRG setTriggerActivation["WEST","PRESENT",false];
RT1TRG triggerAttachVehicle [player];
RT1TRG setTriggerStatements["this","saveGame",""];
sleep 0.5;
waitUntil {triggeractivated RT1TRG};
RT setTaskState "Succeeded";
hint "Mission Complete! Check out Episode 2: Night Shift. Available now and in the Steam Collection";
sleep 5.0;
endMission "end1";

