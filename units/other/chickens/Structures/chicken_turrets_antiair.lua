return {
	chicken_turrets_antiair = {
		acceleration = 0.0115,
		activatewhenbuilt = true,
		autoheal = 1,
		bmcode = "0",
		brakerate = 0.0115,
		buildcostenergy = 3000,
		buildcostmetal = 120,
		builddistance = 500,
		builder = false,
		buildpic = "chickens/chicken_turrets_antiair.DDS",
		buildtime = 2700,
		canattack = true,
		canreclaim = false,
		canrestore = false,
		canstop = "1",
		capturable = false,
		category = "BOT MOBILE WEAPON ALL NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE CHICKEN EMPABLE",
		collisionvolumeoffsets = "0 -15 0",
		collisionvolumescales = "20 50 20",
		collisionvolumetype = "box",
		energystorage = 500,
		explodeas = "bug_death",
		extractsmetal = 0.001,
		footprintx = 1,
		footprintz = 1,
		idleautoheal = 15,
		idletime = 300,
		levelground = false,
		mass = 700,
		maxdamage = 1670,
		maxslope = 255,
		maxvelocity = 0,
		maxwaterdepth = 0,
		movementclass = "NANO",
		noautofire = false,
		nochasecategory = "MOBILE",
		objectname = "Chickens/chicken_turrets_red_v2.s3o",
		--reclaimspeed = 200,
		repairable = false,
		script = "Chickens/chicken_turrets_v2.cob",
		seismicsignature = 0,
		selfdestructas = "bug_death",
		side = "THUNDERBIRDS",
		sightdistance = 500,
		smoothanim = true,
		tedclass = "METAL",
		turninplace = true,
		turninplaceanglelimit = 90,
		turnrate = 1840,
		unitname = "chickend1",
		upright = false,
		waterline = 1,
		workertime = 200,
		customparams = {
			subfolder = "other/chickens",
			model_author = "LathanStanley, Beherith",
			normalmaps = "yes",
			normaltex = "unittextures/chicken_m_normals.png",
			treeshader = "yes",
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
			weapon = {
				areaofeffect = 128,
				avoidfriendly = false,
				burnblow = true,
				--cegtag = "sporetrail-large",
				collidefriendly = false,
				craterboost = 0,
				cratermult = 0,
				cameraShake = 700,
				dance = 20,
				edgeeffectiveness = 0.35,
				explosiongenerator = "custom:genericshellexplosion-huge-bomb",
				firestarter = 0,
				flighttime = 4,
				firesubmersed = true,
				impulseboost = 0,
				impulsefactor = 0.4,
				interceptedbyshieldtype = 4,
				metalpershot = 0,
				model = "SimpleFlareXL.s3o",
				name = "Deadly Defensive Spores",
				noselfdamage = true,
				range = 750,
				reloadtime = 30,
				smoketrail = true,
				smokePeriod = 2,
				smoketime = 45,
				smokesize = 10.5,
				smokecolor = 1.0,
				soundhit = "spore_explo",
				soundstart = "spore_xl",
				soundstartvolume = 9,
				startvelocity = 1000,
				texture1 = "orangenovaexplo",
				texture2 = "sporetrail_xl",
				tolerance = 60000,
				tracks = true,
				trajectoryheight = 2,
				turnrate = 60000,
				turret = true,
				waterweapon = true,
				weaponacceleration = 40,
				weapontype = "MissileLauncher",
				weaponvelocity = 2000,
				wobble = 32000,
				damage = {
					default = 20,
					bombers = 2000,
					fighters = 2000,
					vtol = 2000,
				},
			},
		},
		weapons = {
			[1] = {
				def = "WEAPON",
				onlytargetcategory = "VTOL",
			},
		},
	},
}
