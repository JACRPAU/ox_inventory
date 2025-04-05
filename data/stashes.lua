return {

		-- WHITELISTED GOV JOBS 
	{
		coords = vec3(-451.85, 6012.9, 31.72),
		target = {
			loc = vec3(-451.85, 6012.9, 31.72),
			length = 1.2,
			width = 5.6,
			heading = 227.74,
			minZ = 31.13,
			maxZ = 32.31,
			label = 'Open personal locker'
		},
		name = 'paletopolicelocker',
		label = 'Personal locker',
		owner = true,
		slots = 70,
		weight = 70000,
		groups = shared.police
	},
	{
		coords = vec3(1826.59, 3679.37, 34.4),
		target = {
			loc = vec3(1826.59, 3679.37, 34.4),
			length = 1.2,
			width = 5.6,
			heading = 241.63,
			minZ = 33.49,
			maxZ = 35.09,
			label = 'Open personal locker'
		},
		name = 'bcsolocker',
		label = 'Personal locker',
		owner = true,
		slots = 70,
		weight = 70000,
		groups = shared.police
	},
	{
		coords = vec3(465.46, -998.92, 30.6), -- MOVED TO MRPD
		target = {
			loc = vec3(465.46, -998.92, 30.6),
			length = 1.2,
			width = 1.2,
			heading = 21.69,
			minZ = 29.13,
			maxZ = 31.31,
			label = 'Open Fridge'
		},
		name = 'davispolicefridge',
		label = 'Fridge',
		owner = false,
		slots = 10,
		weight = 120000,
		groups = shared.police
	},
	{
		coords = vec3(467.56, -1004.78, 30.71), -- MOVED TO MRPD
		target = {
			loc = vec3(467.56, -1004.78, 30.71),
			length = 1.2,
			width = 3.6,
			heading = 270.7,
			minZ = 29.7,
			maxZ = 31.7,
			label = 'Open personal locker'
		},
		name = 'davispolicelocker',
		label = 'Personal locker',
		owner = true,
		slots = 70,
		weight = 70000,
		groups = shared.police
	},
	{
		coords = vec3(60.94, -389.23, 39.85), -- PILLBOX
		target = {
			loc = vec3(60.94, -389.23, 39.85),
			length = 2,
			width = 2.8,
			heading = 249.6,
			minZ = 39.0,
			maxZ = 41.0,
			label = 'Open personal locker'
		},
		name = 'emslocker',
		label = 'Personal Locker',
		owner = true,
		slots = 70,
		weight = 70000,
		groups = {['ambulance'] = 0}
	},

	{
		coords = vec3(1753.29, 3637.95, 35.14), -- SANDY
		target = {
			loc = vec3(1753.29, 3637.95, 35.14),
			length = 0.6,
			width = 1.8,
			heading = 317.29,
			minZ = 34.14,
			maxZ = 35.54,
			label = 'Open personal locker'
		},
		name = 'emslocker-sandy',
		label = 'Personal Locker',
		owner = true,
		slots = 70,
		weight = 70000,
		groups = {['ambulance'] = 0}
	},

-- GANG STASHES
	{
		coords = vec3(-120.1383, 1583.31, 38.8),
		target = {
			loc = vec3(-120.1383, 1583.31, 38.8),
			length = 1.6,
			width = 1.8,
			heading = 230,
			minZ = 38.8 - 1,
			maxZ = 38.8 + 1,
			label = 'Open Stash'
		},
		name = 'gsfstash',
		label = 'GSF Stash',
		owner = false,
		slots = 70,
		weight = 150000,
		groups = {['gsf'] = 1, ['police'] = 1, ['bcso'] = 1, ['sasp'] = 1}
	},
	{
		coords = vec3(92.79, -1954.228, 13.5),
		target = {
			loc = vec3(92.79, -1954.228, 13.5),
			length = 0.6,
			width = 1.8,
			heading = 229.74,
			minZ = 13.0,
			maxZ = 14.0,
			label = 'Open Stash'
		},
		name = 'ballasstash',
		label = 'Ballas Stash',
		owner = false,
		slots = 70,
		weight = 150000,
		groups = {['ballas'] = 1, ['police'] = 1, ['bcso'] = 1, ['sasp'] = 1}
	}, --[[
	{
		coords = vec3(987.72, -137.47, 73.09),
		target = {
			loc = vec3(987.72, -137.47, 73.09),
			length = 0.6,
			width = 1.8,
			heading = 337.27,
			minZ = 78.1,
			maxZ = 74.1,
			label = 'Open Stash'
		},
		name = 'lostmcstash',
		label = 'Lost MC Stash',
		owner = false,
		slots = 70,
		weight = 150000,
		groups = {['lostmc'] = 1, ['police'] = 1, ['bcso'] = 1, ['sasp'] = 1}
	}, ]]--
	{
		coords = vec3(-1147.84, -1552.54, 7.99),
		target = {
			loc = vec3(-1147.84, -1552.54, 7.99),
			length = 0.6,
			width = 1.8,
			heading = 81.91,
			minZ = 7,
			maxZ = 9,
			label = 'Open Stash'
		},
		name = 'aodmcstash',
		label = 'AOD MC Stash',
		owner = false,
		slots = 70,
		weight = 150000,
		groups = {['aodmc'] = 1, ['police'] = 1, ['bcso'] = 1, ['sasp'] = 1}
	},
	{
		coords = vec3(-1142.25, -1563.87, 4.56),
		target = {
			loc = vec3(-1142.25, -1563.87, 4.56),
			length = 0.6,
			width = 1.8,
			heading = 123.29,
			minZ = 3,
			maxZ = 6,
			label = 'Look on Shelves'
		},
		name = 'aodmcbar',
		label = 'AOD MC Bar Shelf',
		owner = false,
		slots = 70,
		weight = 150000,
		groups = {['aodmc'] = 0, ['police'] = 1, ['bcso'] = 1, ['sasp'] = 1}
	},
	{
		coords = vector3(-1144.44, -1559.74, 4.56),
		target = {
			loc = vector3(-1144.44, -1559.74, 4.56),
			length = 0.6,
			width = 1.8,
			heading = 32.34,
			minZ = 3,
			maxZ = 6,
			label = 'Look on Shelves'
		},
		name = 'aodmcbarstorage',
		label = 'AOD MC Bar Storage',
		owner = false,
		slots = 70,
		weight = 150000,
		groups = {['aodmc'] = 0, ['police'] = 1, ['bcso'] = 1, ['sasp'] = 1}
	},
	{
		coords = vec3(356.69, -1986.73, 24.28),
		target = {
			loc = vec3(356.69, -1986.73, 24.28),
			length = 0.6,
			width = 1.8,
			heading = 62.26,
			minZ = 24.2 - 1,
			maxZ = 24.2 + 1,
			label = 'Open Stash'
		},
		name = 'vagosstash',
		label = 'Vagos Stash',
		owner = false,
		slots = 70,
		weight = 150000,
		groups = {['vagos'] = 1, ['police'] = 1, ['bcso'] = 1, ['sasp'] = 1}
	},

-- JOBS

	{
		coords = vec3(270.19, -1166.62, 29.27),
		target = {
			loc = vec3(270.19, -1166.62, 29.27),
			length = 0.6,
			width = 1.8,
			heading = 83.94,
			minZ = 28.8,
			maxZ = 30.8,
			label = 'Open Safe'
		},
		name = 'bikedealersafe',
		label = 'Cash Safe',
		owner = false,
		slots = 70,
		weight = 150000,
		groups = {['bikedealer'] = 0, ['police'] = 1, ['bcso'] = 1, ['sasp'] = 1}
	},
	{
		coords = vec3(844.58, -2102.35, 32.88),
		target = {
			loc = vec3(844.58, -2102.35, 32.88),
			length = 0.6,
			width = 1.8,
			heading = 262.11,
			minZ = 32,
			maxZ = 34,
			label = 'Open Stash'
		},
		name = 'lscyprusstash',
		label = 'Personal Stash',
		owner = true,
		slots = 70,
		weight = 150000,
		groups = {['lscustomscyprus'] = 0}
	},
	{
		coords = vec3(753.26, -1297.61, 26.28),
		target = {
			loc = vec3(753.26, -1297.61, 26.28),
			length = 0.6,
			width = 1.8,
			heading = 356.89,
			minZ = 26,
			maxZ = 27,
			label = 'Open Stash'
		},
		name = 'lseaststash',
		label = 'Personal Stash',
		owner = true,
		slots = 70,
		weight = 150000,
		groups = {['lscustomseast'] = 0}
	},
	{
		coords = vec3(1139.61, -791.77, 57.6),
		target = {
			loc = vec3(1139.61, -791.77, 57.6),
			length = 0.6,
			width = 1.8,
			heading = 14.33,
			minZ = 57,
			maxZ = 59,
			label = 'Open Stash'
		},
		name = 'lsautos',
		label = 'Personal Stash',
		owner = true,
		slots = 70,
		weight = 150000,
		groups = {['lsautos'] = 0}
	},
	{
		coords = vec3(85.8, 293.27, 111.14),
		target = {
			loc = vec3(85.8, 293.27, 111.14),
			length = 0.6,
			width = 1.8,
			heading = 165.01,
			minZ = 110,
			maxZ = 112,
			label = 'Open Locker'
		},
		name = 'upnatom',
		label = 'Personal Locker',
		owner = true,
		slots = 70,
		weight = 150000,
		groups = {['upnatom'] = 0}
	},


	{
		coords = vec3(100.53, -1305.13, 29.22),
		target = {
			loc = vec3(100.53, -1305.13, 29.22),
			length = 1.2,
			width = 5.6,
			heading = 129.08,
			minZ = 28.80,
			maxZ = 29.8,
			label = 'Open personal locker'
		},
		name = 'vumainlockers',
		label = 'Personal locker',
		owner = true,
		slots = 70,
		weight = 70000,
		groups = 'vu'
	},
	
-- LS CUSTOMS EAST

	{
		coords = vec3(-353.19, -87.67, 39.51),
		target = {
			loc = vec3(-353.19, -87.67, 39.51),
			length = 1,
			width = 1.1,
			heading = 85,
			minZ = 38.81,
			maxZ = 40.81,
			label = 'Open Drinks Fridge'
		},
		name = 'lscustomseast-drinksfridge',
		label = 'Drinks Fridge',
		owner = false,
		slots = 10,
		weight = 100000,
		debug = false,
		groups = {['lscustomseast'] = 0}

	},
	{
		coords = vec3(-349.70, -86.11, 38.31),
		target = {
			loc = vec3(-349.70, -86.11, 38.31),
			length = 1,
			width = 1.1,
			heading = 160,
			minZ = 37.3,
			maxZ = 39.3,
			label = 'Check Table'
		},
		name = 'lscustomseast-foodfridge',
		label = 'Table',
		owner = false,
		slots = 10,
		weight = 100000,
		debug = false,
		groups = {['lscustomseast'] = 0}

	},

	
-- Vine Jewellers
	{
		coords = vec3(-421.2, 207.72, 85.81),
		target = {
			loc = vec3(-421.2, 207.72, 85.81),
			length = 1,
			width = 1.8,
			heading = 174.51,
			minZ = 84.81,
			maxZ = 87.81,
			label = 'View Trolleys'
		},
		name = 'vinejewels-trolleys',
		label = 'Trolleys',
		owner = false,
		slots = 70,
		weight = 70000,
		debug = true,
	},
	{
		coords = vec3(-423.81, 211.45, 85.81),
		target = {
			loc = vec3(-423.81, 211.45, 85.81),
			length = 1,
			width = 1.8,
			heading = 89.17,
			minZ = 84.81,
			maxZ = 87.81,
			label = 'Open Safe',
		},
		name = 'vinejewels-managesafe',
		label = 'Safe',
		owner = false,
		slots = 70,
		weight = 70000,
		debug = true,
		groups = {['vinejewels'] = 3}
	},
	{
		coords = vec3(-422.47, 214.63, 82.7),
		target = {
			loc = vec3(-422.47, 214.63, 82.7),
			length = 1,
			width = 1.8,
			heading = 267.81,
			minZ = 81.81,
			maxZ = 84.81,
			label = 'View Counter'
		},
		name = 'vinejewels-counter',
		label = 'Counter',
		owner = false,
		slots = 70,
		weight = 70000,
		debug = true,
	},
	{
		coords = vec3(-417.54, 203.57, 82.33),
		target = {
			loc = vec3(-417.54, 203.57, 82.33),
			length = 1,
			width = 1.8,
			heading = 358.3,
			minZ = 81.81,
			maxZ = 84.81,
			label = 'View Storage'
		},
		name = 'vinejewels-backroom',
		label = 'Storage',
		owner = false,
		slots = 70,
		weight = 70000,
		debug = true,
		groups = {['vinejewels'] = 2}

	},
	{
		coords = vec3(-421.21, 200.8, 83.01),
		target = {
			loc = vec3(-421.21, 200.8, 83.01),
			length = 1,
			width = 1.8,
			heading = 91.86,
			minZ = 81.81,
			maxZ = 84.81,
			label = 'View Tools'
		},
		name = 'vinejewels-tools',
		label = 'Tool Storage',
		owner = false,
		slots = 70,
		weight = 70000,
		debug = true,
		groups = {['vinejewels'] = 2}

	},

	

	-- Burgershot vec3(-1178.55, -891.87, 13.75)
	{
		
		coords = vec3(-1178.55, -891.87, 13.75),
		target = {
			loc = vec3(-1178.55, -891.87, 13.75),
			length = 1.2,
			width = 1.6,
			heading = 127.36,
			minZ = 12.75,
			maxZ = 14.75,
			label = 'Open Storage'
		},
		name = 'burgershot',
		label = 'Burgershot',
		groups = 'burgershot',
		owner = false,
		slots = 70,
		weight = 70000,
	},

	-- Mom's Tacos vec3(403.52, -1930.16, 24.74)
	{
		
		coords = vec3(403.52, -1930.16, 24.74),
		target = {
			loc = vec3(403.52, -1930.16, 24.74),
			length = 1.2,
			width = 1.6,
			heading = 135.96,
			minZ = 23.74,
			maxZ = 25.74,
			label = 'Open Storage'
		},
		name = 'momstacos',
		label = 'Moms Tacos',
		groups = 'taco',
		owner = false,
		slots = 70,
		weight = 70000,
	},

	-- Huey's Fridge

	{
		coords = vec3(-322.21, 1.83, 64.01),
		target = {
			loc = vec3(-322.21, 1.83, 64.01),
			length = 1.2,
			width = 1.6,
			heading = 239.73,
			minZ = 63.13,
			maxZ = 64.51,
			label = 'Open Fridge'
		},
		name = 'hueysfridge',
		label = 'Fridge',
		owner = false,
		slots = 70,
		weight = 70000,
	},

	{
		coords = vec3(-310.93, 17.05, 64.07),
		target = {
			loc = vec3(-310.93, 17.05, 64.07),
			length = 1.2,
			width = 1.6,
			heading = 239.73,
			minZ = 63.13,
			maxZ = 64.51,
			label = 'Open Cabinet'
		},
		name = 'hueyscabinet',
		label = 'Cabinet',
		owner = false,
		slots = 70,
		weight = 70000,
	},



}
