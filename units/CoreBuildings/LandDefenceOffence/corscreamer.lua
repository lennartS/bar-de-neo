return {
	corscreamer = {
		acceleration = 0,
		activatewhenbuilt = true,
		airsightdistance = 2400,
		brakerate = 0,
		buildcostenergy = 30000,
		buildcostmetal = 1500,
		buildinggrounddecaldecayspeed = 30,
		buildinggrounddecalsizex = 6,
		buildinggrounddecalsizey = 6,
		buildinggrounddecaltype = "corscreamer_aoplane.dds",
		buildpic = "CORSCREAMER.DDS",
		buildtime = 28000,
		canrepeat = false,
		category = "ALL WEAPON NOTSUB SPECIAL NOTAIR NOTHOVER SURFACE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "63 57 63",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		description = "Long Range Anti-Air Tower",
		explodeas = "largeBuildingExplosionGeneric",
		footprintx = 4,
		footprintz = 4,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 1500,
		maxslope = 20,
		maxwaterdepth = 0,
		name = "Screamer",
		objectname = "CORSCREAMER",
		seismicsignature = 0,
		selfdestructas = "largeBuildingExplosionGenericSelfd",
		sightdistance = 600,
		usebuildinggrounddecal = true,
		yardmap = "oooooooooooooooo",
		customparams = {
			removewait = true,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0.0 3.23730468743e-05 -6.73623657227",
				collisionvolumescales = "74.8988952637 49.1488647461 67.5134277344",
				collisionvolumetype = "Box",
				damage = 942,
				description = "Screamer Wreckage",
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 4,
				footprintz = 4,
				height = 20,
				hitdensity = 100,
				metal = 1145,
				object = "CORSCREAMER_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 471,
				description = "Screamer Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 4,
				footprintz = 4,
				hitdensity = 100,
				metal = 458,
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
			activate = "targon2",
			canceldestruct = "cancel2",
			deactivate = "targoff2",
			underattack = "warning1",
			working = "targsel2",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			select = {
				[1] = "targsel2",
			},
		},
		weapondefs = {
			core_advsam = {
				areaofeffect = 425,
				avoidfeature = false,
				avoidfriendly = false,
				burnblow = true,
				canattackground = false,
				collidefriendly = false,
				craterareaofeffect = 425,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.6,
				energypershot = 1800,
				cegTag = "missiletrailaa-large",
				explosiongenerator = "custom:genericshellexplosion-large-aa",
				firestarter = 90,
				flighttime = 1.75,
				impulseboost = 0,
				impulsefactor = 0,
				metalpershot = 0,
				model = "ADVSAM",
				name = "ADVSAM",
				noselfdamage = true,
				proximitypriority = -2,
				range = 2400,
				reloadtime = 1.8,
				smoketrail = false,
				soundhit = "impact",
				soundhitwet = "splslrg",
				soundhitwetvolume = 0.5,
				soundstart = "launch",
				sprayangle = 10000,
				startvelocity = 1200,
				stockpile = true,
				stockpiletime = 14,
				texture1 = "trans",
				texture2 = "coresmoketrail",
				tolerance = 10000,
				tracks = true,
				trajectoryheight = 0.55,
				turnrate = 99000,
				turret = true,
				weaponacceleration = 1000,
				weapontype = "MissileLauncher",
				weaponvelocity = 1800,
				damage = {
					bombers = 750,
					fighters = 750,
					vtol = 750,
				},
				customparams = {
					light_radius_mult = 0.6,
					light_color = "1 0.5 0.6",
					expl_light_radius_mult = 0.6,
					expl_light_multiplier = 0.75,
					expl_light_color = "1 0.4 0.5",
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "NOTAIR LIGHTAIRSCOUT",
				def = "CORE_ADVSAM",
				onlytargetcategory = "VTOL",
			},
		},
	},
}
