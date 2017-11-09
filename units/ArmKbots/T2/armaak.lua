return {
	armaak = {
		acceleration = 0.12,
		airsightdistance = 925,
		brakerate = 0.564,
		buildcostenergy = 5600,
		buildcostmetal = 500,
		buildpic = "ARMAAK.DDS",
		buildtime = 6958,
		canmove = true,
		category = "KBOT MOBILE WEAPON ALL NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE CANBEUW",
		collisionvolumeoffsets = "0 -1 1",
		collisionvolumescales = "25 32 16",
		collisionvolumetype = "box",
		corpse = "DEAD",
		description = "Advanced Amphibious Anti-Air Kbot",
		explodeas = "mediumexplosiongeneric-phib",
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 1020,
		maxslope = 14,
		maxvelocity = 1.58,
		movementclass = "AKBOT2",
		name = "Archangel",
		nochasecategory = "ALL",
		objectname = "ARMAAK",
		seismicsignature = 1,
		selfdestructas = "mediumExplosionGenericSelfd-phib",
		sightdistance = 400,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 1.0428,
		turnrate = 1021,
		upright = true,
		customparams = {
			
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0.0 -1.2425585791 1.2922744751",
				collisionvolumescales = "30.0 14.3981628418 32.5845489502",
				collisionvolumetype = "Box",
				damage = 1212,
				description = "Archangel Wreckage",
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 4,
				footprintz = 4,
				height = 15,
				hitdensity = 100,
				metal = 314,
				object = "ARMAAK_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 606,
				description = "Archangel Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 4,
				footprintz = 4,
				height = 4,
				hitdensity = 100,
				metal = 126,
				object = "4X4A",
                collisionvolumescales = "85.0 14.0 6.0",
                collisionvolumetype = "cylY",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = { 
 			pieceExplosionGenerators = { 
				"deathceg2",
				"deathceg3",
				"deathceg4",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
			cant = {
				[1] = "cantdo4",
			},
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			ok = {
				[1] = "kbarmmov",
			},
			select = {
				[1] = "kbarmsel",
			},
		},
		weapondefs = {
			aakflak = {
				accuracy = 1000,
				areaofeffect = 128,
				avoidfeature = false,
				burnblow = true,
				canattackground = false,
				craterareaofeffect = 128,
				craterboost = 0,
				cratermult = 0,
				cylindertargeting = 1,
				edgeeffectiveness = 0.85,
				explosiongenerator = "custom:genericshellexplosion-medium-aa",
				gravityaffected = "true",
				impulseboost = 0,
				impulsefactor = 0,
				name = "FlakCannon",
				size = 4.5,
				noselfdamage = true,
				range = 700,
				reloadtime = 5.5,
				rgbcolor = {1, 0.5, 0.7},
				size = 1.4,
				soundhit = "flakhit",
				soundhitvolume = 9,
				soundhitwet = "splsmed",
				soundhitwetvolume = 0.5,
				soundstart = "flakfire",
				soundstartvolume = 7,
				turret = true,
				weapontimer = 1,
				weapontype = "Cannon",
				weaponvelocity = 1300,
				damage = {
					bombers = 200,
					fighters = 200,
					vtol = 200,
				},
				customparams = {
					light_color = "1 0.5 0.6",
					expl_light_color = "1 0.4 0.5",
				},
			},
			armaakbot_missile1 = {
				areaofeffect = 64,
				avoidfeature = false,
				canattackground = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				cegTag = "missiletrailaa",
				explosiongenerator = "custom:genericshellexplosion-tiny-aa",
				firestarter = 70,
				flighttime = 1.75,
				impulseboost = 0,
				impulsefactor = 0,
				metalpershot = 0,
				model = "missile",
				name = "Missiles",
				noselfdamage = true,
				range = 900,
				reloadtime = 3,
				smoketrail = false,
				soundhit = "xplosml2",
				soundhitvolume = 7.5,
				soundhitwet = "splssml",
				soundhitwetvolume = 0.5,
				soundstart = "rocklit1",
				soundstartvolume = 7.5,
				startvelocity = 510,
				texture1 = "trans",
				texture2 = "armsmoketrail",
				tolerance = 9000,
				tracks = true,
				turnrate = 63000,
				turret = true,
				weaponacceleration = 200,
				weapontimer = 6,
				weapontype = "MissileLauncher",
				weaponvelocity = 900,
				damage = {
					bombers = 150,
					fighters = 150,
					vtol = 150,
				},
				customparams = {
					light_skip = true,		-- used by light_effects widget
                    light_color = "1 0.5 0.6",
                    expl_light_color = "1 0.4 0.5",
				},
			},
			armaakbot_missile2 = {
				areaofeffect = 24,
				avoidfeature = false,
				canattackground = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				cegTag = "missiletrailaa",
				explosiongenerator = "custom:genericshellexplosion-tiny-aa",
				firestarter = 70,
				flighttime = 1.75,
				impulseboost = 0,
				impulsefactor = 0,
				metalpershot = 0,
				model = "missile",
				name = "Missiles",
				noselfdamage = true,
				range = 850,
				reloadtime = 1.6,
				smoketrail = false,
				soundhit = "xplosml2",
				soundhitvolume = 7.5,
				soundhitwet = "splshbig",
				soundhitwetvolume = 0.5,
				soundstart = "rocklit1",
				soundstartvolume = 7.5,
				startvelocity = 540,
				texture1 = "trans",
				texture2 = "armsmoketrail",
				tolerance = 9000,
				tracks = true,
				turnrate = 63000,
				turret = true,
				weaponacceleration = 200,
				weapontimer = 5,
				weapontype = "MissileLauncher",
				weaponvelocity = 900,
				damage = {
					bombers = 75,
					fighters = 75,
					vtol = 75,
				},
				customparams = {
					light_skip = true,		-- used by light_effects widget
					light_color = "1 0.5 0.6",
					expl_light_color = "1 0.4 0.5",
				},
			},
			bogus_missile = {
				areaofeffect = 48,
				avoidfeature = false,
				canattackground = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				impulseboost = 0,
				impulsefactor = 0,
				metalpershot = 0,
				name = "Missiles",
				range = 800,
				reloadtime = 0.5,
				soundhitwet = "splshbig",
				soundhitwetvolume = 0.5,
				startvelocity = 450,
				tolerance = 9000,
				turnrate = 33000,
				turret = true,
				weaponacceleration = 101,
				weapontimer = 0.1,
				weapontype = "Cannon",
				weaponvelocity = 650,
				damage = {
					default = 0,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "NOTAIR LIGHTAIRSCOUT",
				def = "BOGUS_MISSILE",
				onlytargetcategory = "VTOL",
			},
			[2] = {
				badtargetcategory = "NOTAIR LIGHTAIRSCOUT",
				def = "ARMAAKBOT_MISSILE1",
				onlytargetcategory = "VTOL",
			},
			[3] = {
				badtargetcategory = "NOTAIR LIGHTAIRSCOUT",
				def = "ARMAAKBOT_MISSILE2",
				onlytargetcategory = "VTOL",
				slaveto = 2,
			},
			[4] = {
				badtargetcategory = "NOTAIR LIGHTAIRSCOUT",
				def = "ARMAAKBOT_MISSILE2",
				onlytargetcategory = "VTOL",
				slaveto = 1,
			},
			[5] = {
				badtargetcategory = "NOTAIR LIGHTAIRSCOUT",
				def = "AAKFLAK",
				onlytargetcategory = "VTOL",
			},
		},
	},
}
