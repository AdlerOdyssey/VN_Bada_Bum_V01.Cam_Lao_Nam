if (didJIP) then {
    [player] remoteExec ["grad_common_fnc_addJipToZeus",2,false];
};

["InitializePlayer", [player,true]] call BIS_fnc_dynamicGroups;
grad_template_ratingEH = player addEventHandler ["HandleRating",{0}];


//Insignia 
[player,"vn_b_insignia_1_cav_01"] call BIS_fnc_setUnitInsignia;

// Unbesigbarkeit

ace_player addEventHandler ["GetInMan", {
    params ["_unit", "_role", "_vehicle", "_turret"];

    if (vehicleVarName _vehicle in ["air_1", "air_2"]) then {
        _unit allowDamage false;
    };
}];

ace_player addEventHandler ["GetOutMan", {
    params ["_unit", "_role", "_vehicle", "_turret"];

    if (vehicleVarName _vehicle in ["air_1", "air_2"]) then {
        _unit allowDamage true;
    };
}];