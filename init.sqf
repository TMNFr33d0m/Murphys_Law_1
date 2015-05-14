execVM "briefing.sqf";
 
[] spawn {
while{not isnull reqo} do {"ROFLW" setmarkerpos getpos reqo; sleep 0.5;};
};
