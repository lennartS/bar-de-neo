
local difficulties = {
	veryeasy = 0,
	easy     = 1,
	normal   = 2,
	hard     = 3,
	veryhard = 4,
	epic     = 5,
	survival = 6,
}

local difficulty = difficulties[Spring.GetModOptions().chicken_difficulty]
local burrowName = 'roost'
local waves = {}

local chickenTypes = {
	ve_chickenq    =  true,
	e_chickenq     =  true,
	n_chickenq     =  true,
	h_chickenq     =  true,
	vh_chickenq    =  true,
	chicken1       =  true,
	chicken1b      =  true,
	chicken1c      =  true,
	chicken1d      =  true,
	chicken1x      =  true,
	chicken1y      =  true,
	chicken1z      =  true,
	chicken2       =  true,
	chicken2b      =  true,
	chickena1      =  true,
	chickena1b     =  true,
	chickena1c     =  true,
	chickena2      =  true,
	chickena2b     =  true,
	chickens1      =  true,
	chickens2      =  true,
	chicken_dodo1  =  true,
	chicken_dodo2  =  true,
	chickenf1      =  true,
	chickenf1b     =  true,
	chickenf2      =  true,
	chickenc1      =  true,
	chickenc2      =  true,
	chickenc3      =  true,
	chickenc3b     =  true,
	chickenc3c     =  true,
	chickenr1      =  true,
	chickenr2      =  true,
	chickenh1      =  true,
	chickenh1b     =  true,
	chickenh2      =  true,
	chickenh3      =  true,
	chickenh4      =  true,
	chickenh5      =  true,
	chickenw1      =  true,
	chickenw1b     =  true,
	chickenw1c     =  true,
	chickenw1d     =  true,
	chickenw2      =  true,
	chickens3      =  true,
	chickenp1      =  true,
	chickenp2      =  true,
	chickene1	   =  true,
	chickene2	   =  true,
	chickenearty1  =  true,
	chickenebomber1 = true,
	chickenacidswarmer = true,
	chickenacidassault = true,
	chickenacidarty = true,
	chickenacidbomber = true,
  }

  local defenders = {
	chickend1 = true,
  }

  local chickenEggs = {
	chicken1       		=   "purple", 
	chicken1b      		=   "pink",
	chicken1c      		=   "purple",
	chicken1d      		=   "purple",
	chicken1x      		=   "pink",
	chicken1y      		=   "pink",
	chicken1z      		=   "pink",
	chicken2       		=   "pink",
	chicken2b      		=   "pink",
	chickena1      		=   "red",
	chickena1b     		=   "red",
	chickena1c     		=   "red",
	chickena2      		=   "red",
	chickena2b     		=   "red",
	chickens1      		=   "green",
	chickens2      		=   "yellow",
	chicken_dodo1  		=   "red",
	chicken_dodo2  		=   "darkred",
	chickenf1      		=   "yellow",
	chickenf1b     		=   "yellow",
	chickenf2      		=   "white",
	chickenc1      		=   "white",
	chickenc2      		=   "darkred",
	chickenc3      		=   "white",
	chickenc3b     		=   "white",
	chickenc3c     		=   "white",
	chickenr1      		=   "darkgreen",
	chickenr2      		=   "darkgreen",
	chickenh1      		=   "white",
	chickenh1b     		=   "yellow",
	chickenh2      		=   "purple",
	chickenh3      		=   "red",
	chickenh4      		=   "red",
	chickenh5      		=   "red",
	chickenw1      		=   "purple",
	chickenw1b     		=   "purple",
	chickenw1c     		=   "purple",
	chickenw1d     		=   "purple",
	chickenw2      		=   "darkred",
	chickens3      		=   "green",
	chickenp1      		=   "darkred",
	chickenp2      		=   "darkred",
	chickene1	   		=   "blue",
	chickene2	   		=   "blue",
	chickenearty1  		=   "blue",
	chickenebomber1 	=   "blue",
	chickenacidswarmer 	=   "acidgreen",
	chickenacidassault 	=   "acidgreen",
	chickenacidarty 	=   "acidgreen",
	chickenacidbomber 	=   "acidgreen",
  }

local optionValues = {
	[difficulties.veryeasy] = {
		chickenSpawnRate  = 300,
		burrowSpawnRate   = 360,
		queenSpawnMult    = 0,
		angerBonus        = 0.15,
		expStep           = 0,
		lobberEMPTime     = 0,
		spawnChance       = 0.25,
		damageMod         = 0.125,
		maxBurrows        = 5,
		queenName         = 've_chickenq',
	},
	[difficulties.easy] = {
		chickenSpawnRate  = 300,
		burrowSpawnRate   = 320,
		queenSpawnMult    = 0,
		angerBonus        = 0.2,
		expStep           = 0.09375,
		lobberEMPTime     = 2.5,
		spawnChance       = 0.33,
		damageMod         = 0.25,
		maxBurrows        = 10,
		queenName         = 'e_chickenq',
	},

	[difficulties.normal] = {
		chickenSpawnRate  = 300,
		burrowSpawnRate   = 210,
		queenSpawnMult    = 1,
		angerBonus        = 0.25,
		expStep           = 0.125,
		lobberEMPTime     = 4,
		spawnChance       = 0.4,
		damageMod         = 0.4,
		maxBurrows        = 20,
		queenName         = 'n_chickenq',
	},

	[difficulties.hard] = {
		chickenSpawnRate  = 300,
		burrowSpawnRate   = 140,
		queenSpawnMult    = 1,
		angerBonus        = 0.3,
		expStep           = 0.25,
		lobberEMPTime     = 5,
		spawnChance       = 0.5,
		damageMod         = 0.55,
		maxBurrows        = 30,
		queenName         = 'h_chickenq',
	},

	[difficulties.veryhard] = {
		chickenSpawnRate  = 300,
		burrowSpawnRate   = 70,
		queenSpawnMult    = 3,
		angerBonus        = 0.35,
		expStep           = 0.4,
		lobberEMPTime     = 7.5,
		spawnChance       = 0.6,
		damageMod         = 0.66,
		maxBurrows        = 40,
		queenName         = 'vh_chickenq',
	},
	[difficulties.epic] = {
		chickenSpawnRate  = 300,
		burrowSpawnRate   = 40,
		queenSpawnMult    = 3,
		angerBonus        = 0.5,
		expStep           = 0.5,
		lobberEMPTime     = 7.5,
		spawnChance       = 0.8,
		damageMod         = 0.8,
		maxBurrows        = 50,
		queenName         = 'epic_chickenq',
	},

	[difficulties.survival] = {
	  chickenSpawnRate    = 300,
	  burrowSpawnRate     = 210,
	  queenSpawnMult      = 1,
	  angerBonus          = 0.1,
	  expStep             = 0.125,
	  lobberEMPTime       = 4,
	  chickenTypes        = table.copy(chickenTypes),
	  defenders           = table.copy(defenders),
	  spawnChance         = 0.4,
	  damageMod           = 0.5,
	  maxBurrows          = 10,
	  queenName           = 'n_chickenq',
	},
}


-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

local function addSquad(wave, unitList)
	if not waves[wave] then
		waves[wave] = {}
	end

	table.insert(waves[wave], unitList)
end
----------------------------------------------------------------------------------------------
-- Squads ------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------
-- Tier1 - Basic swarmers with flying scout
----------------------------------------------------------------------------------------------
addSquad(1, { "2 chicken1", "2 chicken1b", "2 chicken1c", "2 chicken1d" 					})
addSquad(1, { "4 chicken1", "4 chicken1b", "4 chicken1c", "4 chicken1d" 					})
addSquad(1, { "6 chicken1", "6 chicken1b", "6 chicken1c", "6 chicken1d" 					})
addSquad(1, { "2 chickenf2" 																})
----------------------------------------------------------------------------------------------
-- Tier2 - We introduce 2nd, a bit stronger kind of Swarmer in bigger numbers 
----------------------------------------------------------------------------------------------
addSquad(2, { "2 chicken1x", "2 chicken1y", "2 chicken1z"  									})
addSquad(2, { "4 chicken1x", "4 chicken1y", "4 chicken1z"  									})
addSquad(2, { "6 chicken1x", "6 chicken1y", "6 chicken1z"  									})
addSquad(2, { "2 chickena1", "2 chickena1b", "2 chickena1c"									})
addSquad(2, { "3 chickena1", "3 chickena1b", "3 chickena1c"									})
----------------------------------------------------------------------------------------------
-- Tier3 - Skirmishing Spikers and Airfighters joined the game, also more Brawlers
----------------------------------------------------------------------------------------------
addSquad(3, { "5 chickens1" 																})
addSquad(3, { "3 chickenw1", "3 chickenw1b", "3 chickenw1c", "3 chickenw1d", "3 chickenw2" 	})
----------------------------------------------------------------------------------------------
-- Tier4 - Small paralyzers, acid spitters and pyros are joining the game
----------------------------------------------------------------------------------------------
addSquad(4, { "3 chickene1" 																})
addSquad(4, { "3 chickenacidswarmer" 														})
addSquad(4, { "5 chickenp1" 																})
----------------------------------------------------------------------------------------------
-- Tier5 - Gunships and Bombers are looking at you from above!
----------------------------------------------------------------------------------------------
addSquad(5, { "5 chickenf1" 																})
addSquad(5, { "5 chickenf1b" 																})
addSquad(5, { "5 chickenebomber1" 															})
addSquad(5, { "5 chickenacidbomber" 														})
----------------------------------------------------------------------------------------------
-- Tier6 - All Terrain. Better watch these hills!
----------------------------------------------------------------------------------------------
addSquad(6, { "7 chickenc3" 																})
addSquad(6, { "5 chickenc3b" 																})
addSquad(6, { "3 chickenc3c" 																})
----------------------------------------------------------------------------------------------
-- Tier7 - Artillery, big flamer, big paralyzer and big acid spitter want to know your location
----------------------------------------------------------------------------------------------
addSquad(7, { "2 chickenr1" 																})
addSquad(7, { "2 chickenearty1" 															})
addSquad(7, { "2 chickenacidarty" 															})
addSquad(7, { "5 chickenp2" 																})
addSquad(7, { "2 chickene2" 																})
addSquad(7, { "2 chickenacidassault" 														})
----------------------------------------------------------------------------------------------
-- Tier8 - Kamikaze, lots of them! Also Apex Spiker.
----------------------------------------------------------------------------------------------
addSquad(8, { "10 chicken_dodo1" 															})
addSquad(8, { "20 chicken_dodo1" 															})
addSquad(8, { "40 chicken_dodo1" 															})
addSquad(8, { "80 chicken_dodo1" 															})
addSquad(8, { "20 chicken_dodo2" 															})
addSquad(8, { "40 chicken_dodo2" 															})
addSquad(8, { "5 chickens2" 																})
----------------------------------------------------------------------------------------------
-- Tier9 - Apex Swarmer, Apex Brawler, Apex Mortar - Prepare antinukes!
----------------------------------------------------------------------------------------------
addSquad(9, { "5 chicken2" 																	})
addSquad(9, { "5 chicken2b" 																})
addSquad(9, { "3 chickena2" 																})
addSquad(9, { "3 chickena2b" 																})
addSquad(9, { "1 chickenr2" 																})
----------------------------------------------------------------------------------------------
-- Tier10 - Brood Raptors - They don't die they multiply!
----------------------------------------------------------------------------------------------
addSquad(10, { "5 chickenh2" 																})
addSquad(10, { "10 chickenh3" 																})
addSquad(10, { "20 chickenh4" 																})
----------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------

local config = {
	difficulty             = difficulty,
	difficulties           = difficulties,
	maxChicken             = Spring.GetModOptions().chicken_maxchicken,
	chickenSpawnMultiplier = Spring.GetModOptions().chicken_spawncountmult,
	gracePeriod            = Spring.GetModOptions().chicken_graceperiod,  -- no chicken spawn in this period, seconds
	queenTime              = Spring.GetModOptions().chicken_queentime * 60, -- time at which the queen appears, seconds
	addQueenAnger          = Spring.GetModOptions().chicken_queenanger,
	burrowSpawnType        = Spring.GetModOptions().chicken_chickenstart,
	spawnSquare            = 90,       -- size of the chicken spawn square centered on the burrow
	spawnSquareIncrement   = 2,         -- square size increase for each unit spawned
	burrowName             = burrowName,   -- burrow unit name
	burrowDef              = UnitDefNames[burrowName].id,
	minBaseDistance        = 500,
	chickenTypes           = table.copy(chickenTypes),
	chickenEggs			   = table.copy(chickenEggs),
	defenders              = table.copy(defenders),
	waves                  = waves,
}

for key, value in pairs(optionValues[difficulty]) do
	config[key] = value
end

return config