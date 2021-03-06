// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: initServer.sqf
//	@file Author: AgentRev

"BIS_fnc_MP_packet" addPublicVariableEventHandler compileFinal preprocessFileLineNumbers "server\antihack\filterExecAttempt.sqf";

private ["_objs"];
_objs = [
	["Land_Timbers_F",[2435.81,5698.05,-0.000358582],30.8076,[[0.512157,0.858892,0],[0,0,1]],false],
	["Land_CncBarrier_F",[2435.28,5692.24,0.000350952],26.6998,[[0.449316,0.893373,0],[0,0,1]],false],
	["Land_CncBarrier_F",[2441.03,5690.47,0.000350952],26.6998,[[0.449316,0.893373,0],[0,0,1]],false],
	["Land_CncBarrier_F",[2437.48,5690.97,0.000350952],26.6998,[[0.449316,0.893373,0],[0,0,1]],false],
	["Land_CncBarrier_F",[2438.89,5703.1,5.34058e-005],26.6998,[[0.449316,0.893373,0],[0,0,1]],false],
	["Land_CncBarrier_F",[2441.25,5701.97,0.000350952],26.6998,[[0.449316,0.893373,0],[0,0,1]],false],
	["Land_CncBarrier_F",[2448.7,5699.23,0.000350952],26.6998,[[0.449316,0.893373,0],[0,0,1]],false],
	["Land_CncBarrier_F",[2446.26,5700.34,0.000350952],26.6998,[[0.449316,0.893373,0],[0,0,1]],false],
	["Land_CncBarrier_F",[2443.57,5700.81,0.000350952],26.6998,[[0.449316,0.893373,0],[0,0,1]],false],
	["Land_CncBarrier_F",[2443.69,5689.02,0.000350952],26.6998,[[0.449316,0.893373,0],[0,0,1]],false],
	["Land_CncBarrier_F",[2446.46,5690.95,0.000282288],118.961,[[0.874949,-0.484214,0],[0,-0,1]],false],
	["Land_CncBarrier_F",[2447.35,5692.67,0.000282288],118.961,[[0.874949,-0.484214,0],[0,-0,1]],false],
	["Land_CncBarrier_F",[2445.75,5688.99,0.000282288],118.961,[[0.874949,-0.484214,0],[0,-0,1]],false],
	["Land_Stone_pillar_F",[2438.12,5702.59,4.57764e-005],26.6998,[[0.449316,0.893373,0],[0,0,1]],false],
	["Land_HBarrier_Big_F",[4488.6,6708.34,0.00119019],359,[[-0.0174521,0.999848,0],[0,0,1]],false],
	["Land_HBarrier_Big_F",[4485.61,6705.62,0.00119019],359,[[-0.0174521,0.999848,0],[0,0,1]],false],
	["Land_HBarrier_Big_F",[4488.06,6701.51,0.00119019],359,[[-0.0174521,0.999848,0],[0,0,1]],false],
	["Land_HBarrier_Big_F",[4485.81,6700.96,0],0,[[0,1,0],[0,0,1]],false],
	["Land_HBarrier_Big_F",[4488.02,6708.44,0.00119019],359,[[-0.0174521,0.999848,0],[0,0,1]],false],
	["Land_HBarrier_Big_F",[4482.51,6705.84,-0.00263977],287.116,[[-0.955711,0.294308,0],[0.132237,0.429416,0.893373]],false],
	["Land_HBarrier_1_F",[4483.34,6698.23,0],0,[[0,1,0],[0,0,1]],false],
	["Land_HBarrier_1_F",[4483.85,6699.73,0],0,[[0,1,0],[0,0,1]],false],
	["Land_HBarrier_1_F",[4482.38,6699.05,0],0,[[0,1,0],[0,0,1]],false]
];

{
	private ["_obj"];
	_obj = createVehicle [_x select 0, [0,0,0], [], 0, "CAN_COLLIDE"];
	if (_x select 4) then {
		_obj setDir (_x select 2);
		_obj setPos (_x select 1);
	} else {
		_obj setPosATL (_x select 1);
		_obj setVectorDirAndUp (_x select 3);
	};
} foreach _objs;