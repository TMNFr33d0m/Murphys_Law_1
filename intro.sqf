playSound "intro";
titleText ["Murphy's Law - A multi-episode series by [TMN] fr33d0m : www.tmnclan.com", "BLACK FADED", 0.4];
_camera1 = "camera" camcreate [12424,15440,30]
_camera1 cameraeffect ["internal", "back"]
showCinemaBorder true;
lt setCameraInterest 100;
~25
showCinemaBorder false;
_camera2 = "camera" camcreate [12317,15691,15]
_camera2 cameraeffect ["internal", "back"]
_camera2 camPrepareTarget lt;
_camera2 camCommitPrepared 10;
camDestroy _camera1;
~11
_camera3 = "camera" camcreate [12460,15866,20]
_camera3 cameraeffect ["internal", "back"]
camDestroy _camera2;
_camera3 camPrepareTarget lt;
_camera3 camCommitPrepared 25;
~25
_camera4 = "camera" camcreate [12755,16273,5]
_camera4 cameraeffect ["internal", "back"]
camDestroy _camera3;
_Camera4 camPrepareTarget lt;
_camera4 camCommitPrepared 12;
~12
_camera5 = "camera" camcreate [12772,16604,5]
_camera5 cameraeffect ["internal", "back"]
CamDestroy _camera4;
_camera5 camPrepareTarget guard;
_camera5 camCommitPrepared 4;
camDestroy _Camera4;
~10
_camera6 = "camera" camcreate [12768,16598,10]
_camera6 cameraeffect ["internal", "back"]
camDestroy _camera5;
_camera6 camPrepareTarget lt;
_camera6 camCommitPrepared 10;
~33
camDestroy _camera6
titleText ["Anything that can go wrong, will go wrong...", "BLACK FADED", 1.5];
~2
titleText ["M U R P H Y ' S    L A W", "BLACK FADED", 1.5];
~2
titleTest [" P A R T    O N E  -  R E I N F O R C E   T H E   A A F ", "BLACK FADED", 1.5];
~2
Player cameraEffect ["terminate", "back"]
endMission "END1";
Exit; 

