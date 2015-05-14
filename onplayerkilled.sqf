_plyr = _this select 0;
_kilr = _this select 1;
playSound "dead";
_cameraD = "camera" camCreate getpos _plyr;
_cameraD cameraEffect ["internal","back"];
_cameraD camSetTarget vehicle _plyr;
_cameraD camSetRelPos [0.2,0.4,2];
_cameraD camSetFOV 0.143;
_cameraD camCommit 3;
waituntil {(camCommitted _cameraD)};
_cameraD camSetRelPos [0,8,3.5];
_cameraD camSetFOV 0.7;
_cameraD camCommit 10;
waituntil {(camCommitted _cameraD)};
enableEndDialog;





