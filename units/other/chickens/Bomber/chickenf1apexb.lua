return {
	chickenf1apexb = {
		acceleration = 0.8,
		airhoverfactor = 0,
		attackrunlength = 32,
		bmcode = "1",
		brakerate = 0.1,
		buildcostenergy = 4550,
		buildcostmetal = 212,
		builder = false,
		buildpic = "chickens/chickenf1b.DDS",
		buildtime = 9375,
		canattack = true,
		canfly = true,
		canguard = true,
		canland = true,
		canloopbackattack = true,
		canmove = true,
		canpatrol = true,
		canstop = "1",
		cansubmerge = true,
		capturable = false,
		category = "ALL MOBILE WEAPON NOTLAND VTOL NOTSUB NOTSHIP NOTHOVER CHICKEN",
		collide = true,
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "70 14 48",
		collisionvolumetype = "box",
		cruisealt = 220,
		defaultmissiontype = "Standby",
		explodeas = "TALON_DEATH",
		footprintx = 3,
		footprintz = 3,
		hidedamage = 1,
		idleautoheal = 5,
		idletime = 0,
		maneuverleashlength = "20000",
		mass = 227.5,
		maxacc = 0.25,
		maxaileron = 0.025,
		maxbank = 0.8,
		maxdamage = 6000,
		maxelevator = 0.025,
		maxpitch = 0.95,
		maxrudder = 0.025,
		maxvelocity = 6,
		moverate1 = "32",
		noautofire = false,
		nochasecategory = "VTOL",
		objectname = "Chickens/chickenf1apexb.s3o",
		script = "Chickens/chickenf1b.cob",
		seismicsignature = 0,
		selfdestructas = "TALON_DEATH",
		side = "THUNDERBIRDS",
		sightdistance = 1000,
		smoothanim = true,
		speedtofront = 0.07,
		steeringmode = "2",
		tedclass = "VTOL",
		turninplace = true,
		turnradius = 64,
		turnrate = 1600,
		unitname = "chickenf1b",
		usesmoothmesh = true,
		wingangle = 0.06593,
		wingdrag = 0.835,
		workertime = 0,
		customparams = {
			subfolder = "other/chickens",
			model_author = "KDR_11k, Beherith",
			normalmaps = "yes",
			normaltex = "unittextures/chicken_l_normals.png",
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:blood_spray",
				[2] = "custom:blood_explode",
				[3] = "custom:dirt",
			},
			pieceexplosiongenerators = {
				[1] = "blood_spray",
				[2] = "blood_spray",
				[3] = "blood_spray",
			},
		},
		weapondefs = {
			bloodyeggs = {
				accuracy = 1000,
				collidefriendly = 0,
				collidefeature = 0,
				avoidfeature = 0,
				avoidfriendly = 0,
				areaofeffect = 150,
				burst = 4,
				burstrate = 0.1,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.4,
				explosiongenerator = "custom:blood_explode_xl",
				impulseboost = 1,
				impulsefactor = 1,
				interceptedbyshieldtype = 0,
				model = "Chickens/chickeneggyellow.s3o",
				mygravity = 1,
				name = "GooBombs",
				noselfdamage = true,
				range = 700,
				reloadtime = 0.1,
				soundhit = "bloodsplash3",
				soundstart = "alien_bombrel",
				sprayangle = 2000,
				weapontype = "AircraftBomb",
				damage = {
					default = 1240,
				},
			},
		},
		weapons = {
			[1] = {
				def = "bloodyeggs",
			},
		},
	},
}
