return {
	{ -- DEVICES
		items = { 
			{
				name = 'x_device',
				ingredients = {
					usb = 1,
					pliers = 0.1,
					trojan_usb = 1,
				},
				duration = 15000,
				count = 1,
			}, {
				name = 'x_laptop',
				ingredients = {
					usb = 1,
					laptop = 1,
					pliers = 0.1,
					electronickit = 1,
					trojan_usb = 1,

				},
				duration = 25000,
				count = 1,
			}, {
				name = 'decryptor',
				ingredients = {
					usb = 1,
					pliers = 0.1,
					electronickit = 1,
					trojan_usb = 1,
					atmcables = 1,
					atmmotherboard = 1,
					atmpanel = 1,

				},
				duration = 15000,
				count = 1,
			}, {
				name = 'hackcard',
				ingredients = {
					usb = 1,
					pliers = 0.1,
					electronickit = 1,
					trojan_usb = 1,

				},
				duration = 5000,
				count = 1,
			}, {
				name = 'x_phone',
				ingredients = {
					usb = 1,
					pliers = 0.1,
					trojan_usb = 1,
					md_brokenphone = 1,
				},
				duration = 15000,
				count = 1,
			}, {
				name = 'electronickit',
				ingredients = {
					usb = 1,
					pliers = 0.1,
					plastic = 1,
					md_brokenphone = 1,
				},
				duration = 15000,
				count = 1,
			},





		},
		points = {
			vec3(1272.28, -1711.55, 54.77),
		},
		zones = {
			{
				coords = vec3(1272.28, -1711.55, 54.77),
				size = vec3(1, 1, 1),
				distance = 2.5,
				rotation = 39.57,
			},
		},
		blip = false,
	},


	{ -- COMPOUNDS
		items = {
			{
				name = 'rdx',
				ingredients = {
					ls_fertilizer = 1,
					nitricacid = 2,
					emptyjar = 2,
					beewax = 2,
				},
				duration = 5000,
				count = 2,
			},
		},
		points = {
			vec3(3539.55, 3658.4, 28.12),
		},
		zones = {
			{
				coords = vec3(3539.55, 3658.4, 28.12),
				size = vec3(1, 1, 1),
				distance = 2.5,
				rotation = 315.0,
			},
		},
		blip = false,
	},
	{ -- BOMBS
		items = {
			{
				name = 'thermite_h',
				ingredients = {
					ironoxide = 1,
					magnesium = 1,
					electronickit = 1,
					aluminum = 1,
				},
				duration = 5000,
				count = 1,
			},
			{
				name = 'WEAPON_STICKYBOMB',
				ingredients = {
					rdx = 1,
					dioctylsebacate = 1,
					polyisobutylene = 1,
					plastic = 1,
					rubber = 1,
					electronickit = 1,
				},
				duration = 5000,
				count = 1,
			},
			{
				name = 'impact_bomb',
				ingredients = {
					scale = 1,
					electronickit = 1,
					weapon_stickybomb = 1,
					aluminum = 1,
					atmcables = 1,
				},
				duration = 5000,
				count = 1,
			},
			{
				name = 'speed_bomb',
				ingredients = {
					scale = 1,
					electronickit = 1,
					WEAPON_STICKYBOMB = 1,
					aluminum = 1,
					atmcables = 1,
				},
				duration = 5000,
				count = 1,
			},

			{
				name = 'ignition_bomb',
				ingredients = {
					electronickit = 1,
					WEAPON_STICKYBOMB = 1,
					aluminum = 1,
					atmcables = 1,
					atmmotherboard = 1,
				},
				duration = 5000,
				count = 1,
			},
			{
				name = 'remote_bomb',
				ingredients = {
					electronickit = 1,
					WEAPON_STICKYBOMB = 1,
					aluminum = 1,
					atmcables = 1,
					x_phone = 1,
				},
				duration = 5000,
				count = 1,
			},
			{
				name = 'phone_bomb',
				ingredients = {
					electronickit = 1,
					atmcables = 1,
					x_phone = 1,
				},
				duration = 5000,
				count = 1,
			},
		},
		points = {
			--vec3(-40.47, 6431.71, 30.48),
			vec3(560.3, -404.92, -69.65),
		},
		zones = {
			--[[{
				coords = vec3(-40.47, 6431.71, 31.48),
				size = vec3(2, 1, 1),
				distance = 1.5,
				rotation = 315.0,
			},]]--
			{
				coords = vec3(560.3, -404.92, -69.65),
				size = vec3(2, 1, 1),
				distance = 1.5,
				rotation = 104.07,
			},
		},
		blip = false,
	},
	{ -- VINE JEWELLERS
	--[[ INGREDIENTS
	ls_coal_ore
	ls_copper_ingot
	ls_iron_ingot
	ls_silver_ingot
	ls_gold_ingot
	md_goldounce
	md_rustyring
	md_goldring
	acetone
	-- CRIM PARTS 
	giant_gem
	diamond_necklace
	diamond_ring
	diamond_earring
	ruby_ring
	ruby_necklace
	ruby_earring
	sapphire_ring
	sapphire_necklace
	sapphire_earring
	emerald_ring
	emerald_necklace
	emerald_earring
	emerald
	diamond
	ruby
	sapphire
	uncut_diamond
	uncut_ruby
	uncut_sapphire
	uncut_emerald

	NEED TO ADD - Diamonds


	TOOLS

	screwdriverset
	blowtorch
	glass_cutter
	pliers
	ls_acetone
	x_hammer

	]]
		items = {
			{
				name = 'md_diamondearings',
				ingredients = {
					diamond = 1,
					md_goldring = 1,
					blowtorch = 0.1,
					pliers = 0.1,
					glass_cutter = 0.1
				},
				duration = 5000,
				count = 2,
			},
			{
				name = 'md_diamondnecklace',
				ingredients = {
					diamond = 2,
					md_goldring = 4,
					blowtorch = 0.1,
					pliers = 0.1,
					glass_cutter = 0.1
				},
				duration = 5000,
				count = 2,
			},
			{
				name = 'md_diamondring',
				ingredients = {
					diamond = 1,
					md_goldring = 2,
					blowtorch = 0.1,
					pliers = 0.1,
					glass_cutter = 0.1
				},
				duration = 5000,
				count = 2,
			},
			{
				name = 'md_goldearings',
				ingredients = {
					md_goldring = 1,
					blowtorch = 0.1,
					pliers = 0.1,
					glass_cutter = 0.1
				},
				duration = 5000,
				count = 2,
			},
			{
				name = 'md_goldnecklace',
				ingredients = {
					md_goldring = 4,
					blowtorch = 0.1,
					pliers = 0.1,
					glass_cutter = 0.1
				},
				duration = 5000,
				count = 2,
			},
			{
				name = 'md_goldring',
				ingredients = {
					ls_gold_ingot = 1,
					blowtorch = 0.1,
					pliers = 0.1,
					glass_cutter = 0.1,
					weapon_hammer = 0.1,
				},
				duration = 5000,
				count = 100,
			},

		},
		points = {
			vec3(-420.52, 199.23, 83.33),
		},
		zones = {
			{
				coords = vec3(-420.52, 199.23, 83.33),
				size = vec3(2, 2, 2),
				distance = 2.5,
				rotation = 159.66,
			},
		},
		blip = false,
	},

}
