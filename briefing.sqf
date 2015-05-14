waitUntil { !isNil {player} };
waitUntil { player == player };

switch (side player) do
{

case WEST: // BLUFOR briefing goes here
{
player createDiaryRecord ["Diary", ["Mission", "Your unit has been sent to Altis for a peacekeeping mission. You are to assist Altis forces in repelling the enemy invasion."]];


//Speak to Commanding Officer
meet1 = player createSimpleTask ["Speak to the Commanding Officer"];
meet1 setSimpleTaskDescription ["You've just landed in Altis, and transported in to Camp Tulsa. Speak to the Colonel and get your orders.","Speak with the C.O.","Speak with the Commanding Officer"];
meet1 setSimpleTaskDestination (getMarkerPos "meet1");
meet1 setTaskState "Assigned";
player setCurrentTask meet1;
};


case EAST: // OPFOR briefing goes here
{
};


case RESISTANCE: // RESISTANCE/INDEPENDENT briefing goes here
{
};


case CIVILIAN: // CIVILIAN briefing goes here
{
};
}; 