DisableVehicleDistantlights(true)
SetPedPopulationBudget(0)
SetVehiclePopulationBudget(0)
SetRandomEventFlag(false)

local scenarios = {
	'WORLD_HUMAN_JOG',
	'WORLD_HUMAN_POWER_WALKER',
	'WORLD_HUMAN_JOG_STANDING',
	'WORLD_HUMAN_HANG_OUT_STREET',
	'WORLD_HUMAN_SMOKING',
	'WORLD_HUMAN_TOURIST_MOBILE',
	'WORLD_HUMAN_STAND_MOBILE',
	'WORLD_HUMAN_GUARD_STAND',
	'WORLD_HUMAN_CLIPBOARD',
	'WORLD_HUMAN_PROSTITUTE_LOW_CLASS',
	'WORLD_HUMAN_GUARD_STAND_CLUBHOUSE',
	'WORLD_HUMAN_STAND_IMPATIENT_CLUBHOUSE',
	'WORLD_HUMAN_SMOKING_CLUBHOUSE',
	'WORLD_HUMAN_STAND_MOBILE_CLUBHOUSE',
	'WORLD_HUMAN_SMOKING_POT_CLUBHOUSE',
	'WORLD_HUMAN_STAND_MOBILE_UPRIGHT_CLUBHOUSE',
	'WORLD_HUMAN_PROSTITUTE_HIGH_CLASS',
	'WORLD_HUMAN_BUM_SLUMPED',
	'WORLD_HUMAN_STAND_IMPATIENT',
	'WORLD_HUMAN_PARTYING',
	'WORLD_HUMAN_CHEERING',
	'WORLD_HUMAN_HANG_OUT_STREET_CLUBHOUSE',
	'WORLD_HUMAN_LEANING',
	'WORLD_HUMAN_DRINKING',
	'WORLD_HUMAN_DRUG_DEALER',
	'WORLD_HUMAN_HUMAN_STATUE',
	'WORLD_HUMAN_SEAT_STEPS',
	'WORLD_HUMAN_SMOKING_POT',
	'WORLD_HUMAN_GARDENER_PLANT',
	'GOLF_COUNTRY',
	'WALKER_MALE',
	'WALKER_FEMALE',
	'HIKER_FEMALE',
	'HIKER',
	'CAMPER_MALE',
	'WANNABES',
	'WORLD_HUMAN_STAND_IMPATIENT_UPRIGHT',
	'WORLD_HUMAN_HIKER',
	'ANIMAL_DOG_SMALL',
	'BEV_HILLS_FEMALE',
	'SAWMILL',
	'PROP_HUMAN_SEAT_CHAIR_DRINK',
	'WORLD_HUMAN_SEAT_WALL',
	'RACE_MALE',
	'WORLD_COYOTE_WANDER',

	'WORLD_CAT_SLEEPING_GROUND',
	'WORLD_CAT_SLEEPING_LEDGE',
	'WORLD_DOG_SITTING_RETRIEVER',
	'WORLD_DOG_SITTING_ROTTWEILER',
	'ANIMAL_DOG_ROTTWEILER',
	'ANIMAL_DOG_RETRIEVER',
	'WORLD_DEER_GRAZING',
	'WORLD_DOG_BARKING_RETRIEVER',

	'WORLD_VEHICLE_ATTRACTOR',
	'WORLD_VEHICLE_AMBULANCE',
	'WORLD_VEHICLE_BICYCLE_BMX',
	'WORLD_VEHICLE_BICYCLE_BMX_BALLAS',
	'WORLD_VEHICLE_BICYCLE_BMX_FAMILY',
	'WORLD_VEHICLE_BICYCLE_BMX_HARMONY',
	'WORLD_VEHICLE_BICYCLE_BMX_VAGOS',
	'WORLD_VEHICLE_BICYCLE_MOUNTAIN',
	'WORLD_VEHICLE_BICYCLE_ROAD',
	'WORLD_VEHICLE_BIKE_OFF_ROAD_RACE',
	'WORLD_VEHICLE_BIKER',
	'WORLD_VEHICLE_BOAT_IDLE',
	'WORLD_VEHICLE_BOAT_IDLE_ALAMO',
	'WORLD_VEHICLE_BOAT_IDLE_MARQUIS',
	'WORLD_VEHICLE_BOAT_IDLE_MARQUIS',
	'WORLD_VEHICLE_BROKEN_DOWN',
	'WORLD_VEHICLE_BUSINESSMEN',
	'WORLD_VEHICLE_HELI_LIFEGUARD',
	'WORLD_VEHICLE_CLUCKIN_BELL_TRAILER',
	'WORLD_VEHICLE_CONSTRUCTION_SOLO',
	'WORLD_VEHICLE_CONSTRUCTION_PASSENGERS',
	'WORLD_VEHICLE_DRIVE_PASSENGERS',
	'WORLD_VEHICLE_DRIVE_PASSENGERS_LIMITED',
	'WORLD_VEHICLE_DRIVE_SOLO',
	'WORLD_VEHICLE_FIRE_TRUCK',
	'WORLD_VEHICLE_EMPTY',
	'WORLD_VEHICLE_MARIACHI',
	'WORLD_VEHICLE_MECHANIC',
	'WORLD_VEHICLE_MILITARY_PLANES_BIG',
	'WORLD_VEHICLE_MILITARY_PLANES_SMALL',
	'WORLD_VEHICLE_PARK_PARALLEL',
	'WORLD_VEHICLE_PARK_PERPENDICULAR_NOSE_IN',
	'WORLD_VEHICLE_PASSENGER_EXIT',
	'WORLD_VEHICLE_POLICE_BIKE',
	'WORLD_VEHICLE_POLICE_CAR',
	'WORLD_VEHICLE_POLICE',
	'WORLD_VEHICLE_POLICE_NEXT_TO_CAR',
	'WORLD_VEHICLE_QUARRY',
	'WORLD_VEHICLE_SALTON',
	'WORLD_VEHICLE_SALTON_DIRT_BIKE',
	'WORLD_VEHICLE_SECURITY_CAR',
	'WORLD_VEHICLE_STREETRACE',
	'WORLD_VEHICLE_TOURBUS',
	'WORLD_VEHICLE_TOURIST',
	'WORLD_VEHICLE_TANDL',
	'WORLD_VEHICLE_TRACTOR',
	'WORLD_VEHICLE_TRACTOR_BEACH',
	'WORLD_VEHICLE_TRUCK_LOGS',
	'WORLD_VEHICLE_TRUCKS_TRAILERS',
	'WORLD_VEHICLE_DISTANT_EMPTY_GROUND'
}

for i, v in pairs(scenarios) do
	SetScenarioTypeEnabled(v, false)
end

CreateThread(function()
	while true do
		local objects = GetGamePool('CPed')
		for _, entity in ipairs(objects) do
			if NetworkGetEntityOwner(entity) == 128 then
				DeleteEntity(entity)
			end
		end
		Wait(1000)
	end
end)