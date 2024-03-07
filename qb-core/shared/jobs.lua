QBShared = QBShared or {}
QBShared.ForceJobDefaultDutyAtLogin = false -- true: Force duty state to jobdefaultDuty | false: set duty state from database last saved
QBShared.Jobs = {
        ['unemployed'] = {
            label = 'Unemployed',
            defaultDuty = true,
            offDutyPay = false,
            grades = {
                ['0'] = {
                    name = 'Freelancer',
                    payment = 100
                },
            },
        },
	['police'] = {
		label = 'Los Santos Police Department',
        type = "leo",
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Police Cadet',
                payment = 160
            },
			['1'] = {
                name = 'Police Officer I',
                payment = 260
            },
			['2'] = {
                name = 'Police Officer II',
                payment = 290
            },
			['3'] = {
                name = 'Police Officer III',
                payment = 350
            },
			['4'] = {
                name = 'Police Officer III+I',
                payment = 3000
            },
            ['5'] = {
                name = 'Detective I',
                payment = 190
            },
            ['6'] = {
                name = 'Sergeant I',
                payment = 210
            },
            ['7'] = {
                name = 'Detective II',
                payment = 250
            },
            ['8'] = {
                name = 'Sergeant II',
                payment = 290
            },
            ['9'] = {
                name = 'Detective III',
                payment = 310
            },
            ['10'] = {
                name = 'Lieutenant',
                payment = 350
            },
            ['11'] = {
                name = 'Captain',
                payment = 390
            },
            ['12'] = {
                name = 'Police Commander',
                payment = 400
            },
            ['13'] = {
                name = 'Deputy Chief of Police',
                payment = 600
            },
            ['14'] = {
                name = 'Assistant Chief of Police',
                payment = 900
            },
            ['15'] = {
                name = 'Chief of Police',
                payment = 15000,
                isboss = true
            }
        },
	},
	['ambulance'] = {
        type = "ems",
		label = 'LS Ambulance',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
			['1'] = {
                name = 'Paramedic',
                payment = 75
            },
			['2'] = {
                name = 'Doctor',
                payment = 100
            },
			['3'] = {
                name = 'Surgeon',
                payment = 125
            },
			['4'] = {
                name = 'Junior Chief',
                payment = 150
            },
            ['5'] = {
                name = 'Hospital Chief',
                payment = 250,
                isboss = true
            }

        },
	},
	['realestate'] = {
		label = 'Real Estate',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
			['1'] = {
                name = 'House Sales',
                payment = 75
            },
			['2'] = {
                name = 'Business Sales',
                payment = 100
            },
			['3'] = {
                name = 'Broker',
                payment = 125
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 150
            },
        },
	},
	['taxi'] = {
		label = 'LS Taxi',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 0
            },
			['1'] = {
                name = 'Driver',
                payment = 75
            },
			['2'] = {
                name = 'Event Driver',
                payment = 100
            },
			['3'] = {
                name = 'Sales',
                payment = 125
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 150
            },
        },
	},
     ['bus'] = {
		label = 'LS Bus',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Bus Driver',
                payment = 1500
            },
		},
	},
    ['cardealerpdm'] = {
		label = 'Vehicle Dealer | Premium Deluxe',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 10
            },
			['1'] = {
                name = 'Showroom Sales',
                payment = 350
            },
			['2'] = {
                name = 'Business Sales',
                payment = 500
            },
			['3'] = {
                name = 'Finance',
                payment = 600
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 1500
            },
        },
	},
    ['cardealerluxury'] = {
		label = 'Vehicle Dealer | Luxury Vehicle',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 10
            },
			['1'] = {
                name = 'Showroom Sales',
                payment = 350
            },
			['2'] = {
                name = 'Business Sales',
                payment = 500
            },
			['3'] = {
                name = 'Finance',
                payment = 600
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 1500
            },
        },
	},
    ['cardealerboats'] = {
		label = 'Vehicle Dealer | Bots Marina Shop',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 10
            },
			['1'] = {
                name = 'Showroom Sales',
                payment = 350
            },
			['2'] = {
                name = 'Business Sales',
                payment = 500
            },
			['3'] = {
                name = 'Finance',
                payment = 600
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 1500
            },
        },
	},
    ['cardealerair'] = {
		label = 'Vehicle Dealer | Air Shop',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 10
            },
			['1'] = {
                name = 'Showroom Sales',
                payment = 350
            },
			['2'] = {
                name = 'Business Sales',
                payment = 500
            },
			['3'] = {
                name = 'Finance',
                payment = 600
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 1500
            },
        },
	},
    ['cardealertruck'] = {
		label = 'Vehicle Dealer | Truck Motor Shop',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 10
            },
			['1'] = {
                name = 'Showroom Sales',
                payment = 350
            },
			['2'] = {
                name = 'Business Sales',
                payment = 500
            },
			['3'] = {
                name = 'Finance',
                payment = 600
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 1500
            },
        },
	},
	-- ['cardealer'] = {
	-- 	label = 'Vehicle Dealer',
	-- 	defaultDuty = true,
	-- 	offDutyPay = false,
	-- 	grades = {
    --         ['0'] = {
    --             name = 'Recruit',
    --             payment = 10
    --         },
	-- 		['1'] = {
    --             name = 'Showroom Sales',
    --             payment = 350
    --         },
	-- 		['2'] = {
    --             name = 'Business Sales',
    --             payment = 500
    --         },
	-- 		['3'] = {
    --             name = 'Finance',
    --             payment = 600
    --         },
	-- 		['4'] = {
    --             name = 'Manager',
	-- 			isboss = true,
    --             payment = 1500
    --         },
    --     },
	-- },
	['mechanic'] = {
		label = 'Mechanic',
        type = "mechanic",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
			['1'] = {
                name = 'Novice',
                payment = 75
            },
			['2'] = {
                name = 'Experienced',
                payment = 100
            },
			['3'] = {
                name = 'Advanced',
                payment = 125
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 150
            },
        },
	},
	['judge'] = {
		label = 'Honorary',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Judge',
                payment = 100
            },
        },
	},
	['lawyer'] = {
		label = 'Law Firm',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Associate',
                payment = 50
            },
        },
	},
	['reporter'] = {
		label = 'Reporter',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Journalist',
                payment = 50
            },
        },
	},
	['trucker'] = {
		label = 'Trucker',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 1500
            },
        },
	},
	['tow'] = {
		label = 'Towing',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 35
            },
        },
	},
	['garbage'] = {
		label = 'Garbage',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Collector',
                payment = 10
            },
        },
	},
	['vineyard'] = {
		label = 'Vineyard',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Picker',
                payment = 10
            },
        },
	},
	['hotdog'] = {
		label = 'Hotdog',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Hotdog Seller',
            },
        },
	},
    ['mining'] = {
		label = 'Fuel Extractor',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Fuel Extractor',
                payment = 200
            },
        },
	},
    -- ['airdealer'] = {
	-- 	label = 'Air DealerShip',
	-- 	defaultDuty = true,
	-- 	offDutyPay = false,
	-- 	grades = {
    --         ['0'] = {
    --             name = 'Help AirDealerShip Seller',
    --             payment = 150
    --         },
    --         ['1'] = {
    --             name = 'Seller AirDealerShip',
    --             payment = 200
    --         },
    --         ['2'] = {
    --             name = 'Employer AirDealerShip',
    --             payment = 300
    --         },
    --         ['3'] = {
    --             name = 'Manager AirDealerShip',
    --            payment = 400
    --         },
    --         ['4'] = {
    --             name = 'Owner AirDealerShip',
    --             payment = 1100
    --         },
    --     },
	-- },
    ['oilwell'] = {
        label = 'Oil Company',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Oilwell Operator',
                payment = 50
            },
            ['1'] = {
                name = 'Oilwell Operator tier 2',
                payment = 75
            },
            ['2'] = {
                name = 'Event Driver tier 2',
                payment = 100
            },
            ['3'] = {
                  name = 'Event Driver tier 3',
                  payment = math.random(50,220)
            },
            ['4'] = {
                name = 'Sales',
                payment = 125
            },
            ['5'] = {
                name = 'CEO Of Oilwell Company',
                isboss = true,
                payment = 150
            },
        },
    },
    ['taco'] = {
		label = 'Taco Shop',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 75
            },
            ['1'] = {
                name = 'Employee',
                payment = 85
            },
            ['2'] = {
                name = 'Cook',
                payment = 100
            },
            ['3'] = {
                name = 'Manager',
                payment = 120
            },
            ['4'] = {
                name = 'CEO',
                isboss = true,
                payment = 135,
            },
        },
	},
    ["ammunation"] = {
        label = "Ammunation Employee",
        defaultDuty = true,
        grades = {
            ['0'] = {
                name = "Recruit",
                payment = 50
            },
            ['1'] = {
                name = "Novice",
                payment = 75
            },
            ['2'] = {
                name = "Experienced",
                payment = 100
            },
            ['3'] = {
                name = "Advanced",
                payment = 125
            },
            ['4'] = {
                name = "Manager",
                isboss = true,
                payment = 150
            },
        },
    },
    ['technician'] = {
		label = 'Electrical Tech',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Technician',
                payment = 100
            },
        },
    },
    ['slaughterer'] = {
		label = 'Cow Transport',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Cow Transporter',
                payment = 100
            },
        },
    },
    ['burgershot'] = {
        label = 'Burger Shot',
        type = "burgershot",
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Employee',
                payment = 50
            },
            ['1'] = {
                name = 'Administrator Burgershot',
                payment = 150
            },
            ['2'] = {
                name = "Burgershot Manager",
                isboss = true,
                payment = 450
            }
        },
    },
    
    ['icecream'] = {
		label = 'Polar Ice Cream',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = { name = 'Kitchen Porter', payment = 10 },
            ['1'] = { name = 'Team Member', payment = 20 },
            ['2'] = { name = 'Sales Manager', payment = 30 },
            ['3'] = { name = 'Shop Manager', isboss= true, payment = 0 },
        },
	},

    ['banker'] = {
        label = 'Banker', 
        defaultDuty = true, 
        offDutyPay = false,
        grades = {
             ['0'] = {name = 'Recruit', payment = 50},
             ['1'] = {name = 'Finance', payment = 125},
             ['2'] = {name = 'Manager', isboss = true, payment = 150},
          },
},
}
