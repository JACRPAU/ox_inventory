return {

	["oxyboxes"] = {
		label = "Oxy Package",
		weight = 2500,
		close = true,
		stack = false,
		description = "Package",
		server = {
			export = 'dynyx_oxyrun.oxycarry'
		}
	},
  
  ["sparetyre"] = {
    label = "Spare Tyre",
    weight = 200,
    stack = false,
    close = false,
    client = {
      event = 'JACRP_TireRolling:itemTire',
    }
    },

["fakeplate"] = {
  label = "Number Plates",
  weight = 200,
  stack = false,
  close = false,
  },
  --[[ ND Ambulance
  ["stretcher"] = {
    label = "Stretcher",
    weight = 15000,
    stack = false,
    consume = 1,
    server = {
        export = "ND_Ambulance.createStretcher"
    }
  },
  ["defib"] = {
    label = "Monitor/defibrillator",
    weight = 8000,
    stack = false,
    consume = 1,
    client = {
        export = "ND_Ambulance.useDefib",
        add = function(total)
            if total > 0 then
                pcall(function()
                    return exports["ND_Ambulance"]:hasDefib(true)
                end)
            end
        end,
        remove = function(total)
            if total < 1 then
                pcall(function()
                    return exports["ND_Ambulance"]:hasDefib(false)
                end)
            end
        end
    }
  },
  ["medbag"] = {
    label = "Trauma bag",
    weight = 1000,
    stack = false,
    consume = 1,
    server = {
        export = "ND_Ambulance.useBag"
    },
    client = {
        export = "ND_Ambulance.useBag",
        add = function(total)
            if total > 0 then
                pcall(function()
                    return exports["ND_Ambulance"]:bag(true)
                end)
            end
        end,
        remove = function(total)
            if total < 1 then
                pcall(function()
                    return exports["ND_Ambulance"]:bag(false)
                end)
            end
        end
    }
  },
  ["burndressing"] = {
    label = "Burn Dressing",
    weight = 50,
    server = {
        export = "ND_Ambulance.treatment"
    },
    client = {
        anim = { dict = "missheistdockssetup1clipboard@idle_a", clip = "idle_a", flag = 49 },
        prop = { model = `prop_toilet_roll_01`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
        disable = { move = true, car = true, combat = true },
        usetime = 2500
    }
  },
  ["splint"] = {
    label = "Splint",
    weight = 500,
    server = {
        export = "ND_Ambulance.treatment"
    },
    client = {
        anim = { dict = "missheistdockssetup1clipboard@idle_a", clip = "idle_a", flag = 49 },
        prop = { model = `prop_toilet_roll_01`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
        disable = { move = true, car = true, combat = true },
        usetime = 2500
    }
  },
  ["gauze"] = {
    label = "Gauze",
    weight = 80,
    server = {
        export = "ND_Ambulance.treatment"
    },
    client = {
        anim = { dict = "missheistdockssetup1clipboard@idle_a", clip = "idle_a", flag = 49 },
        prop = { model = `prop_toilet_roll_01`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
        disable = { move = true, car = true, combat = true },
        usetime = 2500
    }
  },
  ["tourniquet"] = {
    label = "Tourniquet",
    weight = 85,
    server = {
        export = "ND_Ambulance.treatment"
    },
    client = {
        anim = { dict = "missheistdockssetup1clipboard@idle_a", clip = "idle_a", flag = 49 },
        prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
        disable = { move = true, car = true, combat = true },
        usetime = 2500
    }
  },]]--
  ['spikestrip'] = { -- Spike Strip
  label = 'Spike Strip',
  weight = 1500,
  stack = true,
  close = true,
},
    -- Wasabi Ambulance
    ['medikit'] = { -- Make sure not already a medikit
    label = 'Medikit',
    weight = 165,
    stack = true,
    close = true,
  },
  ['medbag'] = {
    label = 'Medical Bag',
    weight = 165,
    stack = false,
    close = true,
  },

  ['tweezers'] = {
    label = 'Tweezers',
    weight = 2,
    stack = true,
    close = true,
  },

  ['suturekit'] = {
    label = 'Suture Kit',
    weight = 15,
    stack = true,
    close = true,
  },

  ['icepack'] = {
    label = 'Ice Pack',
    weight = 29,
    stack = true,
    close = true,
  },

  ['burncream'] = {
    label = 'Burn Cream',
    weight = 19,
    stack = true,
    close = true,
  },

  ['defib'] = {
    label = 'Defibrillator',
    weight = 225,
    stack = false,
    close = true,
  },

  ["alcoholmeter"] = {
		label = "Alcoholmeter",
		weight = 250,
		stack = false,
		close = true,
		consume = 0,
		server = {
			export = 'BS-Breathalyzer.openBreathalyzer'
		}
	},


	['tracking_bracelet '] = {
    label = 'Tracking Bracelet',
    weight = 2,
    stack = true,
    close = true,
  },


  ['meta_mask'] = {
    weight = 200,
    stack = false,
    consume = 0,
    client = {
        anim = { dict = 'mp_masks@on_foot', clip = 'put_on_mask' },
        usetime = 500,
        remove = function() exports.dd5m_metamasks:RemoveMaskItem() end
      },
    server = {export = 'dd5m_metamasks.meta_mask'},
    allowArmed = false,
  },

  ['cakeflavouring'] = {
    label = 'Cake Flavouring',
    weight = 50,   
    foodType = 'drink',
    nutrition = {
      healthy = 3,
      thirst = 3,
    },
  },

  
['blackberry'] = {
  label = 'Blackberries',
  weight = 50,  
  shopType = 'farmers',
  price = 10,  
},

['cutblackberry'] = {
  label = 'Cut Blackberries',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  healthy = 3,
	  hunger = 3,
  },
},

['blackberryjuice'] = {
  label = 'Blackberry Juice',
  weight = 50,   
  foodType = 'drink',
  nutrition = {
	  healthy = 3,
	  thirst = 3,
  },
},


['raspberry'] = {
  label = 'Raspberries',
  weight = 50,  
  shopType = 'farmers',
  price = 10,  
},

['raspberryjuice'] = {
  label = 'Raspberry Juice',
  weight = 50,  
  shopType = 'farmers',
  price = 10,  
},

['cutraspberry'] = {
  label = 'Cut Raspberries',
  weight = 50,  
  shopType = 'farmers',
  price = 10,  
},


  
   
  ['driveshaft'] = {
    label = 'Drive Shaft',
    weight = 1000,
    stack = false
  },
   
  ['oilfilter'] = {
    label = 'Oil Filter',
    weight = 1000,
    stack = false
  },
   
  ['reliefstring'] = {
    label = 'Relief String',
    weight = 1000,
    stack = false
  },
   
  ['skewgear'] = {
    label = 'Skew Gear',
    weight = 1000,
    stack = false
  },
   
  ['timingchain'] = {
    label = 'Timing Chain',
    weight = 1000,
    stack = false
  },

  ['electrician_ladder'] = {
    label = 'Electrician Ladder',
    weight = 3500,
    stack = true,
    description = ""
},

['electrician_lift'] = {
    label = 'Electrician Lift',
    weight = 10000,
    stack = true,
    description = ""
},

['electrician_rail'] = {
    label = 'Electrician Rail',
    weight = 5000,
    stack = true,
    description = ""
},

  ['lawnmower'] = {
    label = 'Lawnmower',
    weight = 6500,
    stack = false,
    close = true,
    description = nil
},

['leafblower'] = {
    label = 'Leafblower',
    weight = 4500,
    stack = false,
    close = true,
    description = nil
},

['garden_pitcher'] = {
    label = 'Garden Pitcher',
    weight = 1500,
    stack = false,
    close = true,
    description = nil
},

  
  ["x_cratejammer"] = {
    label = "X Crate Jammer",
    weight = 300,
    stack = false,
    close = false,
    description = "?????????",
    client = {
     image = "x_cratejammer.png",
    }
   },
  
    ["oilrigcard"] = {
    label = "Oilrig Keycard",
    weight = 50,
    stack = false,
    close = false,
    description = "A Security card for Oilrig",
    client = {
     image = "oilrigcard.png",
    }
   },
  
    ["fuse"] = {
    label = "Fuse",
    weight = 150,
    stack = false,
    close = false,
    description = "Zaaap",
    client = {
     image = "fuse.png",
    }
   },

  ['heistkit'] = {
    label = 'Heist Kit',
    weight = 1000, -- Adjust weight as needed
    stack = false,
    close = true,
    description = 'A kit containing tools for various heists.',
    client = {
        image = 'heistkit.png' -- Ensure you have an image with this name in your inventory images folder
    }
},

['flip_kit'] = {
  label = 'Car Flip Kit',
  weight = 15000,
  client = {
        event = 'angelicxs-flipcar:flipcar'
  },
  consume = 1,
},


['ls_coke_table'] = {
    label = 'Coke Table',
    weight = 10000,
},

['ls_coca_seed'] = {
    label = 'Coca Seed',
    weight = 5,
},

['ls_coca_leaf'] = {
    label = 'Coca Leaf',
    weight = 5,
},

['ls_coca_ground'] = {
    label = 'Ground Coca',
    weight = 200,
},

['ls_coca_base_unf'] = {
    label = 'Coca Base (unfinished)',
    weight = 400,
},

['ls_coca_base'] = {
    label = 'Coca Base',
    weight = 500,
},

['ls_cocaine_brick'] = {
    label = 'Cocaine Brick',
    weight = 1000,
},

['ls_crack_brick'] = {
    label = 'Crack Brick',
    weight = 1000,
},

['ls_baking_soda'] = {
    label = 'Baking Soda',
    weight = 250,
},

['ls_gasoline'] = {
    label = 'Gasoline',
    weight = 1000,
    stack = false,
},

['ls_cement'] = {
    label = 'Cement',
    weight = 2000,
    stack = false,
},

['ls_cocaine_bag'] = {
    label = 'Cocaine',
    weight = 10,
},

['ls_crack_bag'] = {
    label = 'Crack',
    weight = 10,
},

  ['ankle_monitor'] = {
    label = 'Ankle Monitor',
    weight = 500,
    stack = true,
    close = true,
    description = nil
},
  -- WHIPPETS
  ['ammonium_nitrate'] = {
    label = 'Ammonium Nitrate',
    weight = 500,
    stack = true,
    close = true,
    description = nil
},
['n2o_strawberry'] = {
    label = 'N₂O Tank (Strawberry)',
    weight = 500,
    stack = true,
    close = true,
    description = nil
},
['n2o_strawberry_empty'] = {
    label = 'N₂O Tank (Empty, Strawberry)',
    weight = 500,
    stack = true,
    close = true,
    description = nil
},
["n2o_watermelon"] = {
    label = "N₂O Tank (Watermelon)",
    weight = 500,
    stack = true,
    close = true,
    description = nil
},
["n2o_watermelon_empty"] = {
    label = "N₂O Tank (Empty, Watermelon)",
    weight = 500,
    stack = true,
    close = true,
    description = nil
},
["n2o_grape"] = {
    label = "N₂O Tank (Grape)",
    weight = 500,
    stack = true,
    close = true,
    description = nil
},
["n2o_grape_empty"] = {
    label = "N₂O Tank (Empty, Grape)",
    weight = 500,
    stack = true,
    close = true,
    description = nil
},

["n2o_mango"] = {
    label = "N₂O Tank (Mango)",
    weight = 500,
    stack = true,
    close = true,
    description = nil
},
["n2o_mango_empty"] = {
    label = "N₂O Tank (Empty, Mango)",
    weight = 500,
    stack = true,
    close = true,
    description = nil
},

["n2o_raspberry"] = {
    label = "N₂O Tank (Raspberry)",
    weight = 500,
    stack = true,
    close = true,
    description = nil
},
["n2o_raspberry_empty"] = {
    label = "N₂O Tank (Empty, Raspberry)",
    weight = 500,
    stack = true,
    close = true,
    description = nil
},
["nitrous_compressor"] = {
    label = "Nitrous Compressor",
    weight = 500,
    stack = true,
    close = true,
    description = "A device used to compress ammonium nitrate into nitrous oxide."
},
  -- VU ITEMS
  ['djs_berryflower_martini'] = {
		label = 'Berry Flower Martini',
		weight = 350,
    stack = false,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `djs_berryflower_martini`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst',
		},
    server = {
      export = 'BS-Breathalyzer.usedAlcohol'
    }
	},
	['djs_blackberry_martini'] = {
		label = 'Black Berry Martini',
		weight = 350,
    stack = false,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `djs_blackberry_martini`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst',
		},
    server = {
      export = 'BS-Breathalyzer.usedAlcohol'
    }
	},
	['djs_bloodorange_margarita'] = {
		label = 'Blood Orange Margarita',
		weight = 350,
    stack = false,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `djs_bloodorange_margarita`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst',
		},
    server = {
      export = 'BS-Breathalyzer.usedAlcohol'
    }
	},
	['djs_carambolaandmint_margarita'] = {
		label = 'Carambo and Mint Margarita',
		weight = 350,
    stack = false,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `djs_carambolaandmint_margarita`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst',
		},
    server = {
      export = 'BS-Breathalyzer.usedAlcohol'
    }
	},
	['djs_cherryhibiscus_margarita'] = {
		label = 'Cherry Hibiscus Margarita',
		weight = 350,
    stack = false,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `djs_cherryhibiscus_margarita`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst',
		},
    server = {
      export = 'BS-Breathalyzer.usedAlcohol'
    }
	},
	['djs_cherrypineapple_margarita'] = {
		label = 'Cherry Pineapple Margarita',
		weight = 350,
    stack = false,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `djs_cherrypineapple_margarita`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst',
		},
    server = {
      export = 'BS-Breathalyzer.usedAlcohol'
    }
	},
	['djs_ginandtonic'] = {
		label = 'Ocean Water Gin and Tonic',
		weight = 350,
    stack = false,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `djs_ginandtonic`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst',
		},
    server = {
      export = 'BS-Breathalyzer.usedAlcohol'
    }
	},
	['djs_grapefruit_martini'] = {
		label = 'Grape Fruit Martini',
		weight = 350,
    stack = false,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `djs_grapefruit_martini`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst',
		},
    server = {
      export = 'BS-Breathalyzer.usedAlcohol'
    }
	},
	['djs_prop_blueberrypie_jelloshot'] = {
		label = 'Blueberry Pie Jello Shot',
		weight = 350,
    stack = false,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `djs_prop_blueberrypie_jelloshot`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst',
		},
    server = {
      export = 'BS-Breathalyzer.usedAlcohol'
    }
	},
	['djs_prop_cherrylimepie_jelloshot'] = {
		label = 'Cherry Lime Pie Jello Shot',
		weight = 350,
    stack = false,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `djs_prop_cherrylimepie_jelloshot`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst',
		},
    server = {
      export = 'BS-Breathalyzer.usedAlcohol'
    }
	},
	['djs_prop_cherrypie_jelloshot'] = {
		label = 'Cherry Pie Jello Shot',
		weight = 350,
    stack = false,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `djs_prop_cherrypie_jelloshot`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst',
		},
    server = {
      export = 'BS-Breathalyzer.usedAlcohol'
    }
	},
	['djs_prop_keylimepie_jelloshot'] = {
		label = 'Keylime Pie Jello Shot',
		weight = 350,
    stack = false,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `djs_prop_keylimepie_jelloshot`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst',
		},
    server = {
      export = 'BS-Breathalyzer.usedAlcohol'
    }
	},
	['djs_prop_orangecream_jelloshot'] = {
		label = 'Orange Cream Jello Shot',
		weight = 350,
    stack = false,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `djs_prop_orangecream_jelloshot`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst',
		},
    server = {
      export = 'BS-Breathalyzer.usedAlcohol'
    }
	},
	['djs_prop_pineappleshortcake_jelloshot'] = {
		label = 'Pineapple Shortcake Jello Shot',
		weight = 350,
    stack = false,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `djs_prop_pineappleshortcake_jelloshot`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst',
		},
    server = {
      export = 'BS-Breathalyzer.usedAlcohol'
    }
	},
	['djs_raspberry_martini'] = {
		label = 'Raspberry Martini',
		weight = 350,
    stack = false,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `djs_raspberry_martini`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst',
		},
    server = {
      export = 'BS-Breathalyzer.usedAlcohol'
    }
	},
	['djs_strawberry_margarita'] = {
		label = 'Strawberry Margarita',
		weight = 350,
    stack = false,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `djs_strawberry_margarita`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst',
		},
    server = {
      export = 'BS-Breathalyzer.usedAlcohol'
    }
	},
	--[[['djs_empanadas'] = {
		label = 'Empanadas',
		stack = true,
		close = false,
		weight = 10,
		client = {
			status = { hunger = 2000000 },
			anim = 'alca',        prop = {model = 'djs_empanadas',
			bone = 18905,
			pos = vec3(0.1, 0.0, 0.02),
			rot = vec3(-16.0, 0.0, 0.0),
		    },
      propTwo = { model = 'djs_prop_empanadas',
      bone = 57005,
      pos = vec3(0.11, 0.04, -0.03),
      rot = vec3 (-33.0, 0.0, 0.0),
      },
      export = 'jacrp-scripts.gollygosh',
      usetime = 17500,
      notification = 'You have satistfied your hunger'
		},
	},]]--
  ['djs_vutacos_frozen'] = {
		label = 'Tacos Frozen',
		stack = true,
		close = false,
		weight = 10,
		client = {
			image = "djs_vutacos.png",
		}
  },
  ['djs_empanadas_frozen'] = {
		label = 'Empanadas Frozen',
		stack = true,
		close = false,
		weight = 10,
		client = {
			image = "djs_empanadas.png",
		}
  },
  ['djs_vuburritos_frozen'] = {
		label = 'Burritos Frozen',
		stack = true,
		close = false,
		weight = 10,
		client = {
			image = "djs_vuburritos.png",
		}
  },
  ['djs_vuquesadillas_frozen'] = {
		label = 'Quesadillas Frozen',
		stack = true,
		close = false,
		weight = 10,
		client = {
			image = "djs_vuquesadillas.png",
		}
  },

	--[[['djs_vutacos'] = {
		label = 'VU Tacos',
		stack = true,
		close = false,
		weight = 10,
		client = {
			status = { hunger = 2000000 },
			anim = 'alca',        prop = {model = 'djs_vutacos',
			bone = 18905,
			pos = vec3(0.1, 0.0, 0.02),
			rot = vec3(-16.0, 0.0, 0.0),
		},
		propTwo = { model = 'djs_prop_vutacos',
		bone = 57005,
		pos = vec3(0.11, 0.04, -0.03),
		rot = vec3 (-33.0, 0.0, 0.0),
		},
		usetime = 17500,
		notification = 'You have satistfied your hunger'
		},
	},]]--
	--[[['djs_vuburritos'] = {
		label = 'VU Burritos',
		stack = true,
		close = false,
		weight = 10,
		client = {
      export = 'jacrp-scripts.gollygosh',
			status = { hunger = 2000000 },
			anim = 'alca',        prop = {model = 'djs_vuburritos',
			bone = 18905,
			pos = vec3(0.1, 0.0, 0.02),
			rot = vec3(-16.0, 0.0, 0.0),
		},
		propTwo = { model = 'djs_prop_vuburritos',
		bone = 57005,
		pos = vec3(0.11, 0.04, -0.03),
		rot = vec3 (-33.0, 0.0, 0.0),
		},
		usetime = 17500,
		notification = 'You have satistfied your hunger'
		},
	}, ]]--

  	['djs_vuburritos'] = {
		label = 'Burritos',
		stack = false,
		close = false,
		weight = 250,
    consume = 1,
    decay = true,
		client = {
      status = { hunger = 2000000 },
      export = 'jacrp-scripts.vuburrito',
    }
	},

  ['djs_vutacos'] = {
		label = 'Tacos',
		stack = false,
		close = false,
		weight = 250,
    consume = 1,
    decay = true,
		client = {
      status = { hunger = 2000000 },
      export = 'jacrp-scripts.vutacos',
    }
	},

  
  ['djs_empanadas'] = {
		label = 'Empanadas',
		stack = false,
		close = false,
		weight = 250,
    consume = 1,
    decay = true,
		client = {
      status = { hunger = 2000000 },
      export = 'jacrp-scripts.empanadas',
    }
	},

  ["rental_papers"] = {
		label = "Rental papers",
		weight = 0,
		stack = false,
		close = true,
		description = "Rental papers for a vehicle",
		client = {
			image = "rental_papers.png",
		}
	},
  
  ["megaphone"] = {
		label = "Megaphoner",
		weight = 500,
		stack = true,
		close = true,
		description = ""
	},
  
	["parcel"] = {
		label = "Parcel",
		weight = 350,
		stack = false,
		close = true,
		consume = 0,
		description = "Small package filled with something.",
		client = {
			image = "parcel.png",
		},
		server = {
			export = 'sd-parceltheft.useParcel'
		}
	},

  ["ngd_tobaccotrimmer"] = {
		label = "Tobacco Trimmer",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ngd_tobaccotrimmer.png",
		}
	},
	["ngd_cigtobaccoleaf"] = {
		label = "Cigarette Tobacco Leaves",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "ngd_cigtobaccoleaf.png",
		}
	},
	["ngd_pipetobaccoleaf"] = {
		label = "Pipe Tobacco Leaves",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "ngd_pipetobaccoleaf.png",
		}
	},
	["ngd_cigartobaccoleaf"] = {
		label = "Cigar Tobacco Leaves",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "ngd_cigartobaccoleaf.png",
		}
	},
	["ngd_drypipetobacco"] = {
		label = "Dried Pipe Tobacco Leaves",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ngd_drypipetobacco.png",
		}
	},
	["ngd_drycigtobacco"] = {
		label = "Dried Cigarette Tobacco Leaves",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ngd_drycigtobacco.png",
		}
	},
	["ngd_drycigartobacco"] = {
		label = "Dried Cigar Tobacco Leaves",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ngd_drycigartobacco.png",
		}
	},
	["ngd_drycherrytobacco"] = {
		label = "Dried Cherry Pipe Tobacco Leaves",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ngd_drycherrytobacco.png",
		}
	},
	["ngd_drymapletobacco"] = {
		label = "Dried Maple Pipe Tobacco Leaves",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ngd_drymapletobacco.png",
		}
	},
	["ngd_drylemontobacco"] = {
		label = "Dried Lemon Pipe Tobacco Leaves",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ngd_drylemontobacco.png",
		}
	},
	["ngd_drywintergtobacco"] = {
		label = "Dried Wintergreen Pipe Tobacco Leaves",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ngd_drywintergtobacco.png",
		}
	},
	["ngd_cigrollingpaper"] = {
		label = "Cigarette Rolling Paper",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ngd_cigrollingpaper.png",
		}
	},
	["ngd_premcigrollingpaper"] = {
		label = "Premium Cigarette Rolling Paper",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ngd_premcigrollingpaper.png",
		}
	},
	["ngd_cigfilter"] = {
		label = "Cigarette Filter",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ngd_cigfilter.png",
		}
	},

	["ngd_cigarrollingpaper"] = {
		label = "Cigar Rolling Paper",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ngd_cigarrollingpaper.png",
		}
	},
	["ngd_cigarbinder"] = {
		label = "Cigar Binder",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ngd_cigarbinder.png",
		}
	},
	["ngd_cigarillopaper"] = {
		label = "Cigarillo Rolling Paper",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ngd_cigarillopaper.png",
		}
	},
	["ngd_menthol"] = {
		label = "Menthol",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ngd_menthol.png",
		}
	},
	["ngd_premiumcigarpaper"] = {
		label = "Premium Cigar Rolling Paper",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ngd_premiumcigarpaper.png",
		}
	},
	["ngd_importcuban"] = {
		label = "Imported Cuban Tobacco",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ngd_importcuban.png",
		}
	},
	["ngd_cig1"] = {
		label = "Standard Cigarette",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ngd_cig1.png",
		}
	},
	["ngd_cig2"] = {
		label = "Premium Cigarette",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ngd_cig2.png",
		}
	},
	["ngd_cig3"] = {
		label = "Cigarillo",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ngd_cig3.png",
		}
	},
	["ngd_cig4"] = {
		label = "Menthol Cigarette",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ngd_cig4.png",
		}
	},
	["ngd_cigar1"] = {
		label = "Standard Cigar",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ngd_cigar1.png",
		}
	},
	["ngd_cigar2"] = {
		label = "Premium Cigar",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ngd_cigar2.png",
		}
	},
	["ngd_cigar3"] = {
		label = "Cuban Cigar",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ngd_cigar3.png",
		}
	},
	["ngd_pipe1"] = {
		label = "Ivory Pipe",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ngd_pipe1.png",
		}
	},
	["ngd_pipe2"] = {
		label = "Cherrywood Pipe",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ngd_pipe2.png",
		}
	},
	["ngd_pipe3"] = {
		label = "Cocobolo Pipe",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ngd_pipe3.png",
		}
	},
	["ngd_pipe4"] = {
		label = "Corncob Pipe",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ngd_pipe4.png",
		}
	},
	["ngd_pipe5"] = {
		label = "Churchwarden Pipe",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ngd_pipe5.png",
		}
	},
	["ngd_cherryoil"] = {
		label = "Cherry Tobacco Flavoring",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ngd_cherryoil.png",
		}
	},
	["ngd_mapleoil"] = {
		label = "Maple Tobacco Flavoring",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ngd_mapleoil.png",
		}
	},
	["ngd_lemonoil"] = {
		label = "Lemon Tobacco Flavoring",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ngd_lemonoil.png",
		}
	},
	["ngd_wintergreenoil"] = {
		label = "Wintergreen Tobacco Flavoring",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ngd_wintergreenoil.png",
		}
	},
	["ngd_standardcigpack"] = {
		label = "Pack Of Cigarettes",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ngd_standardcigpack.png",
		}
	},
	["ngd_premiumcigpack"] = {
		label = "Pack Of Premium Cigarettes",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ngd_premiumcigpack.png",
		}
	},
	["ngd_cigarillopack"] = {
		label = "Pack Of Cigarillos",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ngd_cigarillopack.png",
		}
	},
	["ngd_mentholcigpack"] = {
		label = "Pack Of Menthol Cigarettes",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ngd_mentholcigpack.png",
		}
	},
	["ngd_stdcigarbox"] = {
		label = "Box Of Cigars",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ngd_stdcigarbox.png",
		}
	},
	["ngd_premiumcigarbox"] = {
		label = "Premium Box Of Cigars",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ngd_premiumcigarbox.png",
		}
	},
	["ngd_cubancigarbox"] = {
		label = "Box Of Cuban Cigars",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ngd_cubancigarbox.png",
		}
	},
	["ngd_tobaccowhisky"] = {
		label = "Whisky",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ngd_tobaccowhisky.png",
		}
	},

  
["ngd_vuice"] = {
  label = "Ice",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vuice.png",
  }
},

["ngd_vumar"] = {
  label = "Martini",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vumar.png",
  }
},

["ngd_vuem"] = {
  label = "Emerald",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vuem.png",
  }
},

["ngd_vucoffee"] = {
  label = "Coffee",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vucoffee.png",
  }
},

["ngd_vurd"] = {
  label = "Red Devil",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vurd.png",
  }
},

["ngd_vuds"] = {
  label = "Dark Side",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vuds.png",
  }
},

["ngd_vureap"] = {
  label = "Reaper",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vureap.png",
  }
},

["ngd_vucocorum"] = {
  label = "Coconut Rum",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vucocorum.png",
  }
},

["ngd_vubc"] = {
  label = "Blue Curacao",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vubc.png",
  }
},

["ngd_vuom"] = {
  label = "Orange Martini",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vuom.png",
  }
},

["ngd_vuvodka"] = {
  label = "Vodka",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vuvodka.png",
  }
},

["ngd_vustout"] = {
  label = "Stout",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vustout.png",
  }
},

["ngd_vupj"] = {
  label = "Pineapple Juice",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vupj.png",
  }
},

["ngd_vumartiniglass"] = {
  label = "Martini Glass",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vumartiniglass.png",
  }
},

["ngd_vump"] = {
  label = "Magic Potion",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vump.png",
  }
},

["ngd_vumgs"] = {
  label = "Green Screwdriver",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vumgs.png",
  }
},

["ngd_vubw"] = {
  label = "Black Widow",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vubw.png",
  }
},

["ngd_vublm"] = {
  label = "Blue Mojito",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vublm.png",
  }
},

["ngd_vucdv"] = {
  label = "Creme De Violette",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vucdv.png",
  }
},

["ngd_vuchambottle"] = {
  label = "Champagne Bottle",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vuchambottle.png",
  }
},

["ngd_vumint"] = {
  label = "Mint",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vumint.png",
  }
},

["ngd_vuolive"] = {
  label = "Olive",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vuolive.png",
  }
},

["ngd_vurwbottle"] = {
  label = "Red Wine Bottle",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vurwbottle.png",
  }
},

["ngd_vucs"] = {
  label = "Caribbean Sunrise",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vucs.png",
  }
},

["ngd_vuhurricaneglass"] = {
  label = "Hurricane Glass",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vuhurricaneglass.png",
  }
},

["ngd_vuwhitewine"] = {
  label = "White Wine",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vuwhitewine.png",
  }
},

["ngd_vuwineglass"] = {
  label = "Wine Glass",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vuwineglass.png",
  }
},

["ngd_vuemp"] = {
  label = "Empress",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vuemp.png",
  }
},

["ngd_vugrenadine"] = {
  label = "Grenadine",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vugrenadine.png",
  }
},

["ngd_50sog"] = {
  label = "50 Shades of Grey",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_50sog.png",
  }
},

["ngd_vuwwbottle"] = {
  label = "White Wine Bottle",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vuwwbottle.png",
  }
},

["ngd_vulime"] = {
  label = "Lime",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vulime.png",
  }
},

["ngd_vucham"] = {
  label = "Champagne",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vucham.png",
  }
},

["ngd_vulmar"] = {
  label = "Lagoon Martini",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vulmar.png",
  }
},

["ngd_vucbj"] = {
  label = "Cranberry Juice",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vucbj.png",
  }
},

["ngd_vuredwine"] = {
  label = "Red Wine",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vuredwine.png",
  }
},

["ngd_vusp"] = {
  label = "Sweet Poison",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vusp.png",
  }
},

["ngd_vumidori"] = {
  label = "Midori",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vumidori.png",
  }
},

["ngd_vurum"] = {
  label = "Rum",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vurum.png",
  }
},

["ngd_vuoj"] = {
  label = "Orange Juice",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vuoj.png",
  }
},

["ngd_vufc"] = {
  label = "Fleur Collins",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vufc.png",
  }
},

["ngd_vuchamglass"] = {
  label = "Champagne Glass",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vuchamglass.png",
  }
},

["ngd_vulb"] = {
  label = "IPA",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vulb.png",
  }
},

["ngd_vudb"] = {
  label = "Diamond Blue",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vudb.png",
  }
},

["ngd_vulager"] = {
  label = "Lager",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vulager.png",
  }
},

["ngd_vutonic"] = {
  label = "Tonic",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vutonic.png",
  }
},

["ngd_vulj"] = {
  label = "Lemon Juice",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vulj.png",
  }
},

["ngd_vubm"] = {
  label = "The Upsidedown",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vubm.png",
  }
},

["ngd_vutallglass"] = {
  label = "Tall Glass",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vutallglass.png",
  }
},

["ngd_vugin"] = {
  label = "Gin",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vugin.png",
  }
},

["ngd_vuvermouth"] = {
  label = "Vermouth",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vuvermouth.png",
  }
},

["ngd_vublvodka"] = {
  label = "Black Vodka",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vublvodka.png",
  }
},

["ngd_vutequila"] = {
  label = "Tequila",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vutequila.png",
  }
},

["ngd_vumenu"] = {
  label = "VU Drink Menu",
  weight = 0,
  stack = true,
  close = true,
  description = "",
  client = {
      image = "ngd_vumenu.png",
  }
},



["cutted_potato"] = { 
    label = 'Cut Potato', 
    description = 'Used for Cooking', 
    weight = 20, 
    stack = true, 
    close = true, 
},


["cutted_tomato"] = { 
    label = 'Tomato Slices', 
    description = 'Used for Cooking', 
    weight = 20, 
    stack = true, 
    close = true, 
},


["cutted_onion"] = { 
    label = 'Onion Slices', 
    description = 'Used for Cooking', 
    weight = 20, 
    stack = true, 
    close = true, 
},


["cheddar"] = { 
    label = 'Cheddar Cheese Slice', 
    description = 'Used for Cooking', 
    weight = 20, 
    stack = true, 
    close = true, 
},


["cutted_lettuce"] = { 
    label = 'Diced Lettuce', 
    description = 'Used for Cooking', 
    weight = 20, 
    stack = true, 
    close = true, 
},


["burgerbun"] = { 
    label = 'Bun', 
    description = 'Basically just bread..', 
    weight = 20, 
    stack = true, 
    close = true, 
},


["raw_bacon"] = { 
    label = 'Raw Bacon Slice', 
    description = 'Fresh from the farm!', 
    weight = 20, 
    stack = true, 
    close = true, 
},


["raw_burgerpatty"] = { 
    label = 'Raw Burger Patty', 
    description = 'BurgerShots Secret Recipe', 
    weight = 20, 
    stack = true, 
    close = true, 
},


["burgerpatty"] = { 
    label = 'Burger Patty', 
    description = 'BurgerShots Finest!', 
    weight = 20, 
    stack = true, 
    close = true, 
},


["bacon"] = { 
    label = 'Cooked Bacon', 
    description = 'Mmm. Crispy..', 
    weight = 20, 
    stack = true, 
    close = true, 
},


["raw_taco"] = {
    label = "Raw Taco Meat",
    weight = 50,
    stack = true,
    close = true
},

["taco_meat"] = {
    label = "Cooked Taco Meat", 
    weight = 50,
    stack = true,
    close = true
},

["taco_shell"] = {
    label = "Taco Shell",
    weight = 10,
    stack = true,
    close = true
},

["taco_sauce"] = {
    label = "Taco Sauce",
    weight = 20,
    stack = true,
    close = true
},

  ["bacon_burger"] = { 
    label = 'Bacon Burger', 
    description = 'Mmm.. Delicious!', 
    weight = 100, 
    stack = true, 
    close = true, 
    client = {
      status = { hunger = 100000 },
      anim = { dict = "mp_player_inteat@burger", clip = "mp_player_int_eat_burger_fp" },
      prop = { 
        model = 'prop_cs_burger_01', 
        bone = 18905,
        pos = vec3(0.12, 0.04, 0.01), 
        rot = vec3(161.55, -47.5, -4.65)
      },
      usetime = 5000,
    }
  },
  
  
  ["bleeder"] = { 
    label = 'Bleeder Burger', 
    description = 'A BurgerShot Classic!', 
    weight = 100, 
    stack = true, 
    close = true, 
    client = {
      status = { hunger = 150000 },
      anim = { dict = "mp_player_inteat@burger", clip = "mp_player_int_eat_burger_fp" },
      prop = { 
        model = 'prop_cs_burger_01', 
        bone = 18905,
        pos = vec3(0.12, 0.04, 0.01), 
        rot = vec3(161.55, -47.5, -4.65)
      },
      usetime = 5000,
    }
  },
  
  
  ["heartstopper"] = { 
    label = 'Heart-Stopper Burger', 
    description = 'Clogged FULL of Goodness!', 
    weight = 100, 
    stack = true, 
    close = true, 
    client = {
      status = { hunger = 200000 },
      anim = { dict = "mp_player_inteat@burger", clip = "mp_player_int_eat_burger_fp" },
      prop = { 
        model = 'prop_cs_burger_01', 
        bone = 18905,
        pos = vec3(0.12, 0.04, 0.01), 
        rot = vec3(161.55, -47.5, -4.65)
      },
      usetime = 5000,
    }
  },
  ["taco"] = {
      label = "Taco",
      weight = 100,
      stack = true,
      close = true,
      client = {
          status = { hunger = 150000 },
          anim = { dict = "mp_player_inteat@burger", clip = "mp_player_int_eat_burger_fp" },
          prop = {
              model = 'prop_taco_01',
              bone = 18905,
              pos = vec3(0.12, 0.04, 0.01),
              rot = vec3(161.55, -47.5, -4.65)
          },
          usetime = 5000,
      }
  },

    ["cwnotepad"] = {
      label = "Note Pad",
      weight = 300,
      stack = true,
      close = true,
      allowArmed = true,
      description = "Use this to write notes",
    },
    ["cwnote"] = {
      label = "Note",
      weight = 350,
      stack = true,
      close = true,
      allowArmed = true,
      description = "A note",
    },
    
--- boii_hunting
    ['hide_shark'] = {
        label = 'Shark Hide',
        weight = 1500,
    },
    ['hide_whale'] = {
        label = 'Whale Hide',
        weight = 2000,
    },
    ['hide_dolphin'] = {
        label = 'Dolphin Hide',
        weight = 1250,
    },
    ['hide_stingray'] = {
        label = 'Stingray Hide',
        weight = 850,
    },
    ['hide_boar'] = {
        label = 'Boar Hide',
        weight = 1100,
    },
    ['hide_coyote'] = {
        label = 'Coyote Hide',
        weight = 800,
    },
    ['hide_deer'] = {
        label = 'Deer Hide',
        weight = 500,
    },
    ['hide_mtlion'] = {
        label = 'Mt Lion Hide',
        weight = 1000,
    },
    ['hide_rabbit'] = {
        label = 'Rabbit Hide',
        weight = 300,
    },
    ['hide_cow'] = {
        label = 'Cow Hide',
        weight = 1300,
    },
    ['hide_rat'] = {
        label = 'Rat Hide',
        weight = 300,
    },
    ['meat_shark'] = {
        label = 'Shark Meat',
        weight = 900,
    },
    ['meat_whale'] = {
        label = 'Whale Meat',
        weight = 1200,
    },
    ['meat_dolphin'] = {
        label = 'Dolphin Meat',
        weight = 750,
    },
    ['meat_stingray'] = {
        label = 'Stingray Meat',
        weight = 450,
    },
    ['meat_boar'] = {
        label = 'Boar Meat',
        weight = 600,
    },
    ['meat_pig'] = {
        label = 'Pig Meat',
        weight = 600,
    },
    ['meat_coyote'] = {
        label = 'Coyote Meat',
        weight = 500,
    },
    ['meat_deer'] = {
        label = 'Deer Meat',
        weight = 300,
    },
    ['meat_mtlion'] = {
        label = 'Mt Lion Meat',
        weight = 650,
    },
    ['meat_rabbit'] = {
        label = 'Rabbit Meat',
        weight = 200,
    },
    ['meat_cow'] = {
        label = 'Cow Meat',
        weight = 800,
    },
    ['meat_rat'] = {
        label = 'Rat Meat',
        weight = 100,
    },


["clothes"] = {


    label = "Clothes",
    weight = 500,
    stack = false,
    description = "A mix of clothes to wear",
},
  ["usbcable"] = {
    label = "USB Cable",
    weight = 50,
  },
  ["big_bomb"] = {
    label = "Big Bomb",
    weight = 1000,
    degrade = 2880,
    decay = false,
  },
	-- Servicing Items
["engine_oil"] = {
  label = "Engine Oil",
  weight = 1000,
  degrade = 2880,
    decay = false,
},
["tyre_replacement"] = {
  label = "Tyre Replacement",
  weight = 1000,
  degrade = 2880,
    decay = false,
},
["clutch_replacement"] = {
  label = "Clutch Replacement",
  weight = 1000,
  degrade = 2880,
    decay = false,
},
["air_filter"] = {
  label = "Air Filter",
  weight = 100,
  degrade = 2880,
    decay = false,
},
["spark_plug"] = {
  label = "Spark Plug",
  weight = 1000,
  degrade = 2880,
    decay = false,
},
["brakepad_replacement"] = {
  label = "Brakepad Replacement",
  weight = 1000,
  degrade = 2880,
    decay = false,
},
["suspension_parts"] = {
  label = "Suspension Parts",
  weight = 1000,
  degrade = 2880,
    decay = false,
},
-- Engine Items
["i4_engine"] = {
  label = "I4 Engine",
  weight = 1000,
  degrade = 2880,
    decay = false,
},
["v6_engine"] = {
  label = "V6 Engine",
  weight = 1000,
  degrade = 2880,
    decay = false,
},
["v8_engine"] = {
  label = "V8 Engine",
  weight = 1000,
  degrade = 2880,
    decay = false,
},
["v12_engine"] = {
  label = "V12 Engine",
  weight = 1000,
  degrade = 2880,
    decay = false,
},
["turbocharger"] = {
  label = "Turbocharger",
  weight = 1000,
  degrade = 2880,
    decay = false,
},
-- Electric Engines
["ev_motor"] = {
  label = "EV Motor",
  weight = 1000,
  degrade = 2880,
    decay = false,
},
["ev_battery"] = {
  label = "EV Battery",
  weight = 1000,
  degrade = 2880,
    decay = false,
},
["ev_coolant"] = {
  label = "EV Coolant",
  weight = 1000,
  degrade = 2880,
    decay = false,
},
-- Drivetrain Items
["awd_drivetrain"] = {
  label = "AWD Drivetrain",
  weight = 1000,
  degrade = 2880,
    decay = false,
},
["rwd_drivetrain"] = {
  label = "RWD Drivetrain",
  weight = 1000,
  degrade = 2880,
    decay = false,
},
["fwd_drivetrain"] = {
  label = "FWD Drivetrain",
  weight = 1000,
  degrade = 2880,
    decay = false,
},
-- Gearbox
["manual_gearbox"] = {
  label = "Manual Gearbox",
  weight = 1000,
  degrade = 2880,
    decay = false,
},
-- Tuning Items
["slick_tyres"] = {
  label = "Slick Tyres",
  weight = 1000,
  degrade = 2880,
    decay = false,
},
["semi_slick_tyres"] = {
  label = "Semi Slick Tyres",
  weight = 1000,
  degrade = 2880,
    decay = false,
},
["offroad_tyres"] = {
  label = "Offroad Tyres",
  weight = 1000,
  degrade = 2880,
    decay = false,
},
["drift_tuning_kit"] = {
  label = "Drift Tuning Kit",
  weight = 1000,
  degrade = 2880,
    decay = false,
},
["ceramic_brakes"] = {
  label = "Ceramic Brakes",
  weight = 1000,
  degrade = 2880,
    decay = false,
},
-- Cosmetic Items
["lighting_controller"] = {
  label = "Lighting Controller",
  weight = 100,
  client = {
	event = "jg-mechanic:client:show-lighting-controller",
  degrade = 2880,
    decay = false,
  }
},
["stancing_kit"] = {
  label = "Stancer Kit",
  weight = 100,
  client = {
	event = "jg-mechanic:client:show-stancer-kit",
  degrade = 2880,
    decay = false,
  }
},
["cosmetic_part"] = {
  label = "Cosmetic Parts",
  weight = 100,
  degrade = 2880,
    decay = false,
},
["respray_kit"] = {
  label = "Respray Kit",
  weight = 1000,
  degrade = 2880,
    decay = false,
},
["vehicle_wheels"] = {
  label = "Vehicle Wheels Set",
  weight = 1000,
},
["tyre_smoke_kit"] = {
  label = "Tyre Smoke Kit",
  weight = 1000,
},
["bulletproof_tyres"] = {
  label = "Bulletproof Tyres",
  weight = 1000,
},
["extras_kit"] = {
  label = "Extras Kit",
  weight = 1000,
},
-- Nitrous & Cleaning Items
["nitrous_bottle"] = {
  label = "Nitrous Bottle",
  weight = 1000,
  client = {
	event = "jg-mechanic:client:use-nitrous-bottle",
  degrade = 2880,
    decay = false,
  }
},
["empty_nitrous_bottle"] = {
  label = "Empty Nitrous Bottle",
  weight = 1000,
  degrade = 2880,
    decay = false,
},
["nitrous_install_kit"] = {
  label = "Nitrous Install Kit",
  weight = 1000,
  degrade = 2880,
    decay = false,
},
["cleaning_kit"] = {
  label = "Cleaning Kit",
  weight = 1000,
  client = {
	event = "jg-mechanic:client:clean-vehicle",
  degrade = 2880,
    decay = false,
  }
},
["repair_kit"] = {
  label = "Repair Kit",
  weight = 1000,
  client = {
	event = "jg-mechanic:client:repair-vehicle",
  degrade = 2880,
    decay = false,
  }
},
["duct_tape"] = {
  label = "Duct Tape",
  weight = 1000,
  client = {
	event = "jg-mechanic:client:use-duct-tape",
  degrade = 2880,
    decay = false,
  }
},
-- Performance Item
["performance_part"] = {
  label = "Performance Parts",
  weight = 1000,
  degrade = 2880,
    decay = false,
},
-- Mechanic Tablet Item
["mechanic_tablet"] = {
  label = "Mechanic Tablet",
  weight = 1000,
  client = {
	event = "jg-mechanic:client:use-tablet",
  }
},




  -- Crafting Items

  ['cw_blueprint'] = {
	  label = 'Blueprint',
	  weight = 1,
	  close = true,
	  allowArmed = true,
	  stack = false,
	  client = {
		  image = "blueprint.png",
	  },
  },

  ['aceliquorkey'] = {
	  label = 'A Key',
	  description = 'A key with an Ace of Clubs on it',
	  weight = 50,
	  degrade = 120,
	  stack = false,
  },

  ['bandage'] = {
	  label = 'Bandage',
	  weight = 115,
    allowArmed = false,
  },


  ['parachute'] = {
	  label = 'Parachute',
	  weight = 8000,
	  stack = false,
	  client = {
		  anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
		  usetime = 1500
	  }
  },

  ['garbage'] = {
	  label = 'Garbage',
  },

  ['paperbag'] = {
	  label = 'Paper Bag',
	  weight = 1,
	  stack = false,
	  close = false,
	  consume = 0
  },

  ['panties'] = {
	  label = 'Panties',
	  weight = 10,
	  consume = 1,
	  client = {
		  status = { stress = -25000 },
		  anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		  prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
		  usetime = 2500,
	  }
  },

  ['lockpick'] = {
	  label = 'Lockpick',
	  weight = 160,
    client = {
      event = 'lockpick:use'
    },
	  stack = true,
  },


  ["phone"] = {
	  label = "Phone",
	  weight = 190,
	  stack = false,
	  consume = 0,
	  client = {
		  export = "lb-phone.UsePhoneItem",
		  remove = function()
			  TriggerEvent("lb-phone:itemRemoved")
		  end,
		  add = function()
			  TriggerEvent("lb-phone:itemAdded")
		  end
	  },
	  buttons = {
		  {
			  label = 'Copy Number',
			  action = function(slot)
				  local item = exports.ox_inventory:Search('slots', 'phone')
				  for _, v in pairs(item) do
					  if (v.slot == slot) then
						  lib.setClipboard(v.metadata.lbPhoneNumber)
						  break
					  end
				  end
			  end
		  }
	  },
  },


  ['phone_charger'] = {
	  label = 'Power Bank',
	  weight = 190,
	  stack = false,
	  consume = 0,
  },

  ['clothing'] = { -- prop = 0, drawable = 2, texture = 1
	  label = 'Clothing',
	  consume = 0,
  },

  ['police_hat'] = { -- prop = 0, drawable = 2, texture = 1
	  label = 'Clothing',
	  consume = 0,
  },

  ['money'] = {
	  label = 'Money',
  },

  ['black_money'] = {
	  label = 'Dirty Money',
  },

  ['id_card'] = {
	  label = "ID Card",
	  weight = 0,
	  stack = false,
	  close = true,
	  description = "A card containing citizen info",
	  client = {
		  image = "id_card.png",
	  }
  },

  ['driver_license'] = {
	  label = "Drivers License",
	  weight = 0,
	  stack = false,
	  close = true,
	  description = "A license allowing a citizen to operate a vehicle.",
	  client = {
		  image = "driver_license.png",
	  }
  },

  ['weaponlicense'] = {
	  label = "Weapons License",
	  weight = 0,
	  stack = false,
	  close = true,
	  description = "A license allowing a citizen to carry firearms",
	  client = {
		  image = "weapon_license.png",
	  }
  },

  ['lawyerpass'] = {
	  label = 'Lawyer Pass',
  },

  ['radio'] = {
	  label = 'Radio',
	  weight = 1000,
	  stack = false,
	  allowArmed = true
  },

  ['advancedlockpick'] = {
	  label = 'Advanced Lockpick',
	  weight = 500,
    client = {
      event = 'lockpick:use'
    },
	  stack = true,
  },

  ['electronickit'] = {
	  label = 'Electronic Kit',
	  weight = 500,
  },

  ['rolex'] = {
	  label = 'Golden Watch',
	  weight = 1500,
  },

  ['goldbar'] = {
	  label = 'Gold Bar',
	  weight = 1500,
  },

  ['goldchain'] = {
	  label = 'Golden Chain',
	  weight = 1500,
  },

  ['crack_baggy'] = {
	  label = 'Crack Baggy',
	  weight = 100,
  },

  ['cokebaggy'] = {
	  label = 'Bag of Coke',
	  weight = 100,
  },

  ['coke_brick'] = {
	  label = 'Coke Brick',
	  weight = 2000,
  },

  ['coke_small_brick'] = {
	  label = 'Coke Package',
	  weight = 1000,
  },

  ['xtcbaggy'] = {
	  label = 'Bag of Ecstasy',
	  weight = 100,
  },

  ['meth'] = {
	  label = 'Methamphetamine',
	  weight = 100,
  },

  ['weed_ak47'] = {
	  label = 'AK47 2g',
	  weight = 200,
  },

  ['weed_ak47_seed'] = {
	  label = 'AK47 Seed',
	  weight = 1,
  },

  ['weed_skunk'] = {
	  label = 'Skunk 2g',
	  weight = 200,
  },

  ['weed_skunk_seed'] = {
	  label = 'Skunk Seed',
	  weight = 1,
  },

  ['weed_amnesia'] = {
	  label = 'Amnesia 2g',
	  weight = 200,
  },

  ['weed_amnesia_seed'] = {
	  label = 'Amnesia Seed',
	  weight = 1,
  },

  ['weed_og-kush'] = {
	  label = 'OGKush 2g',
	  weight = 200,
  },

  ['weed_og-kush_seed'] = {
	  label = 'OGKush Seed',
	  weight = 1,
  },

  ['weed_white-widow'] = {
	  label = 'OGKush 2g',
	  weight = 200,
  },

  ['weed_white-widow_seed'] = {
	  label = 'White Widow Seed',
	  weight = 1,
  },

  ['weed_purple-haze'] = {
	  label = 'Purple Haze 2g',
	  weight = 200,
  },

  ['weed_purple-haze_seed'] = {
	  label = 'Purple Haze Seed',
	  weight = 1,
  },

  ['weed_brick'] = {
	  label = 'Weed Brick',
	  weight = 2000,
  },

  ['weed_nutrition'] = {
	  label = 'Plant Fertilizer',
	  weight = 2000,
  },

  ['joint'] = {
	  label = 'Joint',
	  weight = 200,
  },

  ['rolling_paper'] = {
	  label = 'Rolling Paper',
	  weight = 0,
  },

  ['empty_weed_bag'] = {
	  label = 'Empty Weed Bag',
	  weight = 0,
  },

  ['firstaid'] = {
	  label = 'First Aid',
	  weight = 2500,
  },

  ['ifaks'] = {
	  label = 'Individual First Aid Kit',
	  weight = 2500,
  },

  ['painkillers'] = {
	  label = 'Painkillers',
	  weight = 400,
  },

  ['firework1'] = {
	  label = '2Brothers',
	  weight = 1000,
  },

  ['firework2'] = {
	  label = 'Poppelers',
	  weight = 1000,
  },

  ['firework3'] = {
	  label = 'WipeOut',
	  weight = 1000,
  },

  ['firework4'] = {
	  label = 'Weeping Willow',
	  weight = 1000,
  },

  ['steel'] = {
	  label = 'Steel',
	  weight = 100,
  },

  ['rubber'] = {
	  label = 'Rubber',
	  weight = 100,
  },

  ['metalscrap'] = {
	  label = 'Metal Scrap',
	  weight = 100,
  },
  
  ['wirescrap'] = {
	  label = 'Wire Scrap',
	  weight = 100,
  },

  ['iron'] = {
	  label = 'Iron',
	  weight = 100,
  },

  ['copper'] = {
	  label = 'Copper',
	  weight = 100,
  },

  ['aluminium'] = {
	  label = 'Aluminium',
	  weight = 100,
  },

  ['plastic'] = {
	  label = 'Plastic',
	  weight = 100,
  },

  ['glass'] = {
	  label = 'Glass',
	  weight = 100,
  },

  ['gatecrack'] = {
	  label = 'Gatecrack',
	  weight = 1000,
  },

  ['cryptostick'] = {
	  label = 'Crypto Stick',
	  weight = 100,
  },

  ['trojan_usb'] = {
	  label = 'Trojan USB',
	  weight = 100,
  },

  ['toaster'] = {
	  label = 'Toaster',
	  weight = 5000,
  },

  ['small_tv'] = {
	  label = 'Small TV',
	  weight = 100,
  },

  ['security_card_01'] = {
	  label = 'Security Card A',
	  weight = 100,
  },

  ['security_card_02'] = {
	  label = 'Security Card B',
	  weight = 100,
  },

  ['diving_gear'] = {
	  label = 'Diving Gear',
	  weight = 30000,
  },

  ['diving_fill'] = {
	  label = 'Diving Tube',
	  weight = 3000,
  },

  ['antipatharia_coral'] = {
	  label = 'Antipatharia',
	  weight = 1000,
  },

  ['dendrogyra_coral'] = {
	  label = 'Dendrogyra',
	  weight = 1000,
  },

  ['jerry_can'] = {
	  label = 'Jerrycan',
	  weight = 3000,
  },

  ['nitrous'] = {
	  label = 'Nitrous',
	  weight = 1000,
  },

  ['wine'] = {
	  label = 'Wine',
	  weight = 500,
  },

  ['grape'] = {
	  label = 'Grape',
	  weight = 10,
  },

  ['coffee'] = {
	  label = 'Coffee',
	  weight = 200,
  },

  ['beer'] = {
	  label = 'beer',
	  weight = 200,
  },


  ['walking_stick'] = {
	  label = 'Walking Stick',
	  weight = 1000,
  },

  ['lighter'] = {
	  label = 'Lighter',
	  weight = 200,
  },

  ['binoculars'] = {
	  label = 'Binoculars',
	  weight = 800,
  },

  ['stickynote'] = {
	  label = 'Sticky Note',
	  weight = 0,
  },

  ['empty_evidence_bag'] = {
	  label = 'Empty Evidence Bag',
	  weight = 200,
  },

  ['filled_evidence_bag'] = {
	  label = 'Filled Evidence Bag',
	  weight = 200,
  },

  ['harness'] = {
	  label = 'Harness',
	  weight = 200,
  },

  
  ['hat'] = {
	  label = 'Headwear',
	  weight = 200,
  },

  ["cleaningsupplies"] = {
	  label = "Cleaning Supplies",
	  weight = 100,
	  stack = false,
	  close = false,
	  description = "You can clean some shit with this",
	  client = {
		  image = "cleaningsupplies.png",
	  }
  },

-- LATION DETECTING
-- Add items into ox_inventory/data/items.lua
['blue_metaldetector'] = {
  label = 'Beginner\'s Beacon',
  weight = 475
},

['green_metaldetector'] = {
  label = 'Lustrous Locator',
  weight = 475
},

['red_metaldetector'] = {
  label = 'Treasure Trove Tracker',
  weight = 475
},

['orange_metaldetector'] = {
  label = 'Goldseeker\'s Grail',
  weight = 475
},

['black_metaldetector'] = {
  label = 'Archaeo Ace',
  weight = 475
},

['md_shovel'] = {
  label = 'Shovel',
  weight = 55
},

['md_bottlecap'] = {
  label = 'Bottle Cap',
  weight = 25
},

['md_brokenjunk'] = {
  label = 'Broken Junk',
  weight = 25
},

['md_crushedcan'] = {
  label = 'Crushed Can',
  weight = 25
},

['md_lighter'] = {
  label = 'Lighter',
  weight = 25
},

['md_metalcan'] = {
  label = 'Metal Can',
  weight = 25
},

['md_nails'] = {
  label = 'Nails',
  weight = 25
},

['md_needle'] = {
  label = 'Needle',
  weight = 25
},

['md_nickle'] = {
  label = 'Nickle',
  weight = 25
},

['md_nut'] = {
  label = 'Nut',
  weight = 25
},

['md_oldshotgunshell'] = {
  label = 'Old Shotgun Shell',
  weight = 25
},

['md_paperclip'] = {
  label = 'Paper Clip',
  weight = 25
},

['md_pulltab'] = {
  label = 'Pull Tab',
  weight = 25
},

['md_quarter'] = {
  label = 'Quarter',
  weight = 25
},

['md_rustyball'] = {
  label = 'Rusty Ball',
  weight = 25
},

['md_rustyironball'] = {
  label = 'Rusty Iron Ball',
  weight = 25
},

['md_rustyjunk'] = {
  label = 'Rusty Junk',
  weight = 25
},

['md_rustynails'] = {
  label = 'Rusty Nails',
  weight = 25
},

['md_rustypliers'] = {
  label = 'Rusty Pliers',
  weight = 25
},

['md_rustyring'] = {
  label = 'Rusty Ring',
  weight = 25
},

['md_rustyscissors'] = {
  label = 'Rusty Scissors',
  weight = 25
},

['md_rustyscrewdriver'] = {
  label = 'Rusty Screwdriver',
  weight = 25
},

['md_rustyspring'] = {
  label = 'Rusty Spring',
  weight = 25
},

['md_screw'] = {
  label = 'Screw',
  weight = 25
},

['md_wheatpenny'] = {
  label = 'Wheat Penny',
  weight = 25
},

['md_ancientcoin'] = {
  label = 'Ancient Coin',
  weight = 25
},

['md_blackwatch'] = {
  label = 'Watch',
  weight = 25
},

['md_coppernugget'] = {
  label = 'Copper Nugget',
  weight = 25
},

['md_diamondearings'] = {
  label = 'Diamond Earings',
  weight = 25
},

['md_diamondnecklace'] = {
  label = 'Diamond Necklace',
  weight = 25
},

['md_diamondring'] = {
  label = 'Diamond Ring',
  weight = 25
},

['md_earpod'] = {
  label = 'Ear Pod',
  weight = 25
},

['md_golddollar'] = {
  label = 'Gold Dollar',
  weight = 25
},

['md_goldearings'] = {
  label = 'Gold Earings',
  weight = 25
},

['md_goldnecklace'] = {
  label = 'Gold Necklace',
  weight = 25
},

['md_goldnugget'] = {
  label = 'Gold Nugget',
  weight = 25
},

['md_goldounce'] = {
  label = '1oz Gold Bar',
  weight = 25
},

['md_goldring'] = {
  label = 'Gold Ring',
  weight = 25
},

['md_halfdollar'] = {
  label = 'Half Dollar',
  weight = 25
},

['md_ironnugget'] = {
  label = 'Iron Nugget',
  weight = 25
},

['md_platinumnugget'] = {
  label = 'Platinum Nugget',
  weight = 25
},

['md_presidentialwatch'] = {
  label = 'Presidential Watch',
  weight = 25
},

['md_relicrevolver'] = {
  label = 'Relic Revolver',
  weight = 25
},

['md_silverdime'] = {
  label = 'Silver Dime',
  weight = 25
},

['md_silverearings'] = {
  label = 'Silver Earings',
  weight = 25
},

['md_silverounce'] = {
  label = '1oz Silver Bar',
  weight = 25
},

['md_silverring'] = {
  label = 'Silver Ring',
  weight = 25
},

['md_brokenphone'] = {
  label = 'Broken Phone',
  weight = 25
},

-- Lation Diving

-- Add items into ox_inventory/data/items.lua
['ls_scuba_gear_1'] = {
	label = 'Scuba Gear',
	weight = 4000,
	stack = false,
	close = true
},

['ls_scuba_gear_2'] = {
	label = 'Scuba Gear',
	weight = 4000,
	stack = false,
	close = true
},

['ls_scuba_gear_3'] = {
	label = 'Scuba Gear',
	weight = 4000,
	stack = false,
	close = true
},

['ls_scuba_gear_4'] = {
	label = 'Scuba Gear',
	weight = 4000,
	stack = false,
	close = true
},

['ls_scuba_gear_5'] = {
	label = 'Scuba Gear',
	weight = 4000,
	stack = false,
	close = true
},

['ls_oxygen_tank'] = {
	label = 'Oxygen Tank',
	weight = 2000,
	stack = false,
	close = true
},

['ls_diving_crate'] = {
	label = 'Crate',
	weight = 1000
},

['ls_old_boot'] = {
    label = 'Old Boot',
    weight = 25
},

['ls_wood_plank'] = {
    label = 'Wood Plank',
    weight = 25
},

['ls_rusted_padlock'] = {
    label = 'Rusted Padlock',
    weight = 25
},

['ls_rusted_key'] = {
    label = 'Rusted Key',
    weight = 25
},

['ls_rusted_gear'] = {
    label = 'Rusted Gear',
    weight = 25
},

['ls_seashell'] = {
    label = 'Seashell',
    weight = 25
},

['ls_seaweed'] = {
    label = 'Seaweed',
    weight = 25
},

['ls_rusted_muffler'] = {
    label = 'Rusted Muffler',
    weight = 25
},

['ls_broken_cd'] = {
    label = 'Broken CD',
    weight = 25
},

['ls_diving_goggles'] = {
    label = 'Diving Goggles',
    weight = 25
},

['ls_fishing_net'] = {
    label = 'Fishing Net',
    weight = 25
},

['ls_old_camera'] = {
    label = 'Old Camera',
    weight = 25
},

['ls_military_helmet'] = {
    label = 'Military Helmet',
    weight = 25
},

['ls_old_compass'] = {
    label = 'Old Compass',
    weight = 25
},

['ls_old_watch'] = {
    label = 'Old Watch',
    weight = 25
},

['ls_conch_shell'] = {
    label = 'Conch Shell',
    weight = 25
},

['ls_bottle_of_rum'] = {
    label = 'Bottle of Rum',
    weight = 25
},

['ls_treasure_map'] = {
    label = 'Treasure Map',
    weight = 25
},

['ls_silver_bracelet'] = {
    label = 'Silver Bracelet',
    weight = 25
},

['ls_ancient_artifact'] = {
    label = 'Ancient Artifact',
    weight = 25
},

-- Lation Laundering
-- Add items into ox_inventory/data/items.lua
['warehouse_key'] = {
  label = 'Warehouse Key',
  weight = 25,
},

['uncounted_money'] = {
  label = 'Uncounted Money',
},

-- Lation Weed
-- Add items into ox_inventory/data/items.lua
['ls_plain_jane_seed'] = {
  label = 'Plain Jane Seed',
  weight = 5,
},

['ls_plain_jane_bud'] = {
  label = 'Plain Jane Bud',
  weight = 5,
},

['ls_plain_jane_bag'] = {
  label = 'Plain Jane Bag',
  weight = 10,
},

['ls_plain_jane_joint'] = {
  label = 'Plain Jane Joint',
  weight = 10,
},

['ls_banana_kush_seed'] = {
  label = 'Banana Kush Seed',
  weight = 5,
},

['ls_banana_kush_bud'] = {
  label = 'Banana Kush Bud',
  weight = 5,
},

['ls_banana_kush_bag'] = {
  label = 'Banana Kush Bag',
  weight = 10,
},

['ls_banana_kush_joint'] = {
  label = 'Banana Kush Joint',
  weight = 10,
},

['ls_blue_dream_seed'] = {
  label = 'Blue Dream Seed',
  weight = 5,
},

['ls_blue_dream_bud'] = {
  label = 'Blue Dream Bud',
  weight = 5,
},

['ls_blue_dream_bag'] = {
  label = 'Blue Dream Bag',
  weight = 10,
},

['ls_blue_dream_joint'] = {
  label = 'Blue Dream Joint',
  weight = 10,
},

['ls_purple_haze_seed'] = {
  label = 'Purple Haze Seed',
  weight = 5,
},

['ls_purple_haze_bud'] = {
  label = 'Purple Haze Bud',
  weight = 5,
},

['ls_purple_haze_bag'] = {
  label = 'Purple Haze Bag',
  weight = 10,
},

['ls_purple_haze_joint'] = {
  label = 'Purple Haze Joint',
  weight = 10,
},

['ls_orange_crush_seed'] = {
  label = 'Orange Crush Seed',
  weight = 5,
},

['ls_orange_crush_bud'] = {
  label = 'Orange Crush Bud',
  weight = 5,
},

['ls_orange_crush_bag'] = {
  label = 'Orange Crush Bag',
  weight = 10,
},

['ls_orange_crush_joint'] = {
  label = 'Orange Crush Joint',
  weight = 10,
},

['ls_cosmic_kush_seed'] = {
  label = 'Cosmic Kush Seed',
  weight = 5,
},

['ls_cosmic_kush_bud'] = {
  label = 'Cosmic Kush Bud',
  weight = 5,
},

['ls_cosmic_kush_bag'] = {
  label = 'Cosmic Kush Bag',
  weight = 10,
},

['ls_cosmic_kush_joint'] = {
  label = 'Cosmic Kush Joint',
  weight = 10,
},

['ls_rolling_paper'] = {
  label = 'Rolling Paper',
  weight = 5,
},

['ls_empty_baggy'] = {
  label = 'Empty Baggy',
  weight = 5,
},

['ls_access_card'] = {
  label = 'Access Card',
  weight = 15,
},

['ls_watering_can'] = {
  label = 'Watering Can',
  weight = 3250,
  stack = false,
},

['ls_fertilizer'] = {
  label = 'Fertilizer',
  weight = 1750,
  stack = false,
},

['ls_plant_pot'] = {
  label = 'Plant Pot',
  weight = 25,
},

['ls_shovel'] = {
  label = 'Shovel',
  weight = 75,
},

['ls_shears'] = {
  label = 'Shears',
  weight = 10,
},

['ls_weed_table'] = {
  label = 'Weed Table',
  weight = 10000,
  stack = false
},

-- Lation Mining

['ls_pickaxe'] = {
  label = 'Pickaxe',
  weight = 100
},

['ls_copper_pickaxe'] = {
  label = 'Copper Pickaxe',
  weight = 100
},

['ls_iron_pickaxe'] = {
  label = 'Iron Pickaxe',
  weight = 100
},

['ls_silver_pickaxe'] = {
  label = 'Silver Pickaxe',
  weight = 100
},

['ls_gold_pickaxe'] = {
  label = 'Gold Pickaxe',
  weight = 100
},

['ls_copper_ore'] = {
  label = 'Copper Ore',
  weight = 100
},

['ls_coal_ore'] = {
  label = 'Coal Ore',
  weight = 100
},

['ls_iron_ore'] = {
  label = 'Iron Ore',
  weight = 100
},

['ls_silver_ore'] = {
  label = 'Silver Ore',
  weight = 100
},

['ls_gold_ore'] = {
  label = 'Gold Ore',
  weight = 100
},

['ls_copper_ingot'] = {
  label = 'Copper Ingot',
  weight = 500
},

['ls_iron_ingot'] = {
  label = 'Iron Ingot',
  weight = 500
},

['ls_silver_ingot'] = {
  label = 'Silver Ingot',
  weight = 500
},

['ls_gold_ingot'] = {
  label = 'Gold Ingot',
  weight = 500
},
-- PX ATM Robbery

['nylonrope'] = {
  label = 'Nylon Rope',
  description = 'The strongest rope material..',
  weight = 125,
  close = true,
  stack = true,
  client = {
image = "nylonrope.png",
event = 'projectx-atmrobbery:client:UseRope',
}
},

['atmred'] = {
  label = 'Red ATM',
  description = 'A console of an automated teller.',
  weight = 35000,
  close = true,
  stack = false,
  client = {
image = "atmred.png",
event = 'projectx-atmrobbery:client:UseAtm-Red',
}
},

['atmblue'] = {
  label = 'Blue ATM',
  description = 'A console of an automated teller.',
  weight = 35000,
  close = true,
  stack = false,
  client = {
image = "atmblue.png",
event = 'projectx-atmrobbery:client:UseAtm-Blue',
}
},

['atmgreen'] = {
  label = 'Green ATM',
  description = 'A console of an automated teller.',
  weight = 35000,
  close = true,
  stack = false,
  client = {
image = "atmgreen.png",
event = 'projectx-atmrobbery:client:UseAtm-Green',
}
},

['atmpanel'] = {
  label = 'ATM Panel',
  description = 'A back panel from an automated teller.',
  weight = 12500,
  close = true,
  stack = false,
  client = {
image = "atmpanel.png",
}
},

['atmcables'] = {
  label = 'ATM Cables',
  description = 'Cables from an automated teller.',
  weight = 550,
  close = true,
  stack = false,
  client = {
image = "atmcables.png",
}
},

['atmmotherboard'] = {
  label = 'ATM Motherboard',
  description = 'A motherboard from an automated teller.',
  weight = 550,
  close = true,
  stack = false,
  client = {
image = "atmmotherboard.png",
}
},

['blowtorch'] = {
  label = 'Blow Torch',
  description = 'Ooo hot...',
  weight = 1250,
  close = true,
  stack = false,
  client = {
image = "blowtorch.png",
}
},

['laserdrill'] = {
  label = 'Laser Drill',
  description = 'I wonder what this does...',
  weight = 12500,
  close = true,
  stack = false,
  client = {
image = "laserdrill.png",
}
},

['screwdriverset'] = {
  label = 'Screwdriverset',
  description = 'A Screw driver set',
  weight = 50,
  close = true,
  stack = false,
  client = {
image = "screwdriverset.png",
}
},

["x_gastank"] = {
label = "X Gas Tank",
weight = 200,
stack = true,
close = false,
description = "????",
client = {
  image = "x_gastank.png",
}
},

["x_fakecredit"] = {
label = "Credit Card",
weight = 200,
stack = true,
close = false,
description = "????",
client = {
  image = "x_fakecredit.png",
}
},

-- PX Angelico Default
["glass_cutter"] = {
  label = "Glass Cutter",
  weight = 1000,
  stack = false,
  close = false,
  description = "",
  client = {
   image = "glass_cutter.png",
  }
},

["giant_gem"] = {
  label = "Giant Gem",
  weight = 2500,
  stack = false,
  close = false,
  description = "",
  client = {
   image = "giant_gem.png",
  }
},

["diamond_necklace"] = {
  label = "Diamond Necklace",
  weight = 200,
  stack = true,
  close = false,
  description = "",
  client = {
   image = "diamond_necklace.png",
  }
},

["diamond_ring"] = {
  label = "Diamond Ring",
  weight = 200,
  stack = true,
  close = false,
  description = "",
  client = {
   image = "diamond_ring.png",
  }
},

["diamond_earring"] = {
  label = "Diamond Earring",
  weight = 200,
  stack = true,
  close = false,
  description = "",
  client = {
   image = "diamond_earring.png",
  }
},

["ruby_ring"] = {
  label = "Ruby Ring",
  weight = 200,
  stack = true,
  close = false,
  description = "",
  client = {
   image = "ruby_ring.png",
  }
},

["ruby_necklace"] = {
  label = "Ruby Necklace",
  weight = 200,
  stack = true,
  close = false,
  description = "",
  client = {
   image = "ruby_necklace.png",
  }
},

["ruby_earring"] = {
  label = "Ruby Earring",
  weight = 200,
  stack = true,
  close = false,
  description = "",
  client = {
   image = "ruby_earring.png",
  }
},

["sapphire_ring"] = {
  label = "Sapphire Ring",
  weight = 200,
  stack = true,
  close = false,
  description = "",
  client = {
   image = "sapphire_ring.png",
  }
},

["sapphire_necklace"] = {
  label = "Sapphire Necklace",
  weight = 200,
  stack = true,
  close = false,
  description = "",
  client = {
   image = "sapphire_necklace.png",
  }
},

["sapphire_earring"] = {
  label = "Sapphire Earring",
  weight = 200,
  stack = true,
  close = false,
  description = "",
  client = {
   image = "sapphire_earring.png",
  }
},

["emerald_ring"] = {
  label = "Emerald Ring",
  weight = 200,
  stack = true,
  close = false,
  description = "",
  client = {
   image = "emerald_ring.png",
  }
},

["emerald_necklace"] = {
  label = "Emerald Necklace",
  weight = 200,
  stack = true,
  close = false,
  description = "",
  client = {
   image = "emerald_necklace.png",
  }
},

["emerald_earring"] = {
  label = "Emerald Earring",
  weight = 200,
  stack = true,
  close = false,
  description = "",
  client = {
   image = "emerald_earring.png",
  }
},

 ["pliers"] = {
  label = "Pliers",
  weight = 125,
  stack = false,
  close = false,
  description = "A pair of pliers",
  client = {
	image = "pliers.png",
  }
 },
	  
 ["x_device"] = {
  label = "Flapper Hero",
  weight = 125,
  stack = false,
  close = false,
  description = "?????????",
  client = {
	image = "x_device.png",
  }
 },
   
 ["bag"] = {
  label = "Duffel Bag",
  weight = 250,
  stack = false,
  close = false,
  description = "Duffel bag",
  client = {
	image = "bag.png",
  }
 },

 ["x_phone"] = {
  label = "X Phone",
  weight = 300,
  stack = false,
  close = false,
  description = "?????????",
  client = {
   image = "x_phone.png",
  }
 },

  ["vangelicokey"] = {
  label = "Vangelico Key",
  weight = 200,
  stack = false,
  close = false,
  description = "?????????",
  client = {
   image = "vangelicokey.png",
  }
 },


  ["x_hammer"] = {
  label = "Work Hammer",
  weight = 1000,
  stack = false,
  close = false,
  client = {
   image = "x_hammer.png",
  }
 },

  ["box_of_jewelry"] = {
  label = "Box of jewelry",
  weight = 2500,
  stack = false,
  close = false,
  description = "?????????",
  client = {
   image = "box_of_jewelry.png",
  }
 },

  ["x_circuittester"] = {
  label = "X Circuit Tester",
  weight = 125,
  stack = false,
  close = false,
  description = "?????????",
  client = {
   image = "x_circuittester.png",
  }
 },
  ["x_fingerprintbag"] = {
  label = "Fingerprint Bag",
  weight = 125,
  stack = false,
  close = false,
  description = "?????????",
  client = {
   image = "x_fingerprintbag.png",
  }
 },
   ["x_fingerprinttape"] = {
  label = "Fingerprint Tape",
  weight = 125,
  stack = false,
  close = false,
  description = "?????????",
  client = {
   image = "x_fingerprinttape.png",
  }
 },
   ["fmkey"] = {
  label = "FM Key",
  weight = 125,
  stack = false,
  close = false,
  description = "?????????",
  client = {
   image = "fmkey.png",
  }
 },
 -- PX Bank Pacific Gabz
   
 ["hackcard"] = {
  label = "Hackcard",
  weight = 50,
  stack = false,
  close = false,
  description = "Hack card",
  client = {
   image = "hackcard.png",
  }
 },
   
 ["decryptor"] = {
  label = "Decrypt-o-matic",
  weight = 300,
  stack = false,
  close = false,
  description = "Decrypt PIN based encryptions",
  client = {
   image = "decryptomatic.png",
  }
 },

  ["x_trojanusb"] = {
  label = "X Trojan USB",
  weight = 125,
  stack = false,
  close = false,
  description = "?????????",
  client = {
   image = "x_trojanusb.png",
    },
  },
  ["x_trojanusb2"] = {
  label = "X Encrypted Trojan",
  weight = 125,
  stack = false,
  close = false,
  description = "?????????",
  client = {
   image = "x_trojanusb2.png",
  }
 },
  ["ammunation_key"] = {
  label = "Ammunation Key",
  weight = 125,
  stack = false,
  close = false,
  description = "?????????",
  client = {
   image = "ammunation_key.png",
  }
 },


 ["x_laptop"] = {
  label = "Laptop",
  weight = 50,
  stack = false,
  close = false,
  description = "?????????",
  client = {
   image = "x_laptop.png",
  }
 },
   
 ["pacific_key"] = {
  label = "Pacific Key",
  weight = 125,
  stack = false,
  close = false,
  description = "Key!",
  client = {
   image = "pacific_key.png",
  }
 },

 ["pacificcard"] = {
  label = "Pacific Keycard",
  weight = 50,
  stack = false,
  close = false,
  description = "A Security card for Pacific Bank",
  client = {
   image = "pacificcard.png",
  }
 },

 -- PX KAMBI Bobcat

  ["bobcatcard"] = {
  label = "Bobcat Keycard A",
  weight = 50,
  stack = false,
  close = false,
  description = "A Security card for Bobcat",
  client = {
   image = "bobcatcard.png",
  }
 },

  ["bobcatcard2"] = {
  label = "Bobcat Keycard B",
  weight = 50,
  stack = false,
  close = false,
  description = "A Security card for Bobcat",
  client = {
   image = "bobcatcard2.png",
  }
 },

 -- PX FM2 Fleecas
 
["fleeca_key"] = {
  label = "Fleeca Key",
  weight = 50,
  stack = false,
  close = false,
  description = "Key!",
  client = {
   image = "fleeca_key.png",
  }
 },

 ["employeepictures"] = {
  label = "Employee Pictures",
  weight = 25,
  stack = false,
  close = false,
  description = "Faces of employees",
  client = {
   image = "employeepictures.png",
  }
 },

 ["fleecacard"] = {
  label = "Fleeca Card",
  weight = 300,
  stack = false,
  close = false,
  description = "A Security card for Fleeca Bank",
  client = {
   image = "fleecacard.png",
  }
 },

 -- PX Gabz Paleto

 
["paletocardone"] = {
  label = "Paleto Card A",
  weight = 0,
  stack = false,
  close = false,
  description = "A security card for Paleto Bank",
  client = {
   image = "paletocardone.png",
  }
 },

 ["paletocardtwo"] = {
  label = "Paleto Card B",
  weight = 0,
  stack = false,
  close = false,
  description = "A security card for Paleto Bank",
  client = {
   image = "paletocardtwo.png",
  }
 },
  
 ["paleto_key"] = {
  label = "Paleto Bank Key",
  weight = 100,
  stack = false,
  close = false,
  description = "Paleto Bank Key",
  client = {
   image = "paleto_key.png",
  }
 },

 -- PX House Robbery
 ["coffeemaker"] = {
  label = "Coffee Maker",
  weight = 500,
  stack = true,
  close = false,
  description = "To make that perfect cup of Joe!",
  client = {
	image = "coffeemaker.png"
  }
 },

 ["x_artpiece"] = {
  label = "Art Piece",
  weight = 500,
  stack = true,
  close = false,
  description = "A unique piece of art!",
  client = {
	image = "x_artpiece.png"
  }
 },

 ["x_guitar"] = {
  label = "Guitar",
  weight = 300,
  stack = true,
  close = false,
  description = "A guitar!",
  client = {
	image = "x_guitar.png"
  }
 },

 ["microwave"] = {
  label = "Microwave",
  weight = 800,
  stack = true,
  close = false,
  description = "A microwave - for heating things up!",
  client = {
	image = "microwave.png"
  }
 },

 ["musicequipment"] = {
  label = "Music Equipment",
  weight = 500,
  stack = true,
  close = false,
  description = "The keys to success.. As some Dj's would say",
  client = {
	image = "musicequipment.png"
  }
 },

 ["x_painting"] = {
  label = "Painting",
  weight = 200,
  stack = true,
  close = false,
  description = "A modern work of art!",
  client = {
	image = "x_painting.png"
  }
 },

 ["x_painting2"] = {
  label = "Painting",
  weight = 200,
  stack = true,
  close = false,
  description = "A modern work of art!",
  client = {
	image = "x_painting2.png"
  }
 },

 ["x_pcequipment"] = {
  label = "PC",
  weight = 600,
  stack = true,
  close = false,
  description = "A PC, for gaming?! Well of course it is!",
  client = {
	image = "x_pcequipment.png"
  }
 },

 ["x_suitcase"] = {
  label = "Suit Case",
  weight = 200,
  stack = true,
  close = false,
  description = "A leather suitcase, what the hell is inside of this?",
  client = {
	image = "x_suitcase.png"
  }
 },

 ["x_television"] = {
  label = "Television",
  weight = 800,
  stack = true,
  close = false,
  description = "A modern flatscreen TV",
  client = {
	image = "x_television.png"
  }
 },

 -- PX MazeK4mbi

 ["x_stethoscope"] = {
  label = "X Stethoscope",
  weight = 150,
  stack = false,
  close = false,
  description = "?????????",
  client = {
   image = "x_stethoscope.png",
  }
 },

 ["mazebankcard"] = {
  label = "Maze Bank Card A",
  weight = 300,
  stack = false,
  close = false,
  description = "A Security card for the Maze Bank",
  client = {
   image = "mazebankcard.png",
  }
 },

  ["mazebankcard2"] = {
  label = "Maze Bank Card B",
  weight = 300,
  stack = false,
  close = false,
  description = "A Security card for the Maze Bank",
  client = {
   image = "mazebankcard2.png",
  }
 },

  ["mazebankkey"] = {
  label = "Maze Bank Key",
  weight = 300,
  stack = false,
  close = false,
  description = "A Key",
  client = {
   image = "mazebankkey.png",
  }
 },
-- RAHE Boosting

  ['hackingdevice'] = {
	  label = 'Hacking device',
	  weight = 0,
	  description = 'Will allow you to bypass vehicle security systems.',
	  client = {
	  export = 'rahe-boosting.hackingdevice',
	  }
  },
  ['gpshackingdevice'] = {
	  label = 'GPS hacking device',
	  weight = 0,
	  description = 'If you wish to disable vehicle GPS systems.',
	  client = {
	  export = 'rahe-boosting.gpshackingdevice',
	  }
  },

  -- RAHE TABLET

  ['app_tablet'] = {
	  label = 'Tablet',
	  weight = 0,
	  description = 'You can install different applications onto this.',
	  stack = false,
	  client = {
		  export = 'rahe-tablet.tablet'
	  }
  },

  ['usb_racing'] = {
	  label = 'Racing App',
	  weight = 50,
	  description = 'An USB stick with a racing program installed onto it.',
	  stack = false,
	  client = {
		 export = 'rahe-tablet.usb_install'
	  }
  },

  ['usb_boosting'] = {
	  label = 'USB stick',
	  weight = 50,
	  description = 'An USB stick with a shadowy car program installed onto it.',
	  stack = false,
	  client = {
		 export = 'rahe-tablet.usb_install'
	  }
  },

  ['usb_trucking'] = {
	  label = 'Trucking App',
	  weight = 50,
	  description = 'An USB stick with a trucking program installed onto it.',
	  stack = false,
	  client = {
		 export = 'rahe-tablet.usb_install'
	  }
  },

  ['usb_drifting'] = {
	  label = 'Drifting App',
	  weight = 50,
	  description = 'An USB stick with a drifting program installed onto it.',
	  stack = false,
	  client = {
		 export = 'rahe-tablet.usb_install'
	  }
  },

  -- WASABI Evidence

  ['uvlight'] = {
	  label = 'UV Light',
	  weight = 95,
	  stack = false
  },
  ['bleachwipes'] = {
	  label = 'Bleach Wipes',
	  weight = 185,
	  stack = true
  },

  -- WASABI Police
  ['handcuffs'] = {
	  label = 'Hand Cuffs',
	  weight = 500,
	  stack = true,
	  close = true,
  },

  ['bobby_pin'] = {
		  label = 'Bobby Pin',
		  weight = 5,
		  stack = true,
		  close = true,
  },

  ['policegps'] = {
	  label = 'Police GPS',
	  weight = 880,
	  stack = false,
	  close = false,
  },
  
  -- POLICE TOOLS
  ['police_panic'] = {
	  label = 'Panic Button',
	  weight = 100,
	  stack = true,
	  description = ""
  },	
  
  ['police_shield'] = {
	  label = 'Police Shield',
	  weight = 100,
	  stack = true,
	  description = ""
  },	
  
  ['police_bodycam'] = {
	  label = 'Bodycam',
	  weight = 100,
	  stack = true,
	  description = ""
  },	
  
  ['police_snakecam'] = {
	  label = 'Snake Camera',
	  weight = 100,
	  stack = true,
	  description = ""
  },	

  -- Wasabi Crutch

  ['crutch'] = {
	  label = 'Crutch',
	  weight = 165,
	  stack = false,
	  close = true,
  },
  ['wheelchair'] = {
	  label = 'Wheelchair',
	  weight = 540,
	  stack = false,
	  close = true,
  },

-- PILLS
  
	  ['sedative'] = {
		  label = 'Sedative',
		  weight = 15,
		  stack = true,
		  close = true,
	  },

	  
		['morphine30'] = {
			label = 'Morphine 30MG',
			weight = 2,
			stack = true,
			close = true,
		},

		['morphine15'] = {
			label = 'Morphine 15MG',
			weight = 2,
			stack = true,
			close = true,
		},

		['perc30'] = {
			label = 'Percocet 30MG',
			weight = 2,
			stack = true,
			close = true,
		},

		['perc10'] = {
			label = 'Percocet 10MG',
			weight = 2,
			stack = true,
			close = true,
		},

		['perc5'] = {
			label = 'Percocet 5MG',
			weight = 2,
			stack = true,
			close = true,
		},

		['vic10'] = {
			label = 'Vicodin 10MG',
			weight = 2,
			stack = true,
			close = true,
		},

		['vic5'] = {
			label = 'Vicodin 5MG',
			weight = 2,
			stack = true,
			close = true,
		},
	
		['recoveredbullet'] = {
			label = 'Recovered Bullet',
			weight = 1,
			stack = true,
			close = false,
		},

	  ['emsgps'] = {
		  label = 'EMS GPS',
		  weight = 880,
		  stack = false,
		  close = false,
	  },

	  -- ENVI Prescriptions

	  ['prescription_pad'] = {        
		  label = 'Prescription Pad',        
		  weight = 200,         
		  stack = false,        
		  close = true,        
		  description = 'For use by medical professionals only',    
	  },
	  ['prescription'] = {        
		  label = 'Prescription Receipt',        
		  weight = 20,         
		  stack = false,        
		  close = true,        
		  description = nil,    
	  },      
	  ['adrenaline'] = {        
		  label = 'Adrenaline',        
		  weight = 200,         
		  stack = false,        
		  close = true,        
		  description = 'The Label Has Been Ripped Off',    
	  },          
	  ["oxy"] = {
		  label = "Prescription Oxy",
		  weight = 0,
		  stack = true,
		  close = true,
		  description = "The Label Has Been Ripped Off",
		  consume = 1,
		  client = {
			  image = "oxy.png",
		  },
	  },
	  ["bands"] = {
		  label = "Band Of Notes",
		  weight = 100,
		  stack = true,
		  close = false,
		  description = "A band of small notes..",
		  consume = 0,
		  client = {
			  image = "bands.png",
		  }
	  },
	  
	  ["rolls"] = {
		  label = "Roll Of Small Notes",
		  weight = 100,
		  stack = true,
		  close = false,
		  description = "A roll of small notes..",
		  consume = 0,
		  client = {
			  image = "rolls.png",
		  }
	  },
	  
	  ["package"] = {
		  label = "Suspicious Package",
		  weight = 10000,
		  stack = false,
		  close = false,
		  description = "A mysterious package.. Scary!",
		  consume = 0,
		  client = {
			  image = "package.png",
		  }
	  },
	  ['xanax'] = {        
		  label = 'Xanax',        
		  weight = 200,         
		  stack = false,        
		  close = true,        
		  description = nil,    
	  },
	  ['steroids'] = {        
		  label = 'Steroids',        
		  weight = 200,         
		  stack = false,        
		  close = true,        
		  description = nil,    
	  },
	  ['valium'] = {        
		  label = 'Valium',        
		  weight = 200,         
		  stack = false,        
		  close = true,        
		  description = nil,    
	  },
	  ['cough_syrup'] = {        
		  label = 'Cough Syrup',        
		  weight = 200,         
		  stack = false,        
		  close = true,        
		  description = nil,    
	  },
	  ['lean_cup'] = {        
		  label = 'Styrofoam Cup',        
		  weight = 200,         
		  stack = false,        
		  close = true,        
		  description = nil,    
	  },
	  ['sprunk_bottle'] = {        
		  label = 'Bottle of Sprunk',        
		  weight = 200,         
		  stack = false,        
		  close = true,        
		  description = nil,    
	  },
	  ['lean'] = {        
		  label = 'Cup of Lean',        
		  weight = 200,         
		  stack = false,        
		  close = true,        
		  description = nil,    
	  },
	  ['narkan'] = {        
		  label = 'Narkan',        
		  weight = 200,         
		  stack = false,        
		  close = true,        
		  description = nil,    
	  },

  -- LB TABLET

	  ["tablet"] = {
		  label = "Work Tablet",
		  weight = 800,
		  stack = false,
		  close = true,
		  description = "Work related tablet",
		  client = {
			image = "worktablet.png"
		  }
		 },

  -- Lation Meth
	  ['ls_meth_table'] = {
		  label = 'Meth Table',
		  weight = 10000,
		  stack = false
	  },

	  ['gasmask'] = {
		  label = 'Gas Mask',
		  weight = 150,
		  stack = false,      
		  client = {
        event = 'projectx-masks:client:UseGasMask',
       }
	  },

	  ['ls_pseudoephedrine'] = {
		  label = 'Pseudoephedrine Pills',
		  weight = 50
	  },

	  ['ls_crushed_pseudoephedrine'] = {
		  label = 'Crushed Pseudoephedrine',
		  weight = 25
	  },

	  ['ls_ammonia'] = {
		  label = 'Ammonia',
		  weight = 250,
		  stack = false
	  },

	  ['ls_iodine'] = {
		  label = 'Iodine',
		  weight = 250,
		  stack = false
	  },

	  ['ls_acetone'] = {
		  label = 'Acetone',
		  weight = 250,
		  stack = false
	  },

	  ['ls_liquid_meth'] = {
		  label = 'Liquid Meth',
		  weight = 225
	  },

	  ['ls_hydrochloric_acid'] = {
		  label = 'Hydrochloric Acid',
		  weight = 250
	  },

	  ['ls_meth'] = {
		  label = 'Meth',
		  weight = 10
	  },

	  ['ls_supply_crate'] = {
		  label = 'Supplies',
		  weight = 1000
	  },

	  ['ls_meth_tray'] = {
		  label = 'Meth Tray',
		  weight = 500
	  },

	  ['ls_meth_box'] = {
		  label = 'Box with ripped labels',
		  weight = 500
	  },

	  -- PROJECT X MASKS

	  ['gasmask'] = {
		  label = 'Gas Mask',
		  weight = 450,
		  stack = false,
		  close = true,
		  description = "Phewww..",
		  client = {
		   event = 'projectx-masks:client:UseGasMask',
		  }
		 },
		
		 ['nightvision'] = {
		  label = 'Nightvision Goggles',
		  weight = 450,
		  stack = false,
		  close = true,
		  description = "Phewww..",
		  client = {
		   event = 'projectx-masks:client:UseNightVision',
		  }
		 },

  -- LATION CHOP SHOP

	  ['auto_parts'] = {
		  label = 'Auto Parts',
		  weight = 5,
	  },
	  	  
	  ['chop_torch'] = {
		  label = 'Torch',
		  weight = 275,
	  },
	  
	  ['chop_lugwrench'] = {
		  label = 'Lug Wrench',
		  weight = 225,
	  },

-- RENEWED FARMING

['pitchfork'] = {
  label = 'Pitch Fork',
  weight = 1000,
  client = {
	  export = 'Renewed-Farming.harvestPlants'
  },
},

['wateringcan'] = {
  label = 'Watering Can',
  weight = 0,
},

['beetroot'] = {
  label = 'Beetroot',
  description = 'Freshly harvested beetroot, perfect for cooking or adding to salads.',
  weight = 100
},
['beetrootseed'] = {
  label = 'Beetroot Seed',
  description = 'Small seeds used to grow beetroot plants.',
  weight = 10,
  client = {
	  export = 'Renewed-Farming.placeSeed'
  },
},

['carrot'] = {
  label = 'Carrot',
  description = 'Crisp and nutritious carrots, a staple ingredient in many recipes. Can be enjoyed raw or cooked.',
  weight = 100
},
['carrotseed'] = {
  label = 'Carrot Seed',
  description = 'Tiny seeds used to grow carrot plants.',
  weight = 10,
  client = {
	  export = 'Renewed-Farming.placeSeed'
  }
},

['corn'] = {
  label = 'Corn',
  description = 'Freshly harvested corn, sweet and juicy. Great for grilling or boiling.',
  weight = 100
},
['cornseed'] = {
  label = 'Corn Seed',
  description = 'Small seeds used to grow corn plants.',
  weight = 10,
  client = {
	  export = 'Renewed-Farming.placeSeed'
  }
},

['cucumber'] = {
  label = 'Cucumber',
  description = 'Crisp and refreshing cucumbers, perfect for salads or pickling.',
  weight = 100
},
['cucumberseed'] = {
  label = 'Cucumber Seed',
  description = 'Tiny seeds used to grow cucumber plants.',
  weight = 10,
  client = {
	  export = 'Renewed-Farming.placeSeed'
  }
},

['garlic'] = {
  label = 'Garlic',
  description = 'Aromatic garlic bulbs, known for their strong flavor and various culinary uses.',
  weight = 100
},
['garlicseed'] = {
  label = 'Garlic Seed',
  description = 'Small cloves used to grow garlic plants.',
  weight = 10,
  client = {
	  export = 'Renewed-Farming.placeSeed'
  }
},

['potato'] = {
  label = 'Potato',
  description = 'Versatile and starchy potatoes, ideal for mashing, baking, or frying.',
  weight = 100,
  client = {
	  export = 'Renewed-Farming.placeSeed'
  }
},

['pumpkin'] = {
  label = 'Pumpkin',
  description = 'Large and festive pumpkins, perfect for carving or using in autumn recipes.',
  weight = 100,
},
['pumpkinseed'] = {
  label = 'Pumpkin Seed',
  description = 'Seeds used to grow pumpkin plants.',
  weight = 10,
  client = {
	  export = 'Renewed-Farming.placeSeed'
  }
},

['radish'] = {
  label = 'Radish',
  description = 'Crunchy and peppery radishes, great for adding a kick to salads or pickling.',
  weight = 100
},
['radishseed'] = {
  label = 'Radish Seed',
  description = 'Small seeds used to grow radish plants.',
  weight = 10,
  client = {
	  export = 'Renewed-Farming.placeSeed'
  }
},

['sunflower'] = {
  label = 'Sunflower',
  description = 'Bright and cheerful sunflowers, known for their tall stalks and vibrant yellow petals.',
  weight = 100
},
['sunflowerseed'] = {
  label = 'Sunflower Seed',
  description = 'Seeds used to grow sunflower plants.',
  weight = 10,
  client = {
	  export = 'Renewed-Farming.placeSeed'
  }
},

['tomato'] = {
  label = 'Tomato',
  description = 'Juicy and flavorful tomatoes, perfect for salads, sauces, or sandwiches.',
  weight = 100
},
['tomatoseed'] = {
  label = 'Tomato Seed',
  description = 'Small seeds used to grow tomato plants.',
  weight = 10,
  client = {
	  export = 'Renewed-Farming.placeSeed'
  }
},

['watermelon'] = {
  label = 'Watermelon',
  description = 'Large and refreshing watermelons, perfect for summertime enjoyment.',
  weight = 100
},
['watermelonseed'] = {
  label = 'Watermelon Seed',
  description = 'Seeds used to grow watermelon plants.',
  weight = 10,
  client = {
	  export = 'Renewed-Farming.placeSeed'
  }
},

['cabbage'] = {
  label = 'Cabbage',
  description = 'Fresh and crisp cabbage, perfect for salads and cooking.',
  weight = 100
},
['cabbageseed'] = {
  label = 'Cabbage Seed',
  description = 'Seeds used to grow cabbage plants.',
  weight = 10,
  client = {
	  export = 'Renewed-Farming.placeSeed'
  }
},

['onion'] = {
  label = 'Onion',
  description = 'Pungent and flavorful onions, a kitchen essential.',
  weight = 100
},
['onionseed'] = {
  label = 'Onion Seed',
  description = 'Seeds used to grow onion plants.',
  weight = 10,
  client = {
	  export = 'Renewed-Farming.placeSeed'
  }
},

['wheat'] = {
  label = 'Wheat',
  description = 'Golden wheat grains, a staple crop used for making flour and various food products.',
  weight = 100
},
['wheatseed'] = {
  label = 'Wheat Seed',
  description = 'Small seeds used to grow wheat plants.',
  weight = 10,
  client = {
	  export = 'Renewed-Farming.placeSeed'
  }
},

['barley'] = {
  label = 'Barley',
  description = 'Barley grains, a staple crop used for making various food products.',
  weight = 50
},
['barleyseed'] = {
  label = 'Barley Seed',
  description = 'Small seeds used to grow barley plants.',
  weight = 10,
  client = {
	  export = 'Renewed-Farming.placeSeed'
  }
},

['sugarbeet'] = {
  label = 'Sugarbeet',
  description = 'Freshly harvested sugar beets, perfect for cooking.',
  weight = 50
},
['sugarbeetseed'] = {
  label = 'Sugarbeet Seed',
  description = 'Small seeds used to grow sugarbeet plants.',
  weight = 10,
  client = {
	  export = 'Renewed-Farming.placeSeed'
  }
},

['riceseed'] = {
  label = 'Rice Seed',
  description = 'Small seeds used to grow rice plants.',
  weight = 10,
  client = {
	  export = 'Renewed-Farming.placeSeed'
  }
},

['pepperseed'] = {
  label = 'Pepper Seed',
  description = 'Small seeds used to grow pepper plants.',
  weight = 10,
  client = {
	  export = 'Renewed-Farming.placeSeed'
  }
},

-- BeeKeeping

['beehive'] = {
  label = 'Bee Hive',
  weight = 1000,
  description = 'A wooden beehive used for beekeeping. Handle with care!',
  client = {
	  export = 'Renewed-Beekeeping.placeHive',
  }
},

['beewax'] = {
  label = 'Bees Wax',
  weight = 250,
  description = 'Pure, golden beeswax obtained from beehives. It has various uses.',
},

['emptyjar'] = {
  label = 'Empty Jar',
  weight = 50,
  description = 'A glass jar with no contents. Can be used for storage or crafting.',
},

['honeyjar'] = {
  label = 'Honey Jar',
  weight = 200,
  description = 'A jar filled with delicious, golden honey. A sweet treat!',
},

-- Sabotage

  ['impact_driver'] = {        
	  label = 'Impact Driver',        
	  weight = 1000,         
	  stack = false,        
	  close = true,        
	  description = 'Impact Driver',    
  },
  ['spanner'] = {        
	  label = 'Spanner',        
	  weight = 1000,         
	  stack = false,        
	  close = true,        
	  description = 'Spanner',    
  },      
  ['pliers '] = {        
	  label = 'Pliers',        
	  weight = 1000,         
	  stack = false,        
	  close = true,        
	  description = 'Pliers',    
  },          
  ['adjustable_spanner'] = {        
	  label = 'Adjustable Spanner',        
	  weight = 1000,         
	  stack = false,        
	  close = true,        
	  description = 'Adjustable Spanner',    
  },    
  ['drill'] = {        
	  label = 'Drill',        
	  weight = 1000,         
	  stack = false,        
	  close = true,        
	  description = 'Drill',    
  },
  ['buzz_saw'] = {        
	  label = 'Buzz Saw',        
	  weight = 1000,         
	  stack = false,        
	  close = true,        
	  description = 'Buzz Saw',    
  },
  ['screwdriver'] = {        
	  label = 'Screwdriver',        
	  weight = 1000,         
	  stack = false,        
	  close = true,        
	  description = 'Screwdriver',    
  },
  ['ignition_bomb'] = {        
	  label = 'Ignition Bomb',        
	  weight = 1000,         
	  stack = false,        
	  close = true,        
	  description = 'Ignition Bomb',    
  },
  ['impact_bomb'] = {        
	  label = 'Impact Bomb',        
	  weight = 1000,         
	  stack = false,        
	  close = true,        
	  description = 'Impact Bomb',    
  },
  ['remote_bomb'] = {        
	  label = 'Remote Bomb',        
	  weight = 1000,         
	  stack = false,        
	  close = true,        
	  description = 'Remote Bomb',    
  },
  ['speed_bomb'] = {        
	  label = 'Speed Bomb',        
	  weight = 1000,         
	  stack = false,        
	  close = true,        
	  description = 'Speed Bomb',    
  },
  ['firelighter'] = {        
	  label = 'Firelighter',        
	  weight = 1000,         
	  stack = false,        
	  close = true,        
	  description = 'Firelighter',    
  },
  
  -- SD Oil Rig
  ["oilbarrel"] = {
	  label = "Oil Barrel",
	  weight = 20000,
	  stack = false,
	  close = true,
	  description = "Full of oil, probably has some value",
	  consume = 0,
	  client = {
		  image = "oilbarrel.png",
	  }
  },
  
  ["revivekit"] = {
	  label = "Revival Kit",
	  weight = 3000,
	  stack = false,
	  close = false,
	  description = "When your pal needs that pick me up",
	  consume = 0,
	  client = {
		  image = "revivekit.png",
	  },
	  server = {
		  export = 'sd-oilrig.useRevivekit',
	  }
  },
  
  ["security_card_oil"] = {
	  label = "Pink USB Dongle",
	  weight = 500,
	  stack = false,
	  close = true,
	  description = "This has got to be some important information...",
	  consume = 0,
	  client = {
		  image = "security_card_oil.png",
	  }
  },
  
  ["laptop_pink"] = {
	  label = "Pink Laptop",
	  weight = 5000,
	  stack = false,
	  close = true,
	  description = "A security Laptop",
	  consume = 0,
	  client = {
		  image = "laptop_pink.png",
	  }
  },
  
  ["token"] = {
	  label = "Mysterious Token",
	  weight = 500,
	  stack = false,
	  close = true,
	  description = "A Mysterious Token",
	  consume = 0,
	  client = {
		  image = "token.png",
	  }
  },

-- Warehouse

  ["thermite_h"] = {
	  label = "Thermite",
	  weight = 1000,
	  stack = false,
	  close = true,
	  description = "A low-yield thermite charge..",
	  consume = 0,
	  client = {
		  image = "thermite_h.png",
	  },
  },

-- SD YACHT
  ["yachtcodes"] = {
	  label = "Yacht Access Codes",
	  weight = 200,
	  stack = false,
	  close = true,
	  description = "The first half of codes for the Yacht",
	  consume = 0,
	  client = {
		  image = "yachtcodes.png",
	  },
	  server = {
		  export = 'sd-yacht.useYachtcodes',
	  }
  },
  
  ["casinocodes"] = {
  label = "Casino Access Codes",
  weight = 200,
  stack = false,
  close = true,
  description = "The first half of codes for the Casino",
  consume = 0,
  client = {
	  image = "casinocodes.png",
  },
  server = {
	  export = 'sd-yacht.useCasinocodes',
  }
},

["secured_safe"] = {
  label = "Safe",
  weight = 200,
  stack = false,
  close = true,
  description = "Meant to protect valuables",
  consume = 0,
  client = {
	  image = "secured_safe.png",
  },
},

["expensive_champagne"] = {
  label = "Champagne",
  weight = 200,
  stack = true,
  close = true,
  description = "A sparkling wine from France",
  consume = 0,
  client = {
	  image = "expensive_champagne.png",
  },
},

["default_gateway_override"] = {
  label = "Gateway Override",
  weight = 200,
  stack = false,
  close = true,
  description = "A default gateway override on a usb",
  consume = 0,
  client = {
	  image = "default_gateway_override.png",
  },
},

-- Compounds

  ["rdx"] = {
	  label = "RDX",
	  weight = 1000,
	  stack = false,
	  close = true,
	  description = "A weird powder..",
	  consume = 0,
	  client = {
		  image = "thermite_h.png",
	  },
  },

  ['lithium'] = {
	  label = 'Lithium',
	  weight = 500,
	  stack = true,
	  close = true,
	  description = 'Lithium, commonly found in batteries.',
  },

  ["ironoxide"] = {
	  label = "Iron Powder",
	  weight = 100,
	  stack = true,
	  close = false,
	  description = "Some powder to mix with.",
	  client = {
		  image = "ironoxide.png",
	  }
  },

  ["nitricacid"] = {
	  label = "Nitric Acid",
	  weight = 100,
	  stack = true,
	  close = false,
	  description = "You can probably do something with this"
  },

  ["magnesium"] = {
	  label = "Magnesium",
	  weight = 100,
	  stack = true,
	  close = false,
	  description = "Some powder to mix with.",
	  client = {
		  image = "ironoxide.png",
	  }
  },

  ["sodium"] = {label = "Sodium", weight = 1, stack = true, close = false},
  ["dioctylsebacate"] = {label = "Dioctyl Sebacate", weight = 1, stack = true, close = false},
  ["polyisobutylene"] = {label = "Polyisobutylene", weight = 1, stack = true, close = false},
  ["hpoxide"] = {label = "Hydrogen Peroxide", weight = 1, stack = true, close = false},
  ["toulene"] = {label = "Toulene", weight = 1, stack = true, close = false},
  
  ['red_phos'] = {
	  label = 'Red Phosphorus',
	  weight = 500,
	  stack = true,
	  close = true,
	  description = 'A component used in match-sticks.',
  },

  ["scale"] = {
	  label = "Scale",
	  weight = 100,
	  stack = true,
	  close = true,
	  description = "Used for measuring",
  },

  ["phone_bomb"] = {
	  label = "Phone",
	  weight = 100,
	  stack = true,
	  close = true,
	  description = "A weird looking phone",
  },

  ["police_stormram"] = {
	  label = "Stormram",
	  weight = 18000,
	  stack = true,
	  close = true,
	  description = "A nice tool to break into doors",
	  client = {
		  image = "police_stormram.png",
	  }
  },
  
  ["facilitycard"] = {
	  label = "Access Card",
	  weight = 180,
	  stack = false,
	  description = "Some sort of access card",
  },

  ['warehouse_key1'] = {
	  label = 'Warehouse Key',        
	  description = "A partly melted key",
	  weight = 25,
  },

  ['warehouse_key2'] = {
	  label = 'Warehouse Key',        
	  description = "A key with a chemical burn mark on it",
	  weight = 25,
  },

  ['container_key1'] = {
	  label = 'Container Key',        
	  description = "A key with a white powdery substance on it",
	  weight = 25,
  },

  ['office_key1'] = {
	  label = 'Office Key',        
	  description = "A key to an office",
	  weight = 25,
  },

  ["stolen_package"] = {
	  label = "Package",
	  weight = 100,
	  stack = false,
	  close = false,
	  description = "Could be valuable?",
	  client = {
		  usetime = 3000,
	  },
	  server = {
		  export = 'xt-porchpirate.stolen_package'
	  }
  },
  ["forged_id"] = {
	  label = "ID Card",
	  weight = 0,
	  stack = false,
	  close = true,
	  description = "A card containing citizen info",
	  client = {
		  image = "id_card.png",
	  }
  },

  ["forged_driverslicense"] = {
	  label = "Drivers License",
	  weight = 0,
	  stack = false,
	  close = true,
	  description = "A license allowing a citizen to operate a vehicle.",
	  client = {
		  image = "driver_license.png",
	  }
  },

  ["forged_weaponslicense"] = {
	  label = "Weapons License",
	  weight = 0,
	  stack = false,
	  close = true,
	  description = "A license allowing a citizen to carry firearms",
	  client = {
		  image = "weapon_license.png",
	  }
  },

  ["forged_huntinglicense"] = {
	  label = "Hunting License",
	  weight = 0,
	  stack = false,
	  close = true,
	  description = "A license allowing a citizen to hunt",
	  client = {
		  image = "hunting_license.png",
	  }
  },
  ["forged_fishinglicense"] = {
	  label = "Fishing License",
	  weight = 0,
	  stack = false,
	  close = true,
	  description = "A license allowing a citizen to fish",
	  client = {
		  image = "fishing_license.png",
	  }
  },

  
  ['huntinglicense'] = {
	  label = "Hunting License",
	  weight = 0,
	  stack = false,
	  close = true,
	  description = "A license allowing a citizen to hunt",
	  client = {
		  image = "hunting_license.png",
	  }
  },

  
  ['fishinglicense'] = {
	  label = "Fishing License",
	  weight = 0,
	  stack = false,
	  close = true,
	  description = "A license allowing a citizen to fish",
	  client = {
		  image = "fishing_license.png",
	  }
  },

  -- MD FISHING
  ['atlanticdolphin'] = {
	  label = 'Atlantic Dolphin',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "A beautiful atlantic dolphin!",
	  client = {
		  image = 'atlanticdolphin.png'
	  }
  },
  
  ['belugawhale'] = {
	  label = 'Beluga Whale',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "How did you catch this with only a rod?!",
	  client = {
		  image = 'belugawhale.png'
	  }
  },
  
  ['bluefish'] = {
	  label = 'Blue Fish',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "A very blue fish",
	  client = {
		  image = 'bluefish.png'
	  }
  },
  
  ['bluewhale'] = {
	  label = 'Blue Whale',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "Okay, you're joking right?",
	  client = {
		  image = 'bluewhale.png'
	  }
  },
  
  ['catfish'] = {
	  label = 'Cat Fish',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "A perrrrrrfect looking fish",
	  client = {
		  image = 'catfish.png'
	  }
  },
  
  ['chileandolphin'] = {
	  label = 'Chileando Dolphin',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "A beautiful dolphin",
	  client = {
		  image = 'chileandolphin.png'
	  }
  },
  
  ['chum'] = {
	  label = 'Chum',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "A bucket of suspicious bait",
	  client = {
		  image = 'chum.png'
	  }
  },
  
  ['closedsafe'] = {
	  label = 'Rusted Safe',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "A water bogged, rusty safe",
	  client = {
		  image = 'closedsafe.png'
	  }
  },
  
  ['copperpipe'] = {
	  label = 'Rusted Copper Pipe',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "A corroded, rusty copper pipe",
	  client = {
		  image = 'copperpipe.png'
	  }
  },
  
  ['fishingpole'] = {
	  label = 'Fishing Pole',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "I can catch something with this!",
	  client = {
		  image = 'fishingpole.png'
	  }
  },
  
  ['flounder'] = {
	  label = 'Flounder',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "A yellow-ish fish",
	  client = {
		  image = 'flounder.png'
	  }
  },
  
  ['goblinshark'] = {
	  label = 'Goblin Shark',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "Fuck me, it's ugly!",
	  client = {
		  image = 'goblinshark.png'
	  }
  },
  
  ['groundshark'] = {
	  label = 'Ground Shark',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "I'm sure I've seen this somewhere before",
	  client = {
		  image = 'groundshark.png'
	  }
  },
  
  ['halibut'] = {
	  label = 'Halibut',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "A fish when cooked correctly is delicious",
	  client = {
		  image = 'halibut.png'
	  }
  },
  
  ['largemouthbass'] = {
	  label = 'Large Mouth Bass',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "A bass with a big mouth, I wonder?",
	  client = {
		  image = 'largemouthbass.png'
	  }
  },
  
  ['leatherheadturtle'] = {
	  label = 'Leather Head Turtle',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "A majestic turtle",
	  client = {
		  image = 'leatherheadturtle.png'
	  }
  },
  
  ['magnetpole'] = {
	  label = 'Magent Pole',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "You Can Pull Things Easy Like A Slipknot with this. get it. haha.",
	  client = {
		  image = 'fishingpole.png'
	  }
  },
  ['magnet'] = {
	  label = 'Magnet',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "A form of bait for certain fishing methods",
	  client = {
		  image = 'magnet.png'
	  }
  },
  ['narwhal'] = {
	  label = 'Narwhal',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "A unicorn whale!",
	  client = {
		  image = 'narwhal.png'
	  }
  },
  
  ['panfish'] = {
	  label = 'Pan fish',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "A fresh-water fish",
	  client = {
		  image = 'panfish.png'
	  }
  },
  
  ['plugbait'] = {
	  label = 'Plug Bait',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "A form of bait for certain fishing methods",
	  client = {
		  image = 'plugbait.png'
	  }
  },
  
  ['reddrum'] = {
	  label = 'Red Drum',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "A large, game fish",
	  client = {
		  image = 'reddrum.png'
	  }
  },
  
  ['rustyak'] = {
	  label = 'Rusty Assault Rifle',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "An unusable, rusty assault rifle",
	  client = {
		  image = 'rustyak.png'
	  }
  },
  
  ['rustyantenna'] = {
	  label = 'Rusty Antenna',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "A rusty antenna",
	  client = {
		  image = 'rustyantenna.png'
	  }
  },
  
  ['rustybike'] = {
	  label = 'Rusty Bike',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "A rusty push bike",
	  client = {
		  image = 'rustybike.png'
	  }
  },
  
  ['rustychain'] = {
	  label = 'Rusted Chain',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "A rusty, corroded chain",
	  client = {
		  image = 'rustychain.png'
	  }
  },
  
  ['rustyelectronickit'] = {
	  label = 'Rusty Electronic Kit',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "A rusty, corroded electronic kit",
	  client = {
		  image = 'rustyelectronickit.png'
	  }
  },
  
  ['rustypistol'] = {
	  label = 'Rusted Pistol',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "An unusable, rusty pistol",
	  client = {
		  image = 'rustypistol.png'
	  }
  },
  
  ['rustyraspberrypi'] = {
	  label = 'Rusty Raspberry Pi',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "This was once usable, that time has passed",
	  client = {
		  image = 'rustyraspberrypi.png'
	  }
  },
  
  ['rustyscanner'] = {
	  label = 'Rusty Scanner',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "This was once usable, that time has passed",
	  client = {
		  image = 'rustyscanner.png'
	  }
  },
  
  ['rustyscrapmetal'] = {
	  label = 'Rusty Scrap Metal',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "Rusty assortment of metals",
	  client = {
		  image = 'rustyscrapmetal.png'
	  }
  },
  
  ['rustyshotgun'] = {
	  label = 'Rusty Shotgun',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "An unusable, rusty shotgun",
	  client = {
		  image = 'rustyshotgun.png'
	  }
  },
  
  ['rustysign'] = {
	  label = 'Rusty Sign',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "A rusty sign post",
	  client = {
		  image = 'rustysign.png'
	  }
  },
  
  ['rustytire'] = {
	  label = 'Rusty Tire',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "A rusty rim and corroded tire",
	  client = {
		  image = 'rustytire.png'
	  }
  },
  
  ['rustyusb'] = {
	  label = 'Rusty USB',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "Whatever was on it is long gone",
	  client = {
		  image = 'rustyusb.png'
	  }
  },
  
  ['rustywheelchair'] = {
	  label = 'Rusty Wheelchair',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "This would have been fun to use in a get-away",
	  client = {
		  image = 'rustywheelchair.png'
	  }
  },
  
  ['salmon'] = {
	  label = 'Salmon',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "A delicious fish!",
	  client = {
		  image = 'salmon.png'
	  }
  },
  
  ['softplasticbait'] = {
	  label = 'Soft Plastic Bait',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "A form of bait for certain fishing methods",
	  client = {
		  image = 'softplasticbait.png'
	  }
  },
  
  ['spermwhale'] = {
	  label = 'Sperm Whale',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "Did you have more than one person helping?",
	  client = {
		  image = 'spermwhale.png'
	  }
  },
  
  ['spinnerbait'] = {
	  label = 'Spinner Bait',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "A form of bait for certain fishing methods",
	  client = {
		  image = 'spinnerbait.png'
	  }
  },
  
  ['steelhead'] = {
	  label = 'Steelhead Trout',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "A beautiful cold water, rainbow trout",
	  client = {
		  image = 'steelhead.png'
	  }
  },
  
  ['stripeddolphin'] = {
	  label = 'Striped Dolphin',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "Not sure you should be catching this!",
	  client = {
		  image = 'stripeddolphin.png'
	  }
  },
  
  ['tigershark'] = {
	  label = 'Tiger Shark',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "Careful! They bite!",
	  client = {
		  image = 'tigershark.png'
	  }
  },
  
  ['tortoise'] = {
	  label = 'Hard Shell Tortoise',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "This creature might be 150 years old!",
	  client = {
		  image = 'tortoise.png'
	  }
  },
  
  ['treasurechest'] = {
	  label = 'Treasure Chest',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "Who knows what could be inside!?",
	  client = {
		  image = 'treasurechest.png'
	  }
  },
  
  ['trout'] = {
	  label = 'Trout',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "A beautiful fish!",
	  client = {
		  image = 'trout.png'
	  }
  },
  
  ['tuna'] = {
	  label = 'Tuna',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "A large and delicious fish, this is worth a lot!",
	  client = {
		  image = 'tuna.png'
	  }
  },
  
  ['whitebass'] = {
	  label = 'White Bass',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "A very sought after fish!",
	  client = {
		  image = 'whitebass.png'
	  }
  },
  
  ['worms'] = {
	  label = 'Worm Bait',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "A form of bait for certain fishing methods",
	  client = {
		  image = 'worm.png'
	  }
  },
  
  ['illegalpole'] = {
	  label = 'Strong Pole',
	  weight = 300,
	  stack = true,
	  close = false,
	  description = "This can pull a lot of weight",
	  client = {
		  image = 'fishingpole.png'
	  }
  },
  
-- GEMS


  ["uncut_diamond"] = {
	  label = "Uncut Diamond",
	  weight = 10,
	  stack = false,
	  close = false,
	  description = "",
  },
  ["uncut_ruby"] = {
	  label = "Uncut Ruby",
	  weight = 10,
	  stack = false,
	  close = false,
	  description = "",
  },
  ["uncut_sapphire"] = {
	  label = "Uncut Sapphire",
	  weight = 10,
	  stack = false,
	  close = false,
	  description = "",
  },
  ["uncut_emerald"] = {
	  label = "Uncut Emearald",
	  weight = 10,
	  stack = false,
	  close = false,
	  description = "",
  },
  ["diamond"] = {
	  label = "Diamond",
	  weight = 10,
	  stack = false,
	  close = false,
	  description = "",
  },
  ["ruby"] = {
	  label = "Ruby",
	  weight = 10,
	  stack = false,
	  close = false,
	  description = "",
  },
  ["sapphire"] = {
	  label = "Sapphire",
	  weight = 10,
	  stack = false,
	  close = false,
	  description = "",
  },
  ["emerald"] = {
	  label = "Emerald",
	  weight = 10,
	  stack = false,
	  close = false,
	  description = "",
  },

	['headbag'] = {
		label = 'Hessian Bag',
		weight = 150,
		stack = true,
		description = "Hessian Bag",
		client = {
			export = 'wx_headbag.headbag',
		},
	},

-- HEIST PACKS
-- USABLES: Ammo cases
['box_fleeca'] = {
  label = 'Mystery Crate',
  weight = 5000,
  consume = 0,
  description = "A big crate with FLEECA logo on it",
  client = {
	  client = {
		  anim = { dict = 'mp_safehouselost@', clip = 'package_dropoff' },
		  prop = { model = `prop_cs_cardbox_01`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
		  usetime = 2500,
		  notification = 'You... opened the box',
		  image = 'box_heist.png',
	  }
	  
  }
},

['box_atms'] = {
  label = 'Mystery Crate',
  weight = 5000,
  consume = 0,
  description = "A big crate with an ATM logo on it",
  client = {
	  client = {
		  anim = { dict = 'mp_safehouselost@', clip = 'package_dropoff' },
		  prop = { model = `prop_cs_cardbox_01`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
		  usetime = 2500,
		  notification = 'You... opened the box',
		  image = 'box_heist.png',
	  }
	  
  }
},

['box_vangelico'] = {
  label = 'Mystery Crate',
  weight = 5000,
  consume = 0,
  description = "A big crate with VANGELICO logo on it",
  client = {
	  client = {
		  anim = { dict = 'mp_safehouselost@', clip = 'package_dropoff' },
		  prop = { model = `prop_cs_cardbox_01`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
		  usetime = 2500,
		  notification = 'You... opened the box',
		  image = 'box_heist.png',
	  }
	  
  }
},

['box_paleto'] = {
  label = 'Mystery Crate',
  weight = 5000,
  consume = 0,
  description = "A big crate with Blaine County Savings logo on it",
  client = {
	  client = {
		  anim = { dict = 'mp_safehouselost@', clip = 'package_dropoff' },
		  prop = { model = `prop_cs_cardbox_01`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
		  usetime = 2500,
		  notification = 'You... opened the box',
		  image = 'box_heist.png',
	  }
	  
  }
},

['box_bobcat'] = {
  label = 'Mystery Crate',
  weight = 5000,
  consume = 0,
  description = "A big crate with BOBCAT logo on it",
  client = {
	  client = {
		  anim = { dict = 'mp_safehouselost@', clip = 'package_dropoff' },
		  prop = { model = `prop_cs_cardbox_01`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
		  usetime = 2500,
		  notification = 'You... opened the box',
		  image = 'box_heist.png',
	  }
	  
  }
},

['box_pacific'] = {
  label = 'Mystery Crate',
  weight = 5000,
  consume = 0,
  description = "A big crate with PACIFIC BANK logo on it",
  client = {
	  client = {
		  anim = { dict = 'mp_safehouselost@', clip = 'package_dropoff' },
		  prop = { model = `prop_cs_cardbox_01`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
		  usetime = 2500,
		  notification = 'You... opened the box',
		  image = 'box_heist.png',
	  }
	  
  }
},

['box_oilrig'] = {
  label = 'Mystery Crate',
  weight = 5000,
  consume = 0,
  description = "A big crate with an OIL logo on it",
  client = {
	  client = {
		  anim = { dict = 'mp_safehouselost@', clip = 'package_dropoff' },
		  prop = { model = `prop_cs_cardbox_01`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
		  usetime = 2500,
		  notification = 'You... opened the box',
		  image = 'box_heist.png',
	  }
	  
  }
},

['box_mazebank'] = {
  label = 'Mystery Crate',
  weight = 5000,
  consume = 0,
  description = "A big crate with MAZE BANK logo on it",
  client = {
	  client = {
		  anim = { dict = 'mp_safehouselost@', clip = 'package_dropoff' },
		  prop = { model = `prop_cs_cardbox_01`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
		  usetime = 2500,
		  notification = 'You... opened the box',
		  image = 'box_heist.png',
	  }
	  
  }
},

['box_yacht'] = {
  label = 'Mystery Crate',
  weight = 5000,
  consume = 0,
  description = "A big crate with a YACHT logo on it",
  client = {
	  client = {
		  anim = { dict = 'mp_safehouselost@', clip = 'package_dropoff' },
		  prop = { model = `prop_cs_cardbox_01`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
		  usetime = 2500,
		  notification = 'You... opened the box',
		  image = 'box_heist.png',
	  }
	  
  }
},

['box_casino'] = {
  label = 'Mystery Crate',
  weight = 5000,
  consume = 0,
  description = "A big crate with the CASINO logo on it",
  client = {
	  client = {
		  anim = { dict = 'mp_safehouselost@', clip = 'package_dropoff' },
		  prop = { model = `prop_cs_cardbox_01`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
		  usetime = 2500,
		  notification = 'You... opened the box',
		  image = 'box_heist.png',
	  }
	  
  }
},














  -- CUSTOM ITEMS ADD ABOVE THIS

	  -- FOOD: General

['sandwich'] = { -- A simple sandwich for a simple day
  label = 'Sandwich',
  weight = 350,
  stack = true,
  close = true,
  description = "A simple sandwich for a simple day",
  client = {
	  status = { hunger = 100000 },
	  anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
	  prop = { model = 'prop_sandwich_01', 
	  pos = vec3(0.05, -0.02, -0.03), rot = vec3(150.0, 340.0, 170.0) },
	  usetime = 7500,
  },
},

['burger'] = { -- A test hamburger that you can eat
  label = 'Hamburger',
  weight = 350,
  stack = true,
  close = true,
  description = "A test hamburger that you can eat",
  client = {
	  status = { hunger = 330000 },
	  anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
	  prop = { model = 'prop_cs_burger_01', 
	  pos = vec3(0.05, -0.02, -0.03), rot = vec3(150.0, 340.0, 170.0) },
	  usetime = 7500,
  },
},

['burger_chs'] = { -- A test hamburger that you can eat
  label = 'Cheese Burger',
  weight = 350,
  stack = true,
  close = true,
  description = "A test hamburger that you can eat, with cheese",
  client = {
	  status = { hunger = 330000 },
	  anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
	  prop = { model = 'prop_cs_burger_01', 
	  pos = vec3(0.05, -0.02, -0.03), rot = vec3(150.0, 340.0, 170.0) },
	  usetime = 7500,
  },
},

['burger_chsbcn'] = { -- A test hamburger that you can eat
  label = 'Bacon Cheese Burger',
  weight = 350,
  stack = true,
  close = true,
  description = "A test hamburger that you can eat, with cheese & bacon",
  client = {
	  status = { hunger = 330000 },
	  anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
	  prop = { model = 'prop_cs_burger_01', 
	  pos = vec3(0.05, -0.02, -0.03), rot = vec3(150.0, 340.0, 170.0) },
	  usetime = 7500,
  },
},


['noodles'] = { -- Fuck those baked shits are good af
  label = 'Thai Noodles',
  weight = 350,
  stack = true,
  close = true,
  description = "นี่คือบะหมี่",
  client = {
	  status = { hunger = 230000 },
	  anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	  prop = { model = 'v_ret_fh_noodle', 
	  pos = vec3(-0.03, 0.01, 0.05), 
	  rot = vec3(0.0, 0.0, -40.0) },
	  usetime = 7500,
  },
},


----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------- 
-- FOOD: Pizzas


['pizza_pep'] = { -- A simple sandwich for a simple day
  label = 'Peperoni Pizza',
  weight = 350,
  stack = true,
  close = true,
  description = "Who put cheese on my pepperoni",
  client = {
	  status = { hunger = 330000 },
	  anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
	  prop = { model = 'knjgh_pizzaslice5', 
	  pos = vec3(0.0500, -0.0300, -0.0700), 
	  rot = vec3(300.0, -10.0, 160.0),
	  bone = 60309 },
	  usetime = 7500,
  },
},

['pizza_chs'] = { -- A simple sandwich for a simple day
  label = 'Cheese Pizza',
  weight = 350,
  stack = true,
  close = true,
  description = "Is it enough cheese? No",
  client = {
	  status = { hunger = 330000 },
	  anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
	  prop = { model = 'knjgh_pizzaslice4', 
	  pos = vec3(0.0500, -0.0300, -0.0700), 
	  rot = vec3(300.0, -10.0, 160.0),
	  bone = 60309 },
	  usetime = 7500,
  },
},

['pizza_msh'] = { -- A simple sandwich for a simple day
  label = 'Mushroom Pizza',
  weight = 350,
  stack = true,
  close = true,
  description = "Fungi on my pizza? Who thought of this?",
  client = {
	  status = { hunger = 330000 },
	  anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
	  prop = { model = 'knjgh_pizzaslice3', 
	  pos = vec3(0.0500, -0.0300, -0.0700), 
	  rot = vec3(300.0, -10.0, 160.0),
	  bone = 60309 },
	  usetime = 7500,
  },
},

['pizza_mgt'] = { -- A simple sandwich for a simple day
  label = 'Margherita Pizza',
  weight = 350,
  stack = true,
  close = true,
  description = "I know, I thought it was alcohol pizza too",
  client = {
	  status = { hunger = 330000 },
	  anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
	  prop = { model = 'knjgh_pizzaslice2', 
	  pos = vec3(0.0500, -0.0300, -0.0700), 
	  rot = vec3(300.0, -10.0, 160.0),
	  bone = 60309 },
	  usetime = 7500,
  },
},

['pizza_dmt'] = { -- A simple sandwich for a simple day
  label = 'Double Meat Pizza',
  weight = 350,
  stack = true,
  close = true,
  description = "When one meat isn't enough and 3 is weird",
  client = {
	  status = { hunger = 330000 },
	  anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
	  prop = { model = 'knjgh_pizzaslice1', 
	  pos = vec3(0.0500, -0.0300, -0.0700), 
	  rot = vec3(300.0, -10.0, 160.0),
	  bone = 60309 },
	  usetime = 7500,
  },
},


----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------- 
-- FOOD: Snacks


['phatc_rib'] = { -- A skeletons favorite snack
  label = 'Phat Chips: Ribs',
  weight = 350,
  stack = false,
  degrade = 360,
  decay = true,
  close = true,
  description = "Rib flavored chips, made with real wood chips",
  client = {
	  status = { hunger = 80000 },
	  anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	  prop = { model = 'ng_proc_food_chips01b', 
	  pos = vec3(0.0, 0.08, 0.05), rot = vec3(90.0, 0.0, -45.0) },
	  usetime = 5000,
  },
},

['phatc_bch'] = { -- Biggie Cheese
  label = 'Phat Chips: Big Cheese',
  weight = 350,
  stack = false,
  degrade = 360,
  decay = true,
  close = true,
  description = "Cheese flavored chips, made with real rats",
  client = {
	  status = { hunger = 80000 },
	  anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	  prop = { model = 'ng_proc_food_chips01a', 
	  pos = vec3(0.0, 0.08, 0.05), rot = vec3(90.0, 0.0, -45.0) },
	  usetime = 5000,
  },
},

['ps_qs'] = { -- is that candy
  label = 'P\'s & Q\'s',
  weight = 350,
  stack = true,
  close = true,
  description = "Candy make your tongue go brrrr",
  client = {
	  status = { hunger = 100000 },
	  anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	  prop = { model = 'prop_candy_pqs', 
	  pos = vec3(0.0, 0.02, 0.05), rot = vec3(90.0, 0.0, -45.0) },
	  usetime = 5000,
  },
},

['apple'] = { -- Apple good
  label = 'Apple',
  weight = 350,
  stack = true,
  close = true,
  description = "Yes, from the trees comes deez apples",
  client = {
	  status = { hunger = 90000 },
	  anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
	  prop = { model = 'sf_prop_sf_apple_01a', 
	  pos = vec3(0.03, -0.02, -0.03), rot = vec3(300.0, 340.0, 170.0) },
	  usetime = 3000,
  },
},

['banana'] = { -- banana good
  label = 'Banana',
  weight = 350,
  stack = true,
  close = true,
  description = "b a n a n a n a n a n a",
  client = {
	  status = { hunger = 90000 },
	  anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
	  prop = { model = 'v_res_tre_banana', 
	  pos = vec3(0.05, -0.02, 0.01), rot = vec3(270.0, 90.0, 0.0) },
	  usetime = 3000,
  },
},


----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------- 
-- FOOD: Deserts

['donut_chc'] = { -- Fuck those baked shits are good af
  label = 'Chocolate Donut',
  weight = 250,
  stack = true,
  close = true,
  description = "Mmmmm, refrence",
  client = {
	  status = { hunger = 100000 },
	  anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
	  prop = { model = 'bzzz_foodpack_donut002', 
	  bone = 18905,
	  pos = vec3(0.13, 0.050, 0.020), 
	  rot = vec3(-50.0, 100.0, 270.0) },
	  usetime = 7500,
  },
},

['donut_sby'] = { -- Fuck those baked shits are good af
  label = 'Strawberry Donut',
  weight = 250,
  stack = true,
  close = true,
  description = "Mmmmm, refrence",
  client = {
	  status = { hunger = 100000 },
	  anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
	  prop = { model = 'bzzz_foodpack_donut001', 
	  bone = 18905,
	  pos = vec3(0.13, 0.050, 0.020), 
	  rot = vec3(-50.0, 100.0, 270.0) },
	  usetime = 7500,
  },
},

['smore'] = { -- Fuck those baked shits are good af
  label = 'Smore',
  weight = 150,
  stack = true,
  close = true,
  description = "Mmmmm, refrence",
  client = {
	  status = { hunger = 90000 },
	  anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
	  prop = { model = 'bzzz_food_dessert_a', 
	  bone = 18905,
	  pos = vec3(0.15, 0.03, 0.03), 
	  rot = vec3(-42.0, -36.0, 0.0) },
	  usetime = 7500,
  },
},

['icecream_chr'] = { -- brain cold go brrrrr
  label = 'Cherry Ice Cream',
  weight = 350,
  stack = true,
  close = true,
  description = "Why yes, your brain is freezing",
  client = {
	  status = { hunger = 50000 },
	  anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
	  prop = { model = 'bzzz_icecream_cherry', 
	  bone = 18905,
	  pos = vec3(0.14, 0.03, 0.01), 
	  rot = vec3(85.0, 70.0, -203.0) },
	  usetime = 7500,
  },
},

['icecream_chc'] = { -- brain cold go brrrrr
  label = 'Chocolate Ice Cream',
  weight = 350,
  stack = true,
  close = true,
  description = "Why yes, your brain is freezing",
  client = {
	  status = { hunger = 50000 },
	  anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
	  prop = { model = 'bzzz_icecream_chocolate', 
	  bone = 18905,
	  pos = vec3(0.14, 0.03, 0.01), 
	  rot = vec3(85.0, 70.0, -203.0) },
	  usetime = 7500,
  },
},

['icecream_lmn'] = { -- brain cold go brrrrr
  label = 'Lemon Ice Cream',
  weight = 350,
  stack = true,
  close = true,
  description = "Why yes, your brain is freezing",
  client = {
	  status = { hunger = 50000 },
	  anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
	  prop = { model = 'bzzz_icecream_lemon', 
	  bone = 18905,
	  pos = vec3(0.14, 0.03, 0.01), 
	  rot = vec3(85.0, 70.0, -203.0) },
	  usetime = 7500,
  },
},

['icecream_pso'] = { -- brain cold go brrrrr
  label = 'Pistachio Ice Cream',
  weight = 350,
  stack = true,
  close = true,
  description = "Why yes, your brain is freezing",
  client = {
	  status = { hunger = 50000 },
	  anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
	  prop = { model = 'bzzz_icecream_pistachio', 
	  bone = 18905,
	  pos = vec3(0.14, 0.03, 0.01), 
	  rot = vec3(85.0, 70.0, -203.0) },
	  usetime = 7500,
  },
},

['icecream_rpy'] = { -- brain cold go brrrrr
  label = 'Raspberry Ice Cream',
  weight = 350,
  stack = true,
  close = true,
  description = "Why yes, your brain is freezing",
  client = {
	  status = { hunger = 50000 },
	  anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
	  prop = { model = 'bzzz_icecream_raspberry', 
	  bone = 18905,
	  pos = vec3(0.14, 0.03, 0.01), 
	  rot = vec3(85.0, 70.0, -203.0) },
	  usetime = 7500,
  },
},

['icecream_ckd'] = { -- brain cold go brrrrr
  label = 'Cookie Dough Ice Cream',
  weight = 350,
  stack = true,
  close = true,
  description = "Why yes, your brain is freezing",
  client = {
	  status = { hunger = 50000 },
	  anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
	  prop = { model = 'bzzz_icecream_stracciatella', 
	  bone = 18905,
	  pos = vec3(0.14, 0.03, 0.01), 
	  rot = vec3(85.0, 70.0, -203.0) },
	  usetime = 7500,
  },
},

['icecream_sby'] = { -- brain cold go brrrrr
  label = 'Strawberry Ice Cream',
  weight = 350,
  stack = true,
  close = true,
  description = "Why yes, your brain is freezing",
  client = {
	  status = { hunger = 50000 },
	  anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
	  prop = { model = 'bzzz_icecream_strawberry', 
	  bone = 18905,
	  pos = vec3(0.14, 0.03, 0.01), 
	  rot = vec3(85.0, 70.0, -203.0) },
	  usetime = 7500,
  },
},

['icecream_vna'] = { -- brain cold go brrrrr
  label = 'Vanilla Ice Cream',
  weight = 350,
  stack = true,
  close = true,
  description = "Why yes, your brain is freezing",
  client = {
	  status = { hunger = 50000 },
	  anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
	  prop = { model = 'bzzz_icecream_walnut', 
	  bone = 18905,
	  pos = vec3(0.14, 0.03, 0.01), 
	  rot = vec3(85.0, 70.0, -203.0) },
	  usetime = 7500,
  },
},








----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------- 
-- DRINKS: General

['water'] = { -- Carbonized syrup is good for the soul
  label = 'Water Bottle',
  weight = 350,
  stack = true,
  close = true,
  description = "If you think you need more, you do",
  client = {
	  status = { thirst = 330000 },
	  anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	  prop = { model = 'vw_prop_casino_water_bottle_01a', 
	  pos = vec3(0.008, 0.0, -0.05), rot = vec3(0.0, 0.0, -40.0) },
	  usetime = 7500,
  },
},
--[[
['milk'] = { -- milky milky milky
  label = 'Milk Carton',
  weight = 350,
  stack = true,
  close = true,
  description = "You need strong bones for crimes",
  client = {
	  status = { thirst = 330000 },
	  anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	  prop = { model = 'v_res_tt_milk', 
	  bone = 18905,
	  pos = vec3(0.10, 0.008, 0.070), 
	  rot = vec3(240.0, -60.0, 0.0) },
	  usetime = 7500,
  },
}, ]]--


-- COFFEES


['coffee_black'] = { -- Carbonized syrup is good for the soul
  label = 'Black Coffee',
  weight = 350,
  stack = true,
  close = true,
  description = "As black as the color wheel lets it be",
  client = {
	  status = { thirst = 280000 },
	  anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	  prop = { model = 'ng_proc_coffee_01a', 
	  pos = vec3(0.008, 0.0, -0.05), rot = vec3(0.0, 0.0, -40.0) },
	  usetime = 7500,
  },
},

['coffee_mocha'] = { -- Carbonized syrup is good for the soul
  label = 'Mocha',
  weight = 350,
  stack = true,
  close = true,
  description = "What even is a mocha",
  client = {
	  status = { thirst = 280000 },
	  anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	  prop = { model = 'ng_proc_coffee_01a', 
	  pos = vec3(0.008, 0.0, -0.05), rot = vec3(0.0, 0.0, -40.0) },
	  usetime = 7500,
  },
},

['coffee_cpcno'] = { -- Carbonized syrup is good for the soul
  label = 'Cappuccino',
  weight = 350,
  stack = true,
  close = true,
  description = "That might wake you up a smidge",
  client = {
	  status = { thirst = 280000 },
	  anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	  prop = { model = 'ng_proc_coffee_01a', 
	  pos = vec3(0.008, 0.0, -0.05), rot = vec3(0.0, 0.0, -40.0) },
	  usetime = 7500,
  },
},

['coffee_amrcno'] = { -- Carbonized syrup is good for the soul
  label = 'Americano',
  weight = 350,
  stack = true,
  close = true,
  description = "American coffee, with an o",
  client = {
	  status = { thirst = 280000 },
	  anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	  prop = { model = 'ng_proc_coffee_01a', 
	  pos = vec3(0.008, 0.0, -0.05), rot = vec3(0.0, 0.0, -40.0) },
	  usetime = 7500,
  },
},


-- SODAS


['ecola'] = { -- Carbonized syrup is good for the soul
  label = 'eCola',
  weight = 350,
  stack = true,
  close = true,
  description = "Hey, there is soda in my cocaine",
  client = {
	  status = { thirst = 210000 },
	  anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	  prop = { model = 'prop_ecola_can', 
	  pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 130.0) },
	  usetime = 5000,
  },
},

['sprunk'] = { -- Carbonized syrup is good for the soul
  label = 'Sprunk',
  weight = 350,
  stack = true,
  close = true,
  description = "It tastes like water punched you in the throat",
  client = {
	  status = { thirst = 210000 },
	  anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	  prop = { model = 'ng_proc_sodacan_01b', 
	  pos = vec3(0.005, -0.001, 0.08), rot = vec3(0.0, 0.0, 160.0) },
	  usetime = 5000,
  },
},

['orangotang'] = { -- Carbonized syrup is good for the soul
  label = 'Orang-o-tang',
  weight = 350,
  stack = true,
  close = true,
  description = "I didn't even know people wanted this",
  client = {
	  status = { thirst = 210000 },
	  anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	  prop = { model = 'prop_orang_can_01', 
	  pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 130.0) },
	  usetime = 5000,
  },
},

['ejunk'] = { -- Drinking too much of this wont kill you. I think.
  label = 'Junk Energy',
  weight = 350,
  stack = true,
  close = true,
  description = "Drinking too much of this wont kill you. I think.",
  client = {
	  status = { thirst = 210000 },
	  anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	  prop = { model = 'sf_prop_sf_can_01a', 
	  pos = vec3(0.025, 0.010, 0.05), rot = vec3(5.0, 5.0, -180.5) },
	  usetime = 5000,
  },
},










----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------- 
-- ALCOHOL: Beers
['rancho_beer'] = { -- Good ol imported beer from mexico
  label = 'Cerbesa Barracho',
  weight = 290,
  stack = true,
  close = true,
  consume = 0.2,
  decay = true,
  description = "Good ol imported beer from mexico",
  client = {
	  status = { thirst = 150000 },
	  anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	  prop = { model = 'prop_beer_bottle', 
	  pos = vec3(0.02, -0.01, -0.14), rot = vec3(1.0, 5.0, -182.5) },
	  usetime = 7500,
  },
  server = {
    export = 'BS-Breathalyzer.usedAlcohol'
  }
},

['dusche_beer'] = { -- Good ol imported beer from germany
  label = 'Dusche Beer',
  weight = 290,
  stack = true,
  close = true,
  consume = 0.2,
  decay = true,
  description = "Good ol imported beer from germany",
  client = {
	  status = { thirst = 150000 },
	  anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	  prop = { model = 'prop_beerdusche', 
	  pos = vec3(0.01, -0.01, -0.12), rot = vec3(5.0, 5.0, -180.5) },
	  usetime = 7500,
  },
  server = {
    export = 'BS-Breathalyzer.usedAlcohol'
  }
},

['blarny_beer'] = { -- Good ol imported beer from italy
  label = 'Blarny\'s Stout',
  weight = 290,
  stack = true,
  close = true,
  consume = 0.2,
  decay = true,
  description = "Good ol imported stout from ireland",
  client = {
	  status = { thirst = 150000 },
	  anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	  prop = { model = 'prop_beer_blr', 
	  pos = vec3(0.01, -0.02, -0.15), rot = vec3(5.0, 5.0, -180.5) },
	  usetime = 7500,
  },
  server = {
    export = 'BS-Breathalyzer.usedAlcohol'
  }
},

['patriot_beer'] = { -- Good ol homemade beer from the brewery
  label = 'Patriot Beer',
  weight = 290,
  stack = true,
  close = true,
  consume = 0.2,
  decay = true,
  description = "Good ol homemade beer from the brewery",
  client = {
	  status = { thirst = 150000 },
	  anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	  prop = { model = 'prop_beer_patriot', 
	  pos = vec3(0.01, -0.02, -0.15), rot = vec3(5.0, 5.0, -180.5) },
	  usetime = 7500,
  },
  server = {
    export = 'BS-Breathalyzer.usedAlcohol'
  }
},










----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------- 
-- ALCOHOL: Bottles
['bb_bourgeoix'] = { -- Good ol imported beer from mexico
  label = 'Bottle of Bourgeoix Cognac',
  weight = 290,
  stack = false,
  close = true,
  consume = 0.1,
  decay = true,
  description = "Like whiskey, but more ouch",
  client = {
	  status = { thirst = 150000 },
	  anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	  prop = { model = 'prop_bottle_cognac', 
	  pos = vec3(0.02, -0.01, -0.14), rot = vec3(1.0, 5.0, -182.5) },
	  usetime = 7500,
  },
  server = {
    export = 'BS-Breathalyzer.usedAlcohol'
  }
},

['bb_cariaque'] = { -- Good ol imported beer from mexico
  label = 'Bottle of Cariaque Bourbon',
  weight = 290,
  stack = false,
  close = true,
  consume = 0.1,
  decay = true,
  description = "Like whiskey, but more ouch",
  client = {
	  status = { thirst = 150000 },
	  anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	  prop = { model = 'prop_bottle_brandy', 
	  pos = vec3(0.02, -0.01, -0.14), rot = vec3(1.0, 5.0, -182.5) },
	  usetime = 7500,
  },
  server = {
    export = 'BS-Breathalyzer.usedAlcohol'
  }
},

['cb_bleuterd'] = { -- Good ol imported beer from mexico
  label = 'Bottle of Bleuter\'d Champagne',
  weight = 290,
  stack = false,
  close = true,
  consume = 0.1,
  decay = true,
  description = "For those fancy events",
  client = {
	  status = { thirst = 150000 },
	  anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	  prop = { model = 'prop_champ_01b', 
	  pos = vec3(0.02, -0.01, -0.14), rot = vec3(1.0, 5.0, -182.5) },
	  usetime = 7500,
  },
  server = {
    export = 'BS-Breathalyzer.usedAlcohol'
  }
},

['rb_ragga'] = { -- Good ol imported beer from mexico
  label = 'Bottle of Ragga Rum',
  weight = 290,
  stack = false,
  close = true,
  consume = 0.1,
  decay = true,
  description = "A pirates drink for me",
  client = {
	  status = { thirst = 150000 },
	  anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	  prop = { model = 'prop_rum_bottle', 
	  pos = vec3(0.02, -0.01, -0.14), rot = vec3(1.0, 5.0, -182.5) },
	  usetime = 7500,
  },
  server = {
    export = 'BS-Breathalyzer.usedAlcohol'
  }
},

['tb_tequilya'] = { -- Good ol imported beer from mexico
  label = 'Bottle of Tequilya Tequila',
  weight = 290,
  stack = false,
  close = true,
  consume = 0.1,
  decay = true,
  description = "For extra kick, add snake venom",
  client = {
	  status = { thirst = 150000 },
	  anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	  prop = { model = 'prop_tequila_bottle', 
	  pos = vec3(0.02, -0.01, -0.14), rot = vec3(1.0, 5.0, -182.5) },
	  usetime = 7500,
  },
  server = {
    export = 'BS-Breathalyzer.usedAlcohol'
  }
},

['vb_nogo'] = { -- Good ol imported beer from mexico
  label = 'Bottle of Nogo Vodka',
  weight = 290,
  stack = false,
  close = true,
  consume = 0.1,
  decay = true,
  description = "Chilled like the mountains of Siberia",
  client = {
	  status = { thirst = 150000 },
	  anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	  prop = { model = 'prop_vodka_bottle', 
	  pos = vec3(0.02, -0.01, -0.14), rot = vec3(1.0, 5.0, -182.5) },
	  usetime = 7500,
  },
  server = {
    export = 'BS-Breathalyzer.usedAlcohol'
  }
},

['wb_mount'] = { -- Good ol imported beer from mexico
  label = 'Bottle of Mount Whiskey',
  weight = 290,
  stack = false,
  close = true,
  consume = 0.1,
  decay = true,
  description = "The cowboy's choice for getting plastered",
  client = {
	  status = { thirst = 150000 },
	  anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	  prop = { model = 'prop_cs_whiskey_bottle', 
	  pos = vec3(0.02, -0.01, -0.14), rot = vec3(1.0, 5.0, -182.5) },
	  usetime = 7500,
  },
  server = {
    export = 'BS-Breathalyzer.usedAlcohol'
  }
},

['wb_richards'] = { -- Good ol imported beer from mexico
  label = 'Bottle of Richard\'s Whiskey',
  weight = 290,
  stack = false,
  close = true,
  consume = 0.1,
  decay = true,
  description = "For the refined taste buds you so clearly have",
  client = {
	  status = { thirst = 150000 },
	  anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	  prop = { model = 'prop_bottle_richard', 
	  pos = vec3(0.02, -0.01, -0.14), rot = vec3(1.0, 5.0, -182.5) },
	  usetime = 7500,
  },
  server = {
    export = 'BS-Breathalyzer.usedAlcohol'
  }
},










----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------- 
-- ALCOHOL: Glasses
['bg_bourgeiox'] = { -- Good ol imported beer from mexico
  label = 'Glass of Bourgeoix Cognac',
  weight = 290,
  stack = false,
  close = true,
  consume = 0.2,
  decay = true,
  description = "Like whiskey, but more ouch",
  client = {
	  status = { thirst = 150000 },
	  anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
	  prop = { model = 'prop_drink_whisky', 
	  pos = vec3(0.16, -0.02, -0.06), 
	  rot = vec3(270.00, 0.00, 0.00),
	  bone = 57005},
	  usetime = 12000,
  },
  server = {
    export = 'BS-Breathalyzer.usedAlcohol'
  }
},

['bg_cariaque'] = { -- Good ol imported beer from mexico
  label = 'Glass of Cariaque Bourbon',
  weight = 290,
  stack = false,
  close = true,
  consume = 0.2,
  decay = true,
  description = "Like whiskey, but more ouch",
  client = {
	  status = { thirst = 150000 },
	  anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
	  prop = { model = 'prop_drink_whisky', 
	  pos = vec3(0.16, -0.02, -0.06), 
	  rot = vec3(270.00, 0.00, 0.00),
	  bone = 57005},
	  usetime = 12000,
  },
  server = {
    export = 'BS-Breathalyzer.usedAlcohol'
  }
},

['bs_bourgeiox'] = { -- Good ol imported beer from mexico
  label = 'Shot of Bourgeoix Cognac',
  weight = 290,
  stack = false,
  close = true,
  consume = 1,
  decay = true,
  description = "Like whiskey, but more ouch",
  client = {
	  status = { thirst = 150000 },
	  anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	  prop = { model = 'p_cs_shot_glass_2_s', 
	  pos = vec3(0.02, -0.01, 0.08), 
	  rot = vec3(1.0, 5.0, -182.5) },
	  usetime = 2000,
  },
  server = {
    export = 'BS-Breathalyzer.usedAlcohol'
  }
},

['bs_cariaque'] = { -- Good ol imported beer from mexico
  label = 'Shot of Cariaque Bourbon',
  weight = 290,
  stack = true,
  close = true,
  consume = 1,
  decay = true,
  description = "Like whiskey, but more ouch",
  client = {
	  status = { thirst = 150000 },
	  anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	  prop = { model = 'p_cs_shot_glass_2_s', 
	  pos = vec3(0.02, -0.01, 0.08), 
	  rot = vec3(1.0, 5.0, -182.5) },
	  usetime = 2000,
  },
  server = {
    export = 'BS-Breathalyzer.usedAlcohol'
  }
},

['cg_bleuterd'] = { -- Good ol imported beer from mexico
  label = 'Glass of Bleuter\'d Champagne',
  weight = 290,
  stack = false,
  close = true,
  consume = 0.2,
  decay = true,
  description = "Like whiskey, but more ouch",
  client = {
	  status = { thirst = 150000 },
	  anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
	  prop = { model = 'prop_drink_champ', 
	  pos = vec3(0.16, -0.19, -0.06), 
	  rot = vec3(270.00, 0.00, 0.00),
	  bone = 57005},
	  usetime = 12000,
  },
  server = {
    export = 'BS-Breathalyzer.usedAlcohol'
  }
},

['tg_martini'] = { -- Good ol imported beer from mexico
  label = 'Martini',
  weight = 290,
  stack = false,
  close = true,
  consume = 0.2,
  decay = true,
  description = "Like whiskey, but more ouch",
  client = {
	  status = { thirst = 150000 },
	  anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
	  prop = { model = 'prop_tequila', 
	  pos = vec3(0.16, -0.12, -0.06), 
	  rot = vec3(280.00, 90.00, 0.00),
	  bone = 57005},
	  usetime = 12000,
  },
  server = {
    export = 'BS-Breathalyzer.usedAlcohol'
  }
},

['tg_sunrise'] = { -- Good ol imported beer from mexico
  label = 'Tequilya Sunrise',
  weight = 290,
  stack = false,
  close = true,
  consume = 0.2,
  decay = true,
  description = "Like whiskey, but more ouch",
  client = {
	  status = { thirst = 150000 },
	  anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
	  prop = { model = 'prop_tequsunrise', 
	  pos = vec3(0.16, -0.1, -0.05), 
	  rot = vec3(270.00, 0.00, 0.00),
	  bone = 57005},
	  usetime = 12000,
  },
  server = {
    export = 'BS-Breathalyzer.usedAlcohol'
  }
},

['tg_tequilya'] = { -- Good ol imported beer from mexico
  label = 'Glass of Tequilya',
  weight = 290,
  stack = false,
  close = true,
  consume = 0.2,
  decay = true,
  description = "Like whiskey, but more ouch",
  client = {
	  status = { thirst = 150000 },
	  anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
	  prop = { model = 'prop_drink_whisky', 
	  pos = vec3(0.16, -0.02, -0.06), 
	  rot = vec3(270.00, 0.00, 0.00),
	  bone = 57005},
	  usetime = 12000,
  },
  server = {
    export = 'BS-Breathalyzer.usedAlcohol'
  }
},

['ts_tequilya'] = { -- Good ol imported beer from mexico
  label = 'Shot of Tequilya',
  weight = 290,
  stack = true,
  close = true,
  consume = 1,
  decay = true,
  description = "Like whiskey, but more ouch",
  client = {
	  status = { thirst = 150000 },
	  anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	  prop = { model = 'p_cs_shot_glass_2_s', 
	  pos = vec3(0.02, -0.01, 0.08), 
	  rot = vec3(1.0, 5.0, -182.5) },
	  usetime = 2000,
  },
  server = {
    export = 'BS-Breathalyzer.usedAlcohol'
  }
},

['vg_nogo'] = { -- Good ol imported beer from mexico
  label = 'Glass of Nogo Vodka',
  weight = 290,
  stack = false,
  close = true,
  consume = 0.2,
  decay = true,
  description = "Like whiskey, but more ouch",
  client = {
	  status = { thirst = 150000 },
	  anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
	  prop = { model = 'prop_drink_whisky', 
	  pos = vec3(0.16, -0.02, -0.06), 
	  rot = vec3(270.00, 0.00, 0.00),
	  bone = 57005},
	  usetime = 12000,
  },
  server = {
    export = 'BS-Breathalyzer.usedAlcohol'
  }
},

['vs_nogo'] = { -- Good ol imported beer from mexico
  label = 'Shot of Nogo Vodka',
  weight = 290,
  stack = true,
  close = true,
  consume = 1,
  decay = true,
  description = "Like whiskey, but more ouch",
  client = {
	  status = { thirst = 150000 },
	  anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	  prop = { model = 'p_cs_shot_glass_2_s', 
	  pos = vec3(0.02, -0.01, 0.08), 
	  rot = vec3(1.0, 5.0, -182.5) },
	  usetime = 2000,
  },
  server = {
    export = 'BS-Breathalyzer.usedAlcohol'
  }
},

['wg_mount'] = { -- Good ol imported beer from mexico
  label = 'Glass of Mount Whiskey',
  weight = 290,
  stack = false,
  close = true,
  consume = 0.2,
  decay = true,
  description = "Like whiskey, but more ouch",
  client = {
	  status = { thirst = 150000 },
	  anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
	  prop = { model = 'prop_drink_whisky', 
	  pos = vec3(0.16, -0.02, -0.06), 
	  rot = vec3(270.00, 0.00, 0.00),
	  bone = 57005},
	  usetime = 12000,
  },
  server = {
    export = 'BS-Breathalyzer.usedAlcohol'
  }
},

['wg_richards'] = { -- Good ol imported beer from mexico
  label = 'Glass of Richard\'s Whiskey',
  weight = 290,
  stack = false,
  close = true,
  consume = 0.2,
  decay = true,
  description = "Like whiskey, but more ouch",
  client = {
	  status = { thirst = 150000 },
	  anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
	  prop = { model = 'prop_drink_whisky', 
	  pos = vec3(0.16, -0.02, -0.06), 
	  rot = vec3(270.00, 0.00, 0.00),
	  bone = 57005},
	  usetime = 12000,
  },
  server = {
    export = 'BS-Breathalyzer.usedAlcohol'
  }
},

['ws_mount'] = { -- Good ol imported beer from mexico
  label = 'Shot of Mount Whiskey',
  weight = 290,
  stack = true,
  close = true,
  consume = 1,
  decay = true,
  description = "Like whiskey, but more ouch",
  client = {
	  status = { thirst = 150000 },
	  anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	  prop = { model = 'p_cs_shot_glass_2_s', 
	  pos = vec3(0.02, -0.01, 0.08), 
	  rot = vec3(1.0, 5.0, -182.5) },
	  usetime = 2000,
  },
  server = {
    export = 'BS-Breathalyzer.usedAlcohol'
  }
},

['ws_richards'] = { -- Good ol imported beer from mexico
  label = 'Shot of Richard\'s Whiskey',
  weight = 290,
  stack = true,
  close = true,
  consume = 1,
  decay = true,
  description = "Like whiskey, but more ouch",
  client = {
	  status = { thirst = 150000 },
	  anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	  prop = { model = 'p_cs_shot_glass_2_s', 
	  pos = vec3(0.02, -0.01, 0.08), 
	  rot = vec3(1.0, 5.0, -182.5) },
	  usetime = 2000,
  },
  server = {
    export = 'BS-Breathalyzer.usedAlcohol'
  }
},








----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------- 
-- USABLES: Beer crates
['box_rancho_beer'] = { -- idea: Player uses item to show badge prop
  label = 'Case of Rancho Beer',
  weight = 8500,
  --consume = 0,
  description = "Oh boy I love beer",
},

['box_dusche_beer'] = { -- idea: Player uses item to show badge prop
  label = 'Case of Dusche Beer',
  weight = 8500,
  --consume = 0,
  description = "Oh boy I love beer",
},

['box_blarny_beer'] = { -- idea: Player uses item to show badge prop
  label = 'Case of Blarny\'s Stout',
  weight = 8500,
  --consume = 0,
  description = "Oh boy I love beer",
},

['box_patriot_beer'] = { -- idea: Player uses item to show badge prop
  label = 'Case of Patriot Beer',
  weight = 8500,
  --consume = 0,
  description = "Oh boy I love beer",
},

['box_bourgeoix_liquor'] = { -- idea: Player uses item to show badge prop
  label = 'Case of Bourgeoix Cognac',
  weight = 8500,
  --consume = 0,
  description = "Oh boy I love liquor",
},

['box_cariaque_liquor'] = { -- idea: Player uses item to show badge prop
  label = 'Case of Cariaque Bourbon',
  weight = 8500,
  --consume = 0,
  description = "Oh boy I love liquor",
},

['box_bleuterd_liquor'] = { -- idea: Player uses item to show badge prop
  label = 'Case of Bleuter\'d Champagne',
  weight = 8500,
  --consume = 0,
  description = "Oh boy I love liquor",
},

['box_ragga_liquor'] = { -- idea: Player uses item to show badge prop
  label = 'Case of Ragga Rum',
  weight = 8500,
  --consume = 0,
  description = "Oh boy I love liquor",
},

['box_tequilya_liquor'] = { -- idea: Player uses item to show badge prop
  label = 'Case of Tequilya Tequila',
  weight = 8500,
  --consume = 0,
  description = "Oh boy I love liquor",
},

['box_nogo_liquor'] = { -- idea: Player uses item to show badge prop
  label = 'Case of Nogo Vodka',
  weight = 8500,
  --consume = 0,
  description = "Oh boy I love liquor",
},

['box_mount_liquor'] = { -- idea: Player uses item to show badge prop
  label = 'Case of Mount Whiskey',
  weight = 8500,
  --consume = 0,
  description = "Oh boy I love liquor",
},

['box_richards_liquor'] = { -- idea: Player uses item to show badge prop
  label = 'Case of Richard\'s Whiskey',
  weight = 8500,
  --consume = 0,
  description = "Oh boy I love liquor",
},









----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------- 
-- USABLES: Pizza boxes
['box_pizza_chs'] = { -- idea: Player uses item to show badge prop
  label = 'Box of Cheese Pizza',
  weight = 3500,
  --consume = 0,
  description = "A box of cheesy goodness, my guy",
  client = {
	  anim = { dict = 'anim@heists@box_carry@', clip = 'idle', flag = 49 },
	  prop = { model = 'bzzz_pizzahut_box_a', -- need badge props repo
	  pos = vec3(0.010, -0.100, -0.159), 
	  rot = vec3(20.000, 0.000, 0.000), 
	  bone = 28422 },
	  disable = { move = false, car = false, combat = false },
	  usetime = 5000,
  }
},

['box_pizza_pep'] = { -- idea: Player uses item to show badge prop
  label = 'Box of Pepperoni Pizza',
  weight = 3500,
  --consume = 0,
  description = "A box of cheesy goodness, my guy",
  client = {
	  anim = { dict = 'anim@heists@box_carry@', clip = 'idle', flag = 49 },
	  prop = { model = 'bzzz_pizzahut_box_a', -- need badge props repo
	  pos = vec3(0.010, -0.100, -0.159), 
	  rot = vec3(20.000, 0.000, 0.000), 
	  bone = 28422 },
	  disable = { move = false, car = false, combat = false },
	  usetime = 5000,
  }
},

['box_pizza_msh'] = { -- idea: Player uses item to show badge prop
  label = 'Box of Mushroom Pizza',
  weight = 3500,
  --consume = 0,
  description = "A box of cheesy goodness, my guy",
  client = {
	  anim = { dict = 'anim@heists@box_carry@', clip = 'idle', flag = 49 },
	  prop = { model = 'bzzz_pizzahut_box_a', -- need badge props repo
	  pos = vec3(0.010, -0.100, -0.159), 
	  rot = vec3(20.000, 0.000, 0.000), 
	  bone = 28422 },
	  disable = { move = false, car = false, combat = false },
	  usetime = 5000,
  }
},

['box_pizza_mgt'] = { -- idea: Player uses item to show badge prop
  label = 'Box of Margherita Pizza',
  weight = 3500,
  --consume = 0,
  description = "A box of cheesy goodness, my guy",
  client = {
	  anim = { dict = 'anim@heists@box_carry@', clip = 'idle', flag = 49 },
	  prop = { model = 'bzzz_pizzahut_box_a', -- need badge props repo
	  pos = vec3(0.010, -0.100, -0.159), 
	  rot = vec3(20.000, 0.000, 0.000), 
	  bone = 28422 },
	  disable = { move = false, car = false, combat = false },
	  usetime = 5000,
  }
},

['box_pizza_dmt'] = { -- idea: Player uses item to show badge prop
  label = 'Box of Double Meat Pizza',
  weight = 3500,
  --consume = 0,
  description = "A box of cheesy goodness, my guy",
  client = {
	  anim = { dict = 'anim@heists@box_carry@', clip = 'idle', flag = 49 },
	  prop = { model = 'bzzz_pizzahut_box_a', -- need badge props repo
	  pos = vec3(0.010, -0.100, -0.159), 
	  rot = vec3(20.000, 0.000, 0.000), 
	  bone = 28422 },
	  disable = { move = false, car = false, combat = false },
	  usetime = 5000,
  }
},










----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------- 
-- USABLES: Ammo cases
['box_ammo_22'] = {
  label = 'Ammo Case: 22mm (x30)',
  weight = 5000,
  consume = 0,
  description = "A case of stuff to make problems go away",
  client = {
	  image = 'boxammo.png',
  }
},

['box_ammo_38'] = {
  label = 'Ammo Case: 38mm (x30)',
  weight = 5000,
  consume = 0,
  description = "A case of stuff to make problems go away",
  client = {
	  image = 'boxammo.png',
  }
},

['box_ammo_44'] = {
  label = 'Ammo Case: 44mm (x30)',
  weight = 5000,
  consume = 0,
  description = "A case of stuff to make problems go away",
  client = {
	  image = 'boxammo.png',
  }
},

['box_ammo_45'] = {
  label = 'Ammo Case: 45mm (x30)',
  weight = 5000,
  consume = 0,
  description = "A case of stuff to make problems go away",
  client = {
	  image = 'boxammo.png',
  }
},

['box_ammo_50'] = {
  label = 'Ammo Case: 50mm (x30)',
  weight = 5000,
  consume = 0,
  description = "A case of stuff to make problems go away",
  client = {
	  image = 'boxammo.png',
  }
},

['box_ammo_9'] = {
  label = 'Ammo Case: 9mm (x30)',
  weight = 5000,
  consume = 0,
  description = "A case of stuff to make problems go away",
  client = {
	  image = 'boxammo.png',
  }
},

['box_ammo_556m'] = {
  label = 'Ammo Case: Rifle Ammo (x60)',
  weight = 5000,
  consume = 0,
  description = "A case of stuff to make problems go away",
  client = {
	  image = 'boxammo.png',
  }
},

['box_ammo_762m'] = {
  label = 'Ammo Case: Rifle Ammo 2 (x60)',
  weight = 5000,
  consume = 0,
  description = "A case of stuff to make problems go away",
  client = {
	  image = 'boxammo.png',
  }
},

['box_ammo_12g'] = {
  label = 'Ammo Case: 12 Gauge (x30)',
  weight = 5000,
  consume = 0,
  description = "A case of stuff to make problems go away",
  client = {
	  image = 'boxammo.png',
  }
},

['box_ammo_76251m'] = {
  label = 'Ammo Case: Sniper (x20)',
  weight = 5000,
  consume = 0,
  description = "A case of stuff to make problems go away",
  client = {
	  image = 'boxammo.png',
  }
},



----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------- 
-- USABLE: Items
['dingus'] = { 
  label = 'Dingus',
  weight = 6969,
  consume = 0,
  description = "Oh man, what a dingus, just Look at em",
},

['clothing_bag'] = { 
  label = 'Clothing Bag',
  weight = 3250,
  description = "For changing your outfit on the fly",
  stack = false,
  consume = 1,
},

['wallet'] = { 
  label = 'Wallet',
  weight = 115,
  description = "If you lose this, you're gonna be sorry",
},

['cig_69brand'] = { 
  label = 'Pack of 69Brand Smokes',
  weight = 250,
  stack = false,
  consume = 0.08,
  description = "Good for your lungs",
},

['cig_redwood'] = { 
  label = 'Pack of Redwood Smokes',
  weight = 250,
  stack = false,
  consume = 0.08,
  description = "Good for your lungs",
},

['cig_debonaire'] = { 
  label = 'Pack of Debonaire Smokes',
  weight = 250,
  stack = false,
  consume = 0.08,
  description = "Good for your lungs",
},

['cigar'] = { 
  label = 'Cigar',
  weight = 115,
  description = "These REALLY aren't good for you, but fuck it",
},

-- If you are below the mpchristmas3 update, change the prop to 'ba_prop_battle_vape_01'
['vape'] = {
  label = 'Vape',
  weight = 115,
  description = "Vape-nash bruh, tastes like dissapointment",
  consume = 0,
  degrade = 60,
  decay = true,
},

['armor_l1'] = { 
  label = 'Light Ballistic Vest',
  weight = 3000,
  stack = false,
  description = "Bullets hurt a bit less with this",
},

['armor_l2'] = { 
  label = 'Medium Ballistic Vest',
  weight = 4000,
  stack = false,
  description = "Bullets hurt a lot less with this",
},

['armor_l3'] = { 
  label = 'Heavy Ballistic Vest',
  weight = 4500,
  stack = false,
  description = "Keep the extra bullets for personal vest flair",
},

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------- 
-- LEO: Tools
['armor_leo'] = { 
  label = 'LEO Ballistic Vest',
  weight = 4500,
  stack = false,
  description = "It ain't blue or fancy, but it's better than standard issue",
},


----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------- 
-- USABLE: Tools
['bomb_exps'] = {
  label = 'I.E.D.',
  weight = 8500,
  description = "An improvised explosive device. In a bag",
  consume = 1,
  stack = false,
  close = true,
},

['bomb_gas'] = {
  label = 'I.G.D.',
  weight = 8500,
  description = "An improvised explosive gas device. In a bag",
  consume = 1,
  stack = false,
  close = true,
},

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------- 
-- DRUGS: drugs

['crack_cocaine'] = {
  label = 'Cocaine',
  consume = 0.267,
  weight = 85,
  description = "Did you know cocaine could be a pill too? I bet you didn't",
},

['crack_rocks'] = {
  label = 'Crack',
  consume = 0.267,
  weight = 85,
  description = "It ain't as blue as we like, but it works",
},

['pill_ecstasy'] = {
  label = 'Ecstacy',
  consume = 0.267,
  weight = 85,
  description = "Am I the only one who see the hat man?",
},

['pill_molly'] = {
  label = 'Molly',
  consume = 0.267,
  weight = 85,
  description = "If I ever did drugs, molly wouldn't be on the list",
},










----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------- 
-- BADGES: Police
['badge_fib'] = { -- idea: Player uses item to show badge prop
  label = 'FIB Badge',
  weight = 444,
  consume = 0,
  description = "For official use by FIB Agents only",
  client = {
	  anim = { dict = 'paper_1_rcm_alt1-8', clip = 'player_one_dual-8', flag = 49 },
	  prop = { model = 'prop_fibb_badge', -- need badge props repo
	  pos = vec3(0.13, 0.023, -0.04), rot = vec3(-90.0, -180.0, 300.0), bone = 28422 },
	  disable = { move = false, car = false, combat = false },
	  usetime = 5000,
  }
},

['badge_bcso'] = { -- idea: Player uses item to show badge prop
  label = 'BCSO Badge',
  weight = 444,
  consume = 0,
  description = "For official use by BCSO only",
  client = {
	  anim = { dict = 'paper_1_rcm_alt1-8', clip = 'player_one_dual-8', flag = 49 },
	  prop = { model = 'prop_bcso_badge', -- need badge props repo
	  pos = vec3(0.13, 0.023, -0.04), rot = vec3(-90.0, -180.0, 300.0), bone = 28422 },
	  disable = { move = false, car = false, combat = false },
	  usetime = 5000,
  }
},

['badge_lssd'] = { -- idea: Player uses item to show badge prop
  label = 'SASP Badge',
  weight = 444,
  consume = 0,
  description = "For official use by SASP Agents only",
  client = {
	  anim = { dict = 'paper_1_rcm_alt1-8', clip = 'player_one_dual-8', flag = 49 },
	  prop = { model = 'prop_lssd_badge', -- need badge props repo
	  pos = vec3(0.13, 0.023, -0.04), rot = vec3(-90.0, -180.0, 300.0), bone = 28422 },
	  disable = { move = false, car = false, combat = false },
	  usetime = 5000,
  }
},

['badge_lspd'] = { -- idea: Player uses item to show badge prop
  label = 'LSPD Badge',
  weight = 444,
  consume = 0,
  description = "For official use by LSPD  Agents only",
  client = {
	  anim = { dict = 'paper_1_rcm_alt1-8', clip = 'player_one_dual-8', flag = 49 },
	  prop = { model = 'prop_lspd_badge', -- need badge props repo
	  pos = vec3(0.13, 0.023, -0.04), rot = vec3(-90.0, -180.0, 300.0), bone = 28422 },
	  disable = { move = false, car = false, combat = false },
	  usetime = 5000,
  }
},









----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------- 
-- MRE: Meal Ready to Eat
['mre_1'] = { 
  label = 'MRE-001',
  weight = 3500,
  stack = false,
  close = false,
  description = "Contains: Meal, Side, Bread, Dessert",
},

-- Main meals
['mre_chilimac'] = { 
  label = 'MRE - Chili Mac',
  weight = 1250,
  stack = true,
  close = true,
  description = "Meal-ready-to-eat",
  client = {
	  status = { hunger = 250000 },
	  anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	  prop = { model = 'v_res_fa_tincorn', 
	  pos = vec3(-0.01, -0.01, 0.01), rot = vec3(1.0, 5.0, -182.5) },
	  usetime = 7500,
  },
},

['mre_beefstew'] = { 
  label = 'MRE - Beef Stew',
  weight = 1250,
  stack = true,
  close = true,
  description = "Meal-ready-to-eat",
  client = {
	  status = { hunger = 250000 },
	  anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	  prop = { model = 'v_res_fa_tincorn', 
	  pos = vec3(-0.01, -0.01, 0.01), rot = vec3(1.0, 5.0, -182.5) },
	  usetime = 7500,
  },
},

['mre_chkenchilada'] = { 
  label = 'MRE - Chkn Enchiladas',
  weight = 1250,
  stack = true,
  close = true,
  description = "Meal-ready-to-eat",
  client = {
	  status = { hunger = 250000 },
	  anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	  prop = { model = 'v_res_fa_tincorn', 
	  pos = vec3(-0.01, -0.01, 0.01), rot = vec3(1.0, 5.0, -182.5) },
	  usetime = 7500,
  },
},

['mre_veggieomelet'] = { 
  label = 'MRE - Veggie Omelet',
  weight = 1250,
  stack = true,
  close = true,
  description = "Meal-ready-to-eat",
  client = {
	  status = { hunger = 250000 },
	  anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	  prop = { model = 'v_res_fa_tincorn', 
	  pos = vec3(-0.01, -0.01, 0.01), rot = vec3(1.0, 5.0, -182.5) },
	  usetime = 7500,
  },
},

['mre_chknking'] = { 
  label = 'MRE - Chicken-a-la-king',
  weight = 1250,
  stack = true,
  close = true,
  description = "Meal-ready-to-eat",
  client = {
	  status = { hunger = 250000 },
	  anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	  prop = { model = 'v_res_fa_tincorn', 
	  pos = vec3(-0.01, -0.01, 0.01), rot = vec3(1.0, 5.0, -182.5) },
	  usetime = 7500,
  },
},

-- Supp. food
['mre_tmsoup'] = { 
  label = 'MRE Tom. soup',
  weight = 1250,
  stack = true,
  close = true,
  description = "Standard military side soup",
  client = {
	  status = { hunger = 250000 },
	  anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	  prop = { model = 'v_res_fa_tintomsoup', 
	  pos = vec3(-0.01, -0.01, 0.01), rot = vec3(1.0, 5.0, -182.5) },
	  usetime = 7500,
  },
},

['mre_corn'] = { 
  label = 'MRE Canned Corn',
  weight = 1250,
  stack = true,
  close = true,
  description = "Standard military side dish",
  client = {
	  status = { hunger = 250000 },
	  anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	  prop = { model = 'v_res_fa_tincorn', 
	  pos = vec3(-0.01, -0.01, 0.01), rot = vec3(1.0, 5.0, -182.5) },
	  usetime = 7500,
  },
},

['mre_bread'] = { 
  label = 'MRE Bread',
  weight = 1250,
  stack = true,
  close = true,
  description = "Standard military bread",
  client = {
	  status = { hunger = 250000 },
	  anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
	  prop = { model = 'v_res_fa_bread03', 
	  bone = 18905,
	  pos = vec3(0.14, 0.03, 0.01), 
	  rot = vec3(85.0, 70.0, -203.0) },
	  usetime = 7500,
  },
},

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------- 
-- TICKETS: mba events
['mbaticket_lux'] = { 
  label = 'MBA Ticket: Luxury',
  weight = 500,
  stack = false,
  degrade = 2,
  decay = true,
  consume = 1,
  description = "VIP lounge with a kitchen and bar",
},

['mbaticket_dlx'] = { 
  label = 'MBA Ticket: Delux',
  weight = 500,
  stack = false,
  degrade = 2,
  decay = true,
  consume = 1,
  description = "Sit in the upper area for a better view",
},

['mbaticket_std'] = { 
  label = 'MBA Ticket: Standard',
  weight = 500,
  stack = false,
  degrade = 2,
  decay = true,
  consume = 1,
  description = "Standard seating close to the arena",
  
},


----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------- 
-- Trading Cards
['lstradingcard'] = {
label = 'L.S. Lore Card',
weight = 10,
consume = 0,
server = {
  export = 'mi_utils.lstradingcard',
  }
},

['lscardbook_black'] = {
  label = 'Black Card Binder',
  weight = 500,
  consume = 0,
},

['lscardbook_blue'] = {
  label = 'Blue Card Binder',
  weight = 500,
  consume = 0,
},

['lscardbook_green'] = {
  label = 'Green Card Binder',
  weight = 500,
  consume = 0,
},

['lscardbook_yellow'] = {
  label = 'Yellow Card Binder',
  weight = 500,
  consume = 0,
},

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------- 
-- Work Items
['phone_work'] = {
  label = 'Simple Phone',
  weight = 25,
  consume = 0,
},

-- // Business Items // --

['business_tempitem'] = {
  label = "how did you get this?",
  weight = 0,
  stack = true,
  close = true,
  consume = 0,
  server = {
	  export = 'Renewed-Businesses.useItem',
  }
},

-- Kitchen Tools --

['kitchenknife'] = {
  label = 'Kitchen Knife',
  weight = 50,  
  shopType = 'general',
  price = 10,  
},

['cleaver'] = {
  label = 'Meat Cleaver',
  weight = 50,  
  shopType = 'general',
  price = 10,  
},

['blender'] = {
  label = 'Blender',
  weight = 50,  
  shopType = 'general',
  price = 10,  
},

['whisk'] = {
  label = 'Whisks',
  weight = 50,  
  shopType = 'general',
  price = 10,  
},

['slicer'] = {
  label = 'Slicer',
  weight = 50,  
  shopType = 'general',
  price = 10,  
},

['potatopusher'] = {
  label = 'Potato Pusher',
  weight = 50,  
  shopType = 'general',
  price = 10,  
},

['peeler'] = {
  label = 'Peeler',
  weight = 50,  
  shopType = 'general',
  price = 10,  
},

['scooper'] = {
  label = 'Scooper',
  weight = 50,  
  shopType = 'general',
  price = 10,  
},

['grater'] = {
  label = 'Grater',
  weight = 50,  
  shopType = 'general',
  price = 10,  
},

-- Fruit --

['strawberry'] = {
  label = 'Strawberries',
  weight = 50,  
  shopType = 'farmers',
  price = 10,  
},

['cutstrawberry'] = {
  label = 'Cut Strawberries',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  healthy = 3,
	  hunger = 3,
  },
},

['strawberryjuice'] = {
  label = 'Strawberry Juice',
  weight = 50,   
  foodType = 'drink',
  nutrition = {
	  healthy = 3,
	  thirst = 3,
  },
},

['apples'] = {
  label = 'Apples',
  weight = 50,  
  shopType = 'farmers',
  price = 10,  
},

['cutapples'] = {
  label = 'Cut Apples',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  healthy = 3,
	  hunger = 3,
  },
},

['applejuice'] = {
  label = 'Apple Juice',
  weight = 50,   
  foodType = 'drink',
  nutrition = {
	  healthy = 3,
	  thirst = 3,
  },
},

['pickle'] = {
  label = 'Pickles',
  weight = 50,  
  shopType = 'farmers',
  price = 10,  
},

['cutpickle'] = {
  label = 'Cut Pickles',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  healthy = 3,
	  hunger = 3,
  },
},

['pineapple'] = {
  label = 'Pineapples',
  weight = 50,  
  shopType = 'farmers',
  price = 10,  
},

['cutpineapple'] = {
  label = 'Cut Pineapple',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  healthy = 3,
	  hunger = 3,
  },
},

['pineapplejuice'] = {
  label = 'Pineapple Juice',
  weight = 50,   
  foodType = 'drink',
  nutrition = {
	  healthy = 3,
	  thirst = 3,
  },
},

['orange'] = {
  label = 'Oranges',
  weight = 50,  
  shopType = 'farmers',
  price = 10,  
},

['cutorange'] = {
  label = 'Cut Oranges',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  healthy = 3,
	  hunger = 3,
  },
},

['orangejuice'] = {
  label = 'Orange Juice',
  weight = 50,   
  foodType = 'drink',
  nutrition = {
	  healthy = 3,
	  thirst = 3,
  },
},

['blueberry'] = {
  label = 'Blueberries',
  weight = 50,  
  shopType = 'farmers',
  price = 10,  
},

['cutblueberry'] = {
  label = 'Cut Blueberries',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  healthy = 3,
	  hunger = 3,
  },
},

['blueberryjuice'] = {
  label = 'Blueberry Juice',
  weight = 50,   
  foodType = 'drink',
  nutrition = {
	  healthy = 3,
	  thirst = 3,
  },
},

['boba'] = {
  label = 'Boba',
  weight = 50,   
  foodType = 'food',
  shopType = 'farmers',
  price = 10, 
  nutrition = {
	  healthy = 3,
	  hunger = 3,
  },
},

['lime'] = {
  label = 'Limes',
  weight = 50,  
  shopType = 'farmers',
  price = 10,  
},

['cutlime'] = {
  label = 'Cut Limes',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  healthy = 3,
	  hunger = 3,
  },
},

['limejuice'] = {
  label = 'Lime Juice',
  weight = 50,   
  foodType = 'drink',
  nutrition = {
	  healthy = 3,
	  thirst = 3,
  },
},

['banana'] = {
  label = 'Bananas',
  weight = 50,  
  shopType = 'farmers',
  price = 10, 
  nutrition = {
	  healthy = 3,
	  hunger = 3,
  }, 
},

['cutbananas'] = {
  label = 'Cut Bananas',
  weight = 50,   
  foodType = {'food', 'drink'},
  nutrition = {
	  healthy = 3,
	  hunger = 3,
  },
},

['grapes'] = {
  label = 'Grapes',
  weight = 50,  
  shopType = 'farmers',
  price = 10, 
  nutrition = {
	  healthy = 3,
	  hunger = 3,
  }, 
},

['grapejuice'] = {
  label = 'Grape Juice',
  weight = 50,   
  foodType = 'drink',
  nutrition = {
	  healthy = 3,
	  thirst = 3,
  },
},

['lemons'] = {
  label = 'Lemons',
  weight = 50,  
  shopType = 'farmers',
  price = 10, 
},

['lemonjuice'] = {
  label = 'Lemon Juice',
  weight = 50,   
  foodType = 'drink',
  nutrition = {
	  healthy = 3,
	  thirst = 3,
  },
},

['cutlemon'] = {
  label = 'Cut Lemon',
  weight = 50,   
  foodType = 'drink',
  nutrition = {
	  healthy = 3,
	  hunger = 3,
  },
},


['kiwi'] = {
  label = 'Kiwi',
  weight = 50,  
  shopType = 'farmers',
  price = 10, 
},

['cutkiwi'] = {
  label = 'Cut Kiwi',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  healthy = 3,
	  hunger = 3,
  },
},

['cherry'] = {
  label = 'Cherries',
  weight = 50,  
  shopType = 'farmers',
  price = 10, 
  nutrition = {
	  healthy = 3,
	  hunger = 3,
  },
},

['cherryjuice'] = {
  label = 'Cherry Juice',
  weight = 50,   
  foodType = 'drink',
  nutrition = {
	  healthy = 3,
	  thirst = 3,
  },
},

['lettuce'] = {
  label = 'Lettuce Head',
  weight = 50,  
  shopType = 'farmers',
  price = 10, 
},

['choplettuce'] = {
  label = 'Chopped Lettuce',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  healthy = 3,
	  hunger = 3,
  },
},

['tomato'] = {
  label = 'Tomatos',
  weight = 50,  
  shopType = 'farmers',
  price = 10, 
},

['choptomato'] = {
  label = 'Chopped Tomato',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  healthy = 3,
	  hunger = 3,
  },
},

['slicedtomato'] = {
  label = 'Tomato Slices',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  healthy = 3,
	  hunger = 3,
  },
},

['potatoes'] = {
  label = 'Potatoes',
  weight = 50,  
  shopType = 'farmers',
  price = 10, 
},

['potatoslice'] = {
  label = 'Sliced Potatoes',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  healthy = 3,
	  salt = 2,
	  hunger = 3,
  },
},

['potatoskins'] = {
  label = 'Potato Skins',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  healthy = 3,
	  salt = 2,
	  hunger = 3,
  },
},

['choppotato'] = {
  label = 'Chopped Potatoes',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  healthy = 3,
	  salt = 2,
	  hunger = 3,
  },
},

['squash'] = {
  label = 'Squash',
  weight = 50,  
  shopType = 'farmers',
  price = 10, 
},

['chopsquash'] = {
  label = 'Chopped Squash',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  healthy = 3,
	  hunger = 3,
  },
},

['spinach'] = {
  label = 'Spinach',
  weight = 50,  
  shopType = 'farmers',
  price = 10, 
},

['chopspinach'] = {
  label = 'Chopped Spinach',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  healthy = 3,
	  hunger = 3,
  },
},

['celery'] = {
  label = 'Celery',
  weight = 50,  
  shopType = 'farmers',
  price = 10, 
},

['chopcelery'] = {
  label = 'Chopped Celery',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  healthy = 3,
	  hunger = 3,
  },
},

['redpeppers'] = {
  label = 'Red Peppers',
  weight = 50,  
  shopType = 'farmers',
  price = 10, 
},

['slicedredpepper'] = {
  label = 'Sliced Red Pepper',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  healthy = 3,
	  hunger = 3,
  },
},

['chopredpepper'] = {
  label = 'Chopped Red Pepper',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  healthy = 3,
	  hunger = 3,
  },
},

['greenpeppers'] = {
  label = 'Green Peppers',
  weight = 50,  
  shopType = 'farmers',
  price = 10, 
},

['slicedgreenpepper'] = {
  label = 'Sliced Green Pepper',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  healthy = 3,
	  hunger = 3,
  },
},

['chopgreenpepper'] = {
  label = 'Chopped Green Pepper',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  healthy = 3,
	  hunger = 3,
  },
},

['hotpepper'] = {
  label = 'Jalapeno Peppers',
  weight = 50,  
  shopType = 'farmers',
  price = 10, 
},

['chophotpepper'] = {
  label = 'Chopped Jalapeno Pepper',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  healthy = 3,
	  hunger = 3,
  },
},

['carrots'] = {
  label = 'Carrots',
  weight = 50,  
  shopType = 'farmers',
  price = 10, 
},

['chopcarrots'] = {
  label = 'Chopped Carrots',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  healthy = 3,
	  hunger = 3,
  },
},

['cucumbers'] = {
  label = 'Cucumbers',
  weight = 50,  
  shopType = 'farmers',
  price = 10, 
},

['chopcucumbers'] = {
  label = 'Chopped Cucumbers',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  healthy = 3,
	  hunger = 3,
  },
},

['peas'] = {
  label = 'Peas',
  weight = 50,  
  shopType = 'farmers',
  price = 10, 
  nutrition = {
	  healthy = 3,
	  hunger = 3,
  },
},

['greenbeans'] = {
  label = 'Grean Beans',
  weight = 50,  
  shopType = 'farmers',
  price = 10, 
  nutrition = {
	  healthy = 3,
	  hunger = 3,
  },
},

['corn'] = {
  label = 'Corn',
  weight = 50,  
  shopType = 'farmers',
  price = 10, 
  nutrition = {
	  healthy = 3,
	  hunger = 3,
  },
},

['cobcorn'] = {
  label = 'Corn on the Cob',
  weight = 50,  
  shopType = 'farmers',
  price = 10, 
  nutrition = {
	  healthy = 3,
	  hunger = 3,
  },
},

['broccoli'] = {
  label = 'Broccoli',
  weight = 50,  
  shopType = 'farmers',
  price = 10, 
},

['chopbroccoli'] = {
  label = 'Chopped Broccoli',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  healthy = 3,
	  hunger = 3,
  },
},

-- // Dairy // --

['milk'] = {
  label = 'Milk',
  weight = 50,   
  shopType = 'dairy',
  price = 10, 
  foodType = {'food', 'drink'},
  nutrition = {
	  dairy = 3,
	  thirst = 3,
  },
},

['eggs'] = {
  label = 'Eggs',
  weight = 50,   
  shopType = 'dairy',
  price = 10, 
  foodType = 'food',
  nutrition = {
	  dairy = 3,
	  protein = 2,
	  hunger = 3,
  },
},

['butter'] = {
  label = 'Butter',
  weight = 50,   
  shopType = 'dairy',
  price = 10, 
  foodType = 'food',
  nutrition = {
	  dairy = 3,
	  hunger = 3,
  },
},

['condensedmilk'] = {
  label = 'Condensed Milk',
  weight = 50,   
  shopType = 'dairy',
  price = 10, 
  foodType = 'food',
  nutrition = {
	  dairy = 3,
	  hunger = 3,
  },
},

['yogurt'] = {
  label = 'Yogurt',
  weight = 50,   
  shopType = 'dairy',
  price = 10, 
  foodType = {'food', 'drink'},
  nutrition = {
	  dairy = 3,
	  hunger = 3,
	  thirst = 2,
  },
},

['mozzarella'] = {
  label = 'Mozzarella Cheese',
  weight = 50,   
  shopType = 'dairy',
  price = 10, 
  foodType = 'food',
},

['cubemozzarella'] = {
  label = 'Cubbed Mozzarella Cheese',
  weight = 50,    
  foodType = 'food',
  nutrition = {
	  dairy = 3,
	  hunger = 3,
  },
},

['stringmozzarella'] = {
  label = 'String Mozzarella Cheese',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  dairy = 3,
	  hunger = 3,
  },
},

['provolone'] = {
  label = 'Provolone Cheese',
  weight = 50,   
  shopType = 'dairy',
  price = 10, 
  foodType = 'food',
},

['cubeprovolone'] = {
  label = 'Cubbed Provolone Cheese',
  weight = 50,    
  foodType = 'food',
  nutrition = {
	  dairy = 3,
	  hunger = 3,
  },
},

['stringprovolone'] = {
  label = 'String Provolone Cheese',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  dairy = 3,
	  hunger = 3,
  },
},

['cheddar'] = {
  label = 'Cheddar Cheese',
  weight = 50,   
  shopType = 'dairy',
  price = 10, 
  foodType = 'food',
},

['cubecheddar'] = {
  label = 'Cubbed Cheddar Cheese',
  weight = 50,    
  foodType = 'food',
  nutrition = {
	  dairy = 3,
	  hunger = 3,
  },
},

['stringcheddar'] = {
  label = 'String Cheddar Cheese',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  dairy = 3,
	  hunger = 3,
  },
},

['bluecheese'] = {
  label = 'Blue Cheese',
  weight = 50,   
  shopType = 'dairy',
  price = 10, 
  foodType = 'food',
  nutrition = {
	  dairy = 3,
	  hunger = 3,
  },
},

['parmesan'] = {
  label = 'Parmesan Cheese',
  weight = 50,   
  shopType = 'dairy',
  price = 10, 
},

['parmesanflakes'] = {
  label = 'Parmesan Flakes',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  dairy = 3,
	  hunger = 3,
  },
},

['ricotta'] = {
  label = 'Ricotta Cheese',
  weight = 50,   
  shopType = 'dairy',
  price = 10, 
  foodType = 'food',
  nutrition = {
	  dairy = 3,
	  hunger = 3,
  },
},

['creamcheese'] = {
  label = 'Cream Cheese',
  weight = 50,   
  shopType = 'dairy',
  price = 10, 
  foodType = 'food',
  nutrition = {
	  dairy = 3,
	  hunger = 3,
  },
},

['gouda'] = {
  label = 'Cream Cheese',
  weight = 50,   
  shopType = 'dairy',
  price = 10, 
  foodType = 'food',
  nutrition = {
	  dairy = 3,
	  hunger = 3,
  },
},

['cottagecheese'] = {
  label = 'Cottage Cheese',
  weight = 50,   
  shopType = 'dairy',
  price = 10, 
  foodType = 'food',
  nutrition = {
	  dairy = 3,
	  hunger = 3,
  },
},

['swiss'] = {
  label = 'Swiss Cheese',
  weight = 50,   
  shopType = 'dairy',
  price = 10, 
  foodType = 'food',
  nutrition = {
	  dairy = 3,
	  hunger = 3,
  },
},

['icecream'] = {
  label = 'Ice Cream',
  weight = 50,   
  shopType = 'dairy',
  price = 10, 
  foodType = {'food', 'drink'},
  nutrition = {
	  dairy = 3,
	  hunger = 3,
  },
},

-- // Meat // --


['bologna'] = {
  label = 'Bologna',
  weight = 50,   
  shopType = 'butcher',
  price = 10, 
  foodType = 'food',
},


['slicedbologna'] = {
  label = 'Sliced Bologna',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  protein = 3,
	  hunger = 5,
  },
},

['wholeham'] = {
  label = 'Whole Ham',
  weight = 50,   
  shopType = 'butcher',
  price = 10, 
  foodType = 'food',
},

['bacon'] = {
  label = 'Bacon Strips',
  weight = 50,   
  foodType = 'food',
  shopType = 'butcher',
  price = 10,
  nutrition = {
	  protein = 3,
	  hunger = 5,
  },
},

['baconbits'] = {
  label = 'Bacon Bits',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  protein = 3,
	  hunger = 5,
  },
},

['meatslab'] = {
  label = 'Slab of Meat',
  weight = 50,   
  shopType = 'butcher',
  price = 10, 
  foodType = 'food',
},

['nystrip'] = {
  label = 'Raw NY Stip',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  protein = 4,
	  hunger = 8,
  },
},

['filet'] = {
  label = 'Raw Beef Tenderloin',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  protein = 3,
	  hunger = 7,
  },
},

['ribs'] = {
  label = 'Ribs',
  weight = 50,   
  shopType = 'butcher',
  price = 10, 
  foodType = 'food',
  nutrition = {
	  protein = 4,
	  hunger = 8,
  },
},

['hotdog'] = {
  label = 'Hotdogs',
  weight = 50,   
  shopType = 'butcher',
  price = 10, 
  foodType = 'food',
  nutrition = {
	  protein = 3,
	  hunger = 4,
  },
},

['roastbeef'] = {
  label = 'Roast Beef',
  weight = 50,   
  shopType = 'butcher',
  price = 10, 
  foodType = 'food',
  nutrition = {
	  protein = 4,
	  hunger = 6,
  },
},

['slicedham'] = {
  label = 'Sliced Ham',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  protein = 3,
	  hunger = 6,
  },
},

['dicedham'] = {
  label = 'Diced Ham',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  protein = 3,
	  hunger = 4,
  },
},

['frozennuggets'] = {
  label = 'Frozen Nuggets',
  weight = 50,  
  shopType = 'butcher',
  price = 10,  
  foodType = 'food',
  nutrition = {
	  protein = 3,
	  hunger = 6,
  },
},

['frozenchickenpatty'] = {
  label = 'Frozen Chicken Patty',
  weight = 50,  
  shopType = 'butcher',
  price = 10,  
  foodType = 'food',
  nutrition = {
	  protein = 4,
	  hunger = 5,
  },
},

['frozenbeefpatty'] = {
  label = 'Beef Patty',
  weight = 50,  
  shopType = 'butcher',
  price = 10,   
  foodType = 'food',
  nutrition = {
	  protein = 4,
	  hunger = 6,
  },
},

['pepperoni'] = {
  label = 'Pepperoni',
  weight = 50,  
  shopType = 'butcher',
  price = 10,   
  foodType = 'food',
  nutrition = {
	  protein = 3,
	  hunger = 4,
  },
},

['packagedchicken'] = {
  label = 'Packaged Chicken',
  weight = 50,  
  shopType = 'butcher',
  price = 10,   
  foodType = 'food',
},

['venison'] = {
  label = 'Hunting Meat',
  weight = 50,  
  foodType = 'food',
  nutrition = {
	  protein = 6,
	  hunger = 13,
  },
},

['chickenstrips'] = {
  label = 'Chicken Strips',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  protein = 3,
	  hunger = 4,
  },
},

['chickenwings'] = {
  label = 'Chicken Wings',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  protein = 4,
	  hunger = 5,
  },
},

['catfishfilet'] = {
  label = 'Catfish Filet',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  protein = 3,
	  hunger = 7,
  },
},

['redfishfilet'] = {
  label = 'Redfish Filet',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  protein = 3,
	  hunger = 7,
  },
},

['salomfilet'] = {
  label = 'Salmon Filet',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  protein = 3,
	  hunger = 6,
  },
},

['tunafilet'] = {
  label = 'Tuna Filet',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  protein = 3,
	  hunger = 8,
  },
},

['stripedbassfilet'] = {
  label = 'Stripped Bass Filet',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  protein = 3,
	  hunger = 5,
  },
},

['rawsquid'] = {
  label = 'Raw Squid',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  protein = 3,
	  hunger = 4,
  },
},

-- // Bread/Carbs  // -- 

['breadloaf'] = {
  label = 'Bread Loaf',
  weight = 50,   
  foodType = 'food',
  shopType = 'bakery',
  price = 10, 
},

['flour'] = {
  label = 'Flour',
  weight = 50,   
  foodType = 'food',
  shopType = 'bakery',
  price = 10, 
},

['hotdogbun'] = {
  label = 'Hot Dog Buns',
  weight = 50,  
  shopType = 'bakery',
  price = 10,   
  foodType = 'food',
  nutrition = {
	  carbs = 4,
	  hunger = 3,
  },
},

['burgerbuns'] = {
  label = 'Burger Buns',
  weight = 50,  
  shopType = 'bakery',
  price = 10,   
  foodType = 'food',
  nutrition = {
	  carbs = 4,
	  hunger = 4,
  },
},

['flatbread'] = {
  label = 'Flat Bread',
  weight = 50,  
  shopType = 'bakery',
  price = 10,   
  foodType = 'food',
  nutrition = {
	  carbs = 4,
	  hunger = 3,
  },
},

['bagel'] = {
  label = 'Bagel',
  weight = 50,  
  shopType = 'bakery',
  price = 10,   
  foodType = 'food',
  nutrition = {
	  carbs = 4,
	  hunger = 3,
  },
},

['pizzadough'] = {
  label = 'Yeast',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  carbs = 2,
	  hunger = 6,
  }, 
},

['sandwichbread'] = {
  label = 'Sandwich Bread',
  weight = 50,   
  foodType = 'food',
  nutrition = {
	  carbs = 3,
	  hunger = 2,
  }, 
},

['fettuccine'] = {
  label = 'Fettuccine Noodles',
  weight = 50,  
  shopType = 'bakery',
  price = 10,   
  foodType = 'food',
  nutrition = {
	  carbs = 5,
	  hunger = 4,
  },
},

['spaghetti'] = {
  label = 'Spaghetti Noodles',
  weight = 50,  
  shopType = 'bakery',
  price = 10,   
  foodType = 'food',
  nutrition = {
	  carbs = 5,
	  hunger = 4,
  },
},

['tortellini'] = {
  label = 'Tortellini Noodles',
  weight = 50,  
  shopType = 'bakery',
  price = 10,   
  foodType = 'food',
  nutrition = {
	  carbs = 5,
	  hunger = 4,
  },
},

['linguine'] = {
  label = 'Linguine Noodles',
  weight = 50,  
  shopType = 'bakery',
  price = 10,   
  foodType = 'food',
  nutrition = {
	  carbs = 5,
	  hunger = 4,
  },
},

['lasagna'] = {
  label = 'Lasagna Noodles',
  weight = 50,  
  shopType = 'bakery',
  price = 10,   
  foodType = 'food',
  nutrition = {
	  carbs = 5,
	  hunger = 4,
  },
},

['macaroni'] = {
  label = 'Macaroni Noodles',
  weight = 50,  
  shopType = 'bakery',
  price = 10,   
  foodType = 'food',
  nutrition = {
	  carbs = 4,
	  hunger = 5,
  },
},

['rigatoni'] = {
  label = 'Macaroni Noodles',
  weight = 50,  
  shopType = 'bakery',
  price = 10,   
  foodType = 'food',
  nutrition = {
	  carbs = 4,
	  hunger = 5,
  },
},

['ramen'] = {
  label = 'Ramen Noodles',
  weight = 50,  
  shopType = 'bakery',
  price = 10,   
  foodType = 'food',
  nutrition = {
	  carbs = 4,
	  hunger = 3,
  },
},

['rice'] = {
  label = 'Rice',
  weight = 50,  
  shopType = 'bakery',
  price = 10,   
  foodType = 'food',
  nutrition = {
	  carbs = 4,
	  hunger = 4,
  },
},

-- // General Market // --

['coffeebean'] = {
  label = 'Coffee Beans',
  weight = 50,  
  shopType = 'general',
  price = 10,   
  foodType = 'food',
  nutrition = {
	  sugar = 4,
	  thirst = 5,
	  seasoning = 2,
  },
},

['ketchup'] = {
  label = 'Ketchup',
  weight = 50,  
  shopType = 'general',
  price = 10,   
  foodType = 'food',
  nutrition = {
	  hunger = 2,
	  seasoning = 2,
  },
},

['mustard'] = {
  label = 'Mustard',
  weight = 50,  
  shopType = 'general',
  price = 10,   
  foodType = 'food',
  nutrition = {
	  hunger = 2,
	  seasoning = 2,
  },
},

['bbqsauce'] = {
  label = 'BBQ Sauce',
  weight = 50,  
  shopType = 'general',
  price = 10,   
  foodType = 'food',
  nutrition = {
	  hunger = 2,
	  seasoning = 4,
  },
},

['mint'] = {
  label = 'Mint',
  weight = 50,  
  shopType = 'general',
  price = 10,   
  foodType = 'food',
  nutrition = {
	  hunger = 2,
	  seasoning = 3,
  },
},

['sauce'] = {
  label = 'Generic Sauce',
  weight = 50,  
  shopType = 'general',
  price = 10,   
  foodType = 'food',
  nutrition = {
	  hunger = 3,
	  seasoning = 2,
  },
},

['chips'] = {
  label = 'Potato Chips',
  weight = 50,  
  shopType = 'general',
  price = 10,   
  foodType = 'food',
  nutrition = {
	  hunger = 3,
  },
},

['chocolatecandies'] = {
  label = 'Chocolate Candy',
  weight = 50,  
  shopType = 'general',
  price = 10,   
  foodType = 'food',
  nutrition = {
	  sugar = 3,
	  seasoning = 1,
	  hunger = 1,
  },
},

['chocolatesyrup'] = {
  label = 'Chocolate Syrup',
  weight = 50,  
  shopType = 'general',
  price = 10,   
  foodType = 'food',
  nutrition = {
	  sugar = 3,
	  seasoning = 1,
	  hunger = 1,
  },
},

['sprinkles'] = {
  label = 'Assorted Sprinkles',
  weight = 50,  
  shopType = 'general',
  price = 10,   
  foodType = 'food',
  nutrition = {
	  sugar = 2,
	  seasoning = 1,
	  hunger = 1,
  },
},

['candy'] = {
  label = 'Assorted Candies',
  weight = 50,  
  shopType = 'general',
  price = 10,   
  foodType = 'food',
  nutrition = {
	  sugar = 2,
	  seasoning = 1,
	  hunger = 1,
  },
},

['sugar'] = {
  label = 'Sugar',
  weight = 50,  
  shopType = 'general',
  price = 10,   
  foodType = 'food',
  nutrition = {
	  sugar = 2,
	  seasoning = 2,
	  hunger = 1,
  },
},

['brownsugar'] = {
  label = 'Brown Sugar',
  weight = 50,  
  shopType = 'general',
  price = 10,   
  foodType = 'food',
  nutrition = {
	  sugar = 2,
	  seasoning = 2,
	  hunger = 1,
  },
},


['salt'] = {
  label = 'Salt',
  weight = 50,  
  shopType = 'general',
  price = 10,   
  foodType = 'food',
  nutrition = {
	  seasoning = 2,
	  hunger = 1,
  },
},

['pepper'] = {
  label = 'Pepper',
  weight = 50,  
  shopType = 'general',
  price = 10,   
  foodType = 'food',
  nutrition = {
	  seasoning = 2,
	  hunger = 1,
  },
},

['basil'] = {
  label = 'Basil',
  weight = 50,  
  shopType = 'general',
  price = 10,   
  foodType = 'food',
  nutrition = {
	  seasoning = 2,
	  hunger = 1,
  },
},

['chilipowder'] = {
  label = 'Chili Powder',
  weight = 50,  
  shopType = 'general',
  price = 10,   
  foodType = 'food',
  nutrition = {
	  seasoning = 3,
	  hunger = 1,
  },
},

['cinnamon'] = {
  label = 'Cinnamon',
  weight = 50,  
  shopType = 'general',
  price = 10,   
  foodType = 'food',
  nutrition = {
	  seasoning = 3,
	  hunger = 1,
  },
},

['garlicpowder'] = {
  label = 'Garlic Powder',
  weight = 50,  
  shopType = 'general',
  price = 10,   
  foodType = 'food',
  nutrition = {
	  seasoning = 3,
	  hunger = 1,
  },
},

['lemonpeper'] = {
  label = 'Lemon Pepper',
  weight = 50,  
  shopType = 'general',
  price = 10,   
  foodType = 'food',
  nutrition = {
	  seasoning = 4,
	  hunger = 1,
  },
},

['nutmeg'] = {
  label = 'Nutmeg',
  weight = 50,  
  shopType = 'general',
  price = 10,   
  foodType = 'food',
  nutrition = {
	  seasoning = 2,
	  hunger = 1,
  },
},

['onionpowder'] = {
  label = 'Onion Powder',
  weight = 50,  
  shopType = 'general',
  price = 10,   
  foodType = 'food',
  nutrition = {
	  seasoning = 1,
	  hunger = 1,
  },
},

['oregano'] = {
  label = 'Oregano',
  weight = 50,  
  shopType = 'general',
  price = 10,   
  foodType = 'food',
  nutrition = {
	  seasoning = 3,
	  hunger = 1,
  },
},

['paprika'] = {
  label = 'Paprika',
  weight = 50,  
  shopType = 'general',
  price = 10,   
  foodType = 'food',
  nutrition = {
	  seasoning = 2,
	  hunger = 1,
  },
},

['pepperflakes'] = {
  label = 'Red Pepper Flakes',
  weight = 50,  
  shopType = 'general',
  price = 10,   
  foodType = 'food',
  nutrition = {
	  seasoning = 3,
	  hunger = 1,
  },
},

['thyme'] = {
  label = 'Thyme',
  weight = 50,  
  shopType = 'general',
  price = 10,   
  foodType = 'food',
  nutrition = {
	  seasoning = 1,
	  hunger = 1,
  },
},

['curry'] = {
  label = 'Curry',
  weight = 50,  
  shopType = 'general',
  price = 10,   
  foodType = 'food',
  nutrition = {
	  seasoning = 2,
	  hunger = 1,
  },
},



-- // Alchol // -- 

['gin'] = {
  label = 'Gin',
  weight = 50,  
  shopType = 'general',
  price = 10,   
  foodType = 'drink',
  nutrition = {
	  alcohol = 5,
	  thirst = 3,
  },
},

['vodka'] = {
  label = 'Vodka',
  weight = 50,  
  shopType = 'general',
  price = 10,   
  foodType = 'drink',
  nutrition = {
	  alcohol = 5,
	  thirst = 3,
  },
},

['whiskey'] = {
  label = 'Whiskey',
  weight = 50,  
  shopType = 'general',
  price = 10,   
  foodType = 'drink',
  nutrition = {
	  alcohol = 5,
	  thirst = 3,
  },
},

['cognac'] = {
  label = 'Cognac',
  weight = 50,  
  shopType = 'general',
  price = 10,   
  foodType = 'drink',
  nutrition = {
	  alcohol = 5,
	  thirst = 3,
  },
},

['rum'] = {
  label = 'Rum',
  weight = 50,  
  shopType = 'general',
  price = 10,   
  foodType = 'drink',
  nutrition = {
	  alcohol = 5,
	  thirst = 3,
  },
},

['olives'] = {
  label = 'Olives',
  weight = 50,  
  shopType = 'general',
  price = 10,   
  foodType = {'food', 'drink'},
  nutrition = {
	  alcohol = 5,
	  thirst = 3,
	  hunger = 2
  },
},

['tonic'] = {
  label = 'Tonic',
  weight = 50,  
  shopType = 'general',
  price = 10,   
  foodType = 'drink',
  nutrition = {
	  alcohol = 5,
	  thirst = 3,
  },
},

['carbonatedwater'] = {
  label = 'Cabonated Water',
  weight = 50,  
  shopType = 'general',
  price = 10,   
  foodType = 'drink',
  nutrition = {
	  thirst = 7,
  },
},

-- Up N Atom

['baconroll'] = { -- A simple sandwich for a simple day
  label = 'Bacon Roll',
  weight = 350,
  stack = true,
  close = true,
  description = "",
  client = {
	  status = { hunger = 200000 },
	  anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
	  prop = { model = 'prop_sandwich_01', 
	  pos = vec3(0.05, -0.02, -0.03), rot = vec3(150.0, 340.0, 170.0) },
	  usetime = 7500,
  },
},
['baconeggtoast'] = { -- A simple sandwich for a simple day
  label = 'Bacon and Egg on Toast',
  weight = 350,
  stack = true,
  close = true,
  description = "",
  client = {
	  status = { hunger = 200000 },
	  anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
	  prop = { model = 'prop_sandwich_01', 
	  pos = vec3(0.05, -0.02, -0.03), rot = vec3(150.0, 340.0, 170.0) },
	  usetime = 7500,
  },
},
['frenchtoast'] = { -- A simple sandwich for a simple day
  label = 'French Toast',
  weight = 350,
  stack = true,
  close = true,
  description = "",
  client = {
	  status = { hunger = 200000 },
	  anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
	  prop = { model = 'prop_sandwich_01', 
	  pos = vec3(0.05, -0.02, -0.03), rot = vec3(150.0, 340.0, 170.0) },
	  usetime = 7500,
  },
},
['frenchtoastbacon'] = { -- A simple sandwich for a simple day
  label = 'French Toast with Bacon',
  weight = 350,
  stack = true,
  close = true,
  description = "",
  client = {
	  status = { hunger = 200000 },
	  anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
	  prop = { model = 'prop_sandwich_01', 
	  pos = vec3(0.05, -0.02, -0.03), rot = vec3(150.0, 340.0, 170.0) },
	  usetime = 7500,
  },
},
-- BURGERS
['atomburger'] = { -- A simple sandwich for a simple day
  label = 'Atomic Burger',
  weight = 350,
  stack = true,
  close = true,
  description = "",
  client = {
	  status = { hunger = 200000 },
	  anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
	  prop = { model = 'prop_sandwich_01', 
	  pos = vec3(0.05, -0.02, -0.03), rot = vec3(150.0, 340.0, 170.0) },
	  usetime = 7500,
  },
},
['dblatomburger'] = { -- A simple sandwich for a simple day
  label = 'Atomic Burger but Doubled',
  weight = 350,
  stack = true,
  close = true,
  description = "",
  client = {
	  status = { hunger = 200000 },
	  anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
	  prop = { model = 'prop_sandwich_01', 
	  pos = vec3(0.05, -0.02, -0.03), rot = vec3(150.0, 340.0, 170.0) },
	  usetime = 7500,
  },
},
['atomburgerbcn'] = { -- A simple sandwich for a simple day
  label = 'Atomic Burger with Bacon',
  weight = 350,
  stack = true,
  close = true,
  description = "",
  client = {
	  status = { hunger = 200000 },
	  anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
	  prop = { model = 'prop_sandwich_01', 
	  pos = vec3(0.05, -0.02, -0.03), rot = vec3(150.0, 340.0, 170.0) },
	  usetime = 7500,
  },
},
['atomicsandwich'] = { -- A simple sandwich for a simple day
  label = 'Atomic Sandwich',
  weight = 350,
  stack = true,
  close = true,
  description = "",
  client = {
	  status = { hunger = 200000 },
	  anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
	  prop = { model = 'prop_sandwich_01', 
	  pos = vec3(0.05, -0.02, -0.03), rot = vec3(150.0, 340.0, 170.0) },
	  usetime = 7500,
  },
},
['chickenatomburger'] = { -- A simple sandwich for a simple day
  label = 'Atomic Chicken Burger',
  weight = 350,
  stack = true,
  close = true,
  description = "",
  client = {
	  status = { hunger = 200000 },
	  anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
	  prop = { model = 'prop_sandwich_01', 
	  pos = vec3(0.05, -0.02, -0.03), rot = vec3(150.0, 340.0, 170.0) },
	  usetime = 7500,
  },
},
['dblchickenatomburger'] = { -- A simple sandwich for a simple day
  label = 'Atomic Chicken Burger but Double',
  weight = 350,
  stack = true,
  close = true,
  description = "",
  client = {
	  status = { hunger = 200000 },
	  anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
	  prop = { model = 'prop_sandwich_01', 
	  pos = vec3(0.05, -0.02, -0.03), rot = vec3(150.0, 340.0, 170.0) },
	  usetime = 7500,
  },
},
['chickensandwich'] = { -- A simple sandwich for a simple day
  label = 'Chicken Sandwich',
  weight = 350,
  stack = true,
  close = true,
  description = "",
  client = {
	  status = { hunger = 200000 },
	  anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
	  prop = { model = 'prop_sandwich_01', 
	  pos = vec3(0.05, -0.02, -0.03), rot = vec3(150.0, 340.0, 170.0) },
	  usetime = 7500,
  },
},
['chickensalad'] = { -- A simple sandwich for a simple day
  label = 'Chicken Salad',
  weight = 350,
  stack = true,
  close = true,
  description = "",
  client = {
	  status = { hunger = 200000 },
	  anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
	  prop = { model = 'prop_sandwich_01', 
	  pos = vec3(0.05, -0.02, -0.03), rot = vec3(150.0, 340.0, 170.0) },
	  usetime = 7500,
  },
},
['packofsixnuggets'] = { -- A simple sandwich for a simple day
  label = 'Chicken Nuggies',
  weight = 350,
  stack = true,
  close = true,
  description = "6 Pack",
  client = {
    status = { hunger = 200000 },
    anim = { dict = 'bzzz_fastfood_anim2', clip = 'anim2' },

    prop = { model = 'bzzz_prop_fastfood_nugget_b',
    bone = 60309,
    pos = vec3(0.15, 0.02, 0.02),
    rot = vec3(30.0, 35.0, 134.0) },

    propTwo = { model = 'bzzz_prop_fastfood_nugget_a',
    bone = 28422,
    pos = vec3(0.08, 0.05, -0.04),
    rot = vec3(13.0, 50.0, 124.0) },

    usetime = 6000,
  },
},
['fries'] = { -- A simple sandwich for a simple day
  label = 'Fries',
  weight = 350,
  stack = true,
  close = true,
  description = "",
  client = {
	  status = { hunger = 200000 },
    anim = { dict = 'bzzz_fastfood_anim1', clip = 'anim1' },

    prop = { model = 'bzzz_prop_fastfood_fries_b',
    bone = 60309,
    pos = vec3(0.09, 0.04, 0.05),
    rot = vec3(-80.0, 50.0, 0.0) },

    propTwo = { model = 'bzzz_prop_fastfood_fries_c',
    bone = 28422,
    pos = vec3(0.07, 0.04, -0.03),
    rot = vec3(-100.0, -40.0, -30.0) },

    usetime = 5000,
  },
},
-- DRINKS

['emptysodacup'] = { -- A simple sandwich for a simple day
  label = 'Empty Soda Cup',
  weight = 150,
  stack = true,
  close = true,
  description = "",
},

['cup_hercules'] = { -- A simple sandwich for a simple day
  label = 'Hercules Cup',
  weight = 350,
  stack = true,
  close = true,
  description = "",
  client = {
    status = { thirst = 200000 },
    anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
    prop = { model = `bzzz_prop_fastfood_drink_a`, pos = vec3(0.02, 0.00, -0.01), rot = vec3(0.0, 0.0, 0.0) },
	  usetime = 7500,
  },
},

['cup_orangotang'] = { -- A simple sandwich for a simple day
  label = 'Orangotang Cup',
  weight = 350,
  stack = true,
  close = true,
  description = "",
  client = {
    status = { thirst = 200000 },
    anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
    prop = { model = `bzzz_prop_fastfood_drink_a`, pos = vec3(0.02, 0.00, -0.01), rot = vec3(0.0, 0.0, 0.0) },
	  usetime = 7500,
  },
},

['cup_sprunk'] = { -- A simple sandwich for a simple day
  label = 'Sprunk Cup',
  weight = 350,
  stack = true,
  close = true,
  description = "",
  client = {
    status = { thirst = 200000 },
    anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
    prop = { model = `bzzz_prop_fastfood_drink_a`, pos = vec3(0.02, 0.00, -0.01), rot = vec3(0.0, 0.0, 0.0) },
	  usetime = 7500,
  },
},

['cup_ecola'] = { -- A simple sandwich for a simple day
  label = 'eCola Cup',
  weight = 350,
  stack = true,
  close = true,
  description = "",
  client = {
    status = { thirst = 200000 },
    anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
    prop = { model = `bzzz_prop_fastfood_drink_a`, pos = vec3(0.02, 0.00, -0.01), rot = vec3(0.0, 0.0, 0.0) },
	  usetime = 7500,
  },
},

-- RM Heist

['big_bomb'] = {
  label = 'Big Bomb',
  weight = 1160,
},
['rope'] = {
  label = 'Rope',
  description = 'Plain rope',
  weight = 1160,
},
['hack_usb'] = {
  label = 'Hack USB',
  weight = 160,
},

-- PRISON LIFE
["metalbar"] = {
	  label = "Metal Bar",
	  weight = 100,
	  stack = true,
	  close = true,
	  description = "A Metal Bar",
	  client = {
		  image = "metalbar.png"
	  }
  },
  ["metalplate"] = {
	  label = "Metal Plate",
	  weight = 100,
	  stack = true,
	  close = true,
	  description = "A Metal Plate",
	  client = {
		  image = "metalplate.png"
	  }
  },
  ["licenseplate"] = {
	  label = "License Plate",
	  weight = 100,
	  stack = true,
	  close = true,
	  description = "A License Plate",
	  client = {
		  image = "licenseplate.png"
	  }
  },
  ["woodlog"] = {
	  label = "Wood Log",
	  weight = 100,
	  stack = true,
	  close = true,
	  description = "A Wood Log",
	  client = {
		  image = "woodlog.png"
	  }
  },
  ["woodplank"] = {
	  label = "Wood Plank",
	  weight = 100,
	  stack = true,
	  close = true,
	  description = "A Wood Plank",
	  client = {
		  image = "woodplank.png"
	  }
  },
  ["wooden_chair"] = {
	  label = "Wooden Chair",
	  weight = 100,
	  stack = true,
	  close = true,
	  description = "A Wooden Chair",
	  client = {
		  image = "wooden_chair.png"
	  }
  },
  ["wooden_table"] = {
	  label = "Wooden Table",
	  weight = 100,
	  stack = true,
	  close = true,
	  description = "A Wooden Table",
	  client = {
		  image = "wooden_table.png"
	  }
  },
  ["wooden_storage_box"] = {
	  label = "Wooden Storage Box",
	  weight = 100,
	  stack = true,
	  close = true,
	  description = "A Wooden Storage Box",
	  client = {
		  image = "wooden_storage_box.png"
	  }
  },
  ["prison_jump_suit_clean_folded"] = {
	  label = "Clean Folded Prison Jumpsuit",
	  weight = 100,
	  stack = true,
	  close = true,
	  description = "A Clean Folded Prison Jumpsuit",
	  client = {
		  image = "prison_jump_suit_clean_folded.png"
	  }
  },
  ["prison_jump_suit_clean"] = {
	  label = "Clean Prison Jumpsuit",
	  weight = 100,
	  stack = true,
	  close = true,
	  description = "A Clean Prison Jumpsuit",
	  client = {
		  image = "prison_jump_suit_clean.png"
	  }
  },
  ["prison_jump_suit_wet"] = {
	  label = "Wet Prison Jumpsuit",
	  weight = 100,
	  stack = true,
	  close = true,
	  description = "A Wet Prison Jumpsuit",
	  client = {
		  image = "prison_jump_suit_wet.png"
	  }
  },
  ["prison_jump_suit_dirty"] = {
	  label = "Dirty Prison Jumpsuit",
	  weight = 100,
	  stack = true,
	  close = true,
	  description = "A Dirty Prison Jumpsuit",
	  client = {
		  image = "prison_jump_suit_dirty.png"
	  }
  },
  ["guard_uniform_clean_folded"] = {
	  label = "Clean Folded Guard Uniform",
	  weight = 100,
	  stack = true,
	  close = true,
	  description = "A Clean Folded Guard Uniform",
	  client = {
		  image = "guard_uniform_clean_folded.png"
	  }
  },
  ["guard_uniform_clean"] = {
	  label = "Clean Guard Uniform",
	  weight = 100,
	  stack = true,
	  close = true,
	  description = "A Clean Guard Uniform",
	  client = {
		  image = "guard_uniform_clean.png"
	  }
  },
  ["guard_uniform_wet"] = {
	  label = "Wet Guard Uniform",
	  weight = 100,
	  stack = true,
	  close = true,
	  description = "A Wet Guard Uniform",
	  client = {
		  image = "guard_uniform_wet.png"
	  }
  },
  ["guard_uniform_dirty"] = {
	  label = "Dirty Guard Uniform",
	  weight = 100,
	  stack = true,
	  close = true,
	  description = "A Dirty Guard Uniform",
	  client = {
		  image = "guard_uniform_dirty.png"
	  }
  },
  ["laundry_detergent"] = {
	  label = "Laundry Detergent",
	  weight = 100,
	  stack = true,
	  close = true,
	  description = "Laundry Detergent",
	  client = {
		  image = "laundry_detergent.png"
	  }
  },
  ["dryer_sheets"] = {
	  label = "Dryer Sheets",
	  weight = 100,
	  stack = true,
	  close = true,
	  description = "Dryer Sheets",
	  client = {
		  image = "dryer_sheets.png"
	  }
  },

   -- Casino Heist

["x_monitor"] = {
  label = "Monitor",
  weight = 1000,
  stack = false,
  close = false,
  description = "Computer monitor",
  client = {
    image = "x_monitor.png"
  }
},

["x_pantherstatue"] = {
  label = "Panther Statue",
  weight = 5000,
  stack = false,
  close = false,
  description = "Panther statue",
  client = {
    image = "x_pantherstatue.png"
  }
},

["x_watch"] = {
  label = "Watch",
  weight = 100,
  stack = true,
  close = false,
  description = "Wrist watch",
  client = {
    image = "x_watch.png"
  }
},

["x_headphones"] = {
  label = "Headphones",
  weight = 100,
  stack = true,
  close = false,
  description = "Just headphones..",
  client = {
    image = "x_headphones.png"
  }
},

["x_bananatrophy"] = {
  label = "Banana Trophy",
  weight = 1000,
  stack = false,
  close = false,
  description = "Don't ask..",
  client = {
    image = "x_bananatrophy.png"
  }
},


['x_wrench'] = {
  label = "Wrench",
  weight = 250,
  stack = false,
  close = false,
  description = "Good for maintenance",
  client = {
      image = "x_wrench.png",
  }
},

['x_moneysuitcase'] = {
  label = "Money Suitcase",
  weight = 2500,
  stack = false,
  close = false,
  description = "This is holding a lot of cash..",
  client = {
      image = "x_moneysuitcase.png",
  }
},

["x_cratejammer"] = {
  label = "X Crate Jammer",
  weight = 300,
  stack = false,
  close = false,
  description = "?????????",
  client = {
      image = "x_cratejammer.png",
  }
},

['casinomaintenancecard'] = {
  label = "Casino Maintenance Keycard",
  weight = 100,
  stack = false,
  close = false,
  description = "I wonder what I can use this for..",
  client = {
      image = "casinomaintenancecard.png",
  }
},

['casinosecuritycard'] = {
  label = "Casino Security Keycard",
  weight = 100,
  stack = false,
  close = false,
  description = "I wonder what I can use this for..",
  client = {
      image = "casinosecuritycard.png",
  }
},

['casinovaultcard'] = {
  label = "Casino Vault Keycard",
  weight = 100,
  stack = false,
  close = false,
  description = "I wonder what I can use this for..",
  client = {
      image = "casinovaultcard.png",
  }
},

['casinomanagercard'] = {
  label = "Casino Manager Keycard",
  weight = 100,
  stack = false,
  close = false,
  description = "I wonder what I can use this for..",
  client = {
      image = "casinomanagercard.png",
  }
},

['casinopenthousecard'] = {
  label = "Casino Penthouse Keycard",
  weight = 100,
  stack = false,
  close = false,
  description = "Fancy keycard..",
  client = {
      image = "casinopenthousecard.png",
  }
},

['managerlaptop'] = {
  label = "Manager Laptop",
  weight = 100,
  stack = false,
  close = false,
  description = "I Wonder what I can do with this..",
  client = {
      image = "managerlaptop.png",
  }
},

}
