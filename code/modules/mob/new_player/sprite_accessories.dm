/*

	Hello and welcome to sprite_accessories: For sprite accessories, such as hair,
	facial hair, and possibly tattoos and stuff somewhere along the line. This file is
	intended to be friendly for people with little to no actual coding experience.
	The process of adding in new hairstyles has been made pain-free and easy to do.
	Enjoy! - Doohl


	Notice: This all gets automatically compiled in a list in dna2.dm, so you do not
	have to define any UI values for sprite accessories manually for hair and facial
	hair. Just add in new hair types and the game will naturally adapt.

	!!WARNING!!: changing existing hair information can be VERY hazardous to savefiles,
	to the point where you may completely corrupt a server's savefiles. Please refrain
	from doing this unless you absolutely know what you are doing, and have defined a
	conversion in savefile.dm
*/

/datum/sprite_accessory

	var/icon			// the icon file the accessory is located in
	var/icon_state		// the icon_state of the accessory
	var/preview_state	// a custom preview state for whatever reason

	var/name			// the preview name of the accessory

	// Determines if the accessory will be skipped or included in random hair generations
	var/gender = NEUTER

	// Restrict some styles to specific species
	var/list/species_allowed = list(SPECIES_HUMAN,SPECIES_PROMETHEAN,SPECIES_HUMAN_VATBORN)

	// Whether or not the accessory can be affected by colouration
	var/do_colouration = 1


/*
////////////////////////////
/  =--------------------=  /
/  == Hair Definitions ==  /
/  =--------------------=  /
////////////////////////////
*/

/datum/sprite_accessory/hair

	icon = 'icons/mob/Human_face_m.dmi'	  // default icon for all hairs
	var/icon_add = 'icons/mob/human_face.dmi'
	var/flags

	bald
		name = "Bald"
		icon_state = "bald"
		gender = MALE
		flags = HAIR_VERY_SHORT
		species_allowed = list(SPECIES_HUMAN,SPECIES_UNATHI,SPECIES_PROMETHEAN,SPECIES_HUMAN_VATBORN,SPECIES_VOX)

	short
		name = "Short Hair"	  // try to capatilize the names please~
		icon_state = "hair_a" // you do not need to define _s or _l sub-states, game automatically does this for you
		flags = HAIR_VERY_SHORT

	short2
		name = "Short Hair 2"
		icon_state = "hair_shorthair3"
		flags = HAIR_VERY_SHORT

	short3
		name = "Short Hair 3"
		icon_state = "hair_shorthair4"
		flags = HAIR_VERY_SHORT

	twintail
		name = "Twintail"
		icon_state = "hair_twintail"
		flags = HAIR_TIEABLE

	cut
		name = "Cut Hair"
		icon_state = "hair_c"
		flags = HAIR_VERY_SHORT

	flair
		name = "Flaired Hair"
		icon_state = "hair_flair"
		flags = HAIR_TIEABLE

	long
		name = "Shoulder-length Hair"
		icon_state = "hair_b"
		flags = HAIR_TIEABLE

/*
	longish
		name = "Longer Hair"
		icon_state = "hair_b2"
		flags = HAIR_TIEABLE
*/
	longer
		name = "Long Hair"
		icon_state = "hair_vlong"
		flags = HAIR_TIEABLE

	longeralt2
		name = "Long Hair Alt 2"
		icon_state = "hair_longeralt2"
		flags = HAIR_TIEABLE

	longest
		name = "Very Long Hair"
		icon_state = "hair_longest"
		flags = HAIR_TIEABLE

	longfringe
		name = "Long Fringe"
		icon_state = "hair_longfringe"
		flags = HAIR_TIEABLE

	longestalt
		name = "Longer Fringe"
		icon_state = "hair_vlongfringe"
		flags = HAIR_TIEABLE

	halfbang
		name = "Half-banged Hair"
		icon_state = "hair_halfbang"

	halfbangalt
		name = "Half-banged Hair Alt"
		icon_state = "hair_halfbang_alt"

	ponytail1
		name = "Ponytail 1"
		icon_state = "hair_ponytail"
		flags = HAIR_TIEABLE

	ponytail2
		name = "Ponytail 2"
		icon_state = "hair_pa"
		flags = HAIR_TIEABLE

	ponytail3
		name = "Ponytail 3"
		icon_state = "hair_ponytail3"
		flags = HAIR_TIEABLE

	ponytail4
		name = "Ponytail 4"
		icon_state = "hair_ponytail4"
		flags = HAIR_TIEABLE

	ponytail5
		name = "Ponytail 5"
		icon_state = "hair_ponytail5"
		flags = HAIR_TIEABLE

	ponytail6
		name = "Ponytail 6"
		icon_state = "hair_ponytail6"
		flags = HAIR_TIEABLE

	fringetail
		name = "Fringetail"
		icon_state = "hair_fringetail"
		flags = HAIR_TIEABLE

	sideponytail
		name = "Side Ponytail"
		icon_state = "hair_stail"
		flags = HAIR_TIEABLE

	sideponytail4 //Not happy about this... but it's for the save files.
		name = "Side Ponytail 2"
		icon_state = "hair_ponytailf"
		flags = HAIR_TIEABLE

	sideponytail2
		name = "One Shoulder"
		icon_state = "hair_oneshoulder"
		flags = HAIR_TIEABLE

	sideponytail3
		name = "Tress Shoulder"
		icon_state = "hair_tressshoulder"
		flags = HAIR_TIEABLE

	spikyponytail
		name = "Spiky Ponytail"
		icon_state = "hair_spikyponytail"
		flags = HAIR_TIEABLE

	zieglertail
		name = "Zieglertail"
		icon_state = "hair_ziegler"
		flags = HAIR_TIEABLE

	wisp
		name = "Wisp"
		icon_state = "hair_wisp"
		flags = HAIR_TIEABLE

	parted
		name = "Parted"
		icon_state = "hair_parted"

	pompadour
		name = "Pompadour"
		icon_state = "hair_pompadour"

	sleeze
		name = "Sleeze"
		icon_state = "hair_sleeze"
		flags = HAIR_VERY_SHORT

	quiff
		name = "Quiff"
		icon_state = "hair_quiff"

	bedhead
		name = "Bedhead"
		icon_state = "hair_bedhead"

	bedhead2
		name = "Bedhead 2"
		icon_state = "hair_bedheadv2"

	bedhead3
		name = "Bedhead 3"
		icon_state = "hair_bedheadv3"
		flags = HAIR_TIEABLE

	bedheadlong
		name = "Bedhead Long"
		icon_state = "hair_long_bedhead"
		flags = HAIR_TIEABLE

	beehive
		name = "Beehive"
		icon_state = "hair_beehive"
		flags = HAIR_TIEABLE

	beehive2
		name = "Beehive 2"
		icon_state = "hair_beehive2"
		flags = HAIR_TIEABLE

	bobcurl
		name = "Bobcurl"
		icon_state = "hair_bobcurl"
		species_allowed = list(SPECIES_HUMAN,SPECIES_PROMETHEAN,SPECIES_HUMAN_VATBORN,SPECIES_UNATHI)
		flags = HAIR_TIEABLE

	bob
		name = "Bob"
		icon_state = "hair_bobcut"
		species_allowed = list(SPECIES_HUMAN,SPECIES_PROMETHEAN,SPECIES_HUMAN_VATBORN,SPECIES_UNATHI)
		flags = HAIR_TIEABLE

	bobcutalt
		name = "Chin Length Bob"
		icon_state = "hair_bobcutalt"
		flags = HAIR_TIEABLE

	bun
		name = "Bun"
		icon_state = "hair_bun"

	bun2
		name = "Bun 2"
		icon_state = "hair_bun2"

	bun3
		name = "Bun 3"
		icon_state = "hair_bun3"

	bowl
		name = "Bowl"
		icon_state = "hair_bowlcut"

	buzz
		name = "Buzzcut"
		icon_state = "hair_buzzcut"
		flags = HAIR_VERY_SHORT
		species_allowed = list(SPECIES_HUMAN,SPECIES_PROMETHEAN,SPECIES_HUMAN_VATBORN,SPECIES_UNATHI)

	shavehair
		name = "Shaved Hair"
		icon_state = "hair_shaved"
		flags = HAIR_VERY_SHORT

	crew
		name = "Crewcut"
		icon_state = "hair_crewcut"
		flags = HAIR_VERY_SHORT

	combover
		name = "Combover"
		icon_state = "hair_combover"

	father
		name = "Father"
		icon_state = "hair_father"

	reversemohawk
		name = "Reverse Mohawk"
		icon_state = "hair_reversemohawk"

	devillock
		name = "Devil Lock"
		icon_state = "hair_devilock"

	dreadlocks
		name = "Dreadlocks"
		icon_state = "hair_dreads"

	curls
		name = "Curls"
		icon_state = "hair_curls"
		flags = HAIR_TIEABLE

	afro
		name = "Afro"
		icon_state = "hair_afro"

	afro2
		name = "Afro 2"
		icon_state = "hair_afro2"

	afro_large
		name = "Big Afro"
		icon_state = "hair_bigafro"

	rows
		name = "Rows"
		icon_state = "hair_rows1"
		flags = HAIR_VERY_SHORT

	rows2
		name = "Rows 2"
		icon_state = "hair_rows2"
		flags = HAIR_TIEABLE

	sargeant
		name = "Flat Top"
		icon_state = "hair_sargeant"
		flags = HAIR_VERY_SHORT

	emo
		name = "Emo"
		icon_state = "hair_emo"

	emo2
		name = "Emo Alt"
		icon_state = "hair_emo2"

	longemo
		name = "Long Emo"
		icon_state = "hair_emolong"
		flags = HAIR_TIEABLE

	fringeemo
		name = "Emo Fringe"
		icon_state = "hair_emofringe"
		flags = HAIR_TIEABLE

	veryshortovereyealternate
		name = "Overeye Very Short, Alternate"
		icon_state = "hair_veryshortovereyealternate"

	veryshortovereye
		name = "Overeye Very Short"
		icon_state = "hair_veryshortovereye"

	shortovereye
		name = "Overeye Short"
		icon_state = "hair_shortovereye"

	longovereye
		name = "Overeye Long"
		icon_state = "hair_longovereye"
		flags = HAIR_TIEABLE

	flowhair
		name = "Flow Hair"
		icon_state = "hair_f"

	feather
		name = "Feather"
		icon_state = "hair_feather"
		flags = HAIR_TIEABLE

	hitop
		name = "Hitop"
		icon_state = "hair_hitop"

	mohawk
		name = "Mohawk"
		icon_state = "hair_d"
		species_allowed = list(SPECIES_HUMAN,SPECIES_PROMETHEAN,SPECIES_HUMAN_VATBORN,SPECIES_UNATHI)

	jensen
		name = "Adam Jensen Hair"
		icon_state = "hair_jensen"

	gelled
		name = "Gelled Back"
		icon_state = "hair_gelled"

	gentle
		name = "Gentle"
		icon_state = "hair_gentle"
		flags = HAIR_TIEABLE

	spiky
		name = "Spiky"
		icon_state = "hair_spikey"
		species_allowed = list(SPECIES_HUMAN,SPECIES_PROMETHEAN,SPECIES_HUMAN_VATBORN,SPECIES_UNATHI)

	kusangi
		name = "Kusanagi Hair"
		icon_state = "hair_kusanagi"

	kagami
		name = "Pigtails"
		icon_state = "hair_kagami"
		flags = HAIR_TIEABLE

	himecut
		name = "Hime Cut"
		icon_state = "hair_himecut"
		flags = HAIR_TIEABLE

	shorthime
		name = "Short Hime Cut"
		icon_state = "hair_shorthime"
		flags = HAIR_TIEABLE

	grandebraid
		name = "Grande Braid"
		icon_state = "hair_grande"
		flags = HAIR_TIEABLE

	mbraid
		name = "Medium Braid"
		icon_state = "hair_shortbraid"
		flags = HAIR_TIEABLE

	braid2
		name = "Long Braid"
		icon_state = "hair_hbraid"
		flags = HAIR_TIEABLE

	braid
		name = "Floorlength Braid"
		icon_state = "hair_braid"
		flags = HAIR_TIEABLE

	odango
		name = "Odango"
		icon_state = "hair_odango"
		flags = HAIR_TIEABLE

	ombre
		name = "Ombre"
		icon_state = "hair_ombre"
		flags = HAIR_TIEABLE

	updo
		name = "Updo"
		icon_state = "hair_updo"
		flags = HAIR_TIEABLE

	skinhead
		name = "Skinhead"
		icon_state = "hair_skinhead"
		flags = HAIR_VERY_SHORT

	balding
		name = "Balding Hair"
		icon_state = "hair_e"
		gender = MALE
		flags = HAIR_VERY_SHORT

	familyman
		name = "The Family Man"
		icon_state = "hair_thefamilyman"

	mahdrills
		name = "Drillruru"
		icon_state = "hair_drillruru"

	fringetail
		name = "Fringetail"
		icon_state = "hair_fringetail"

	dandypomp
		name = "Dandy Pompadour"
		icon_state = "hair_dandypompadour"

	poofy
		name = "Poofy"
		icon_state = "hair_poofy"
		flags = HAIR_TIEABLE

	poofy2
		name = "Poofy2"
		icon_state = "hair_poofy2"
		flags = HAIR_TIEABLE

	crono
		name = "Chrono"
		icon_state = "hair_toriyama"

	vegeta
		name = "Vegeta"
		icon_state = "hair_toriyama2"

	cia
		name = "CIA"
		icon_state = "hair_cia"

	mulder
		name = "Mulder"
		icon_state = "hair_mulder"

	scully
		name = "Scully"
		icon_state = "hair_scully"

	nitori
		name = "Nitori"
		icon_state = "hair_nitori"
		flags = HAIR_TIEABLE

	joestar
		name = "Joestar"
		icon_state = "hair_joestar"

	volaju
		name = "Volaju"
		icon_state = "hair_volaju"
		flags = HAIR_TIEABLE

	eighties
		name = "80's"
		icon_state = "hair_80s"

	nia
		name = "Nia"
		icon_state = "hair_nia"

	unkept
		name = "Unkept"
		icon_state = "hair_unkept"

	modern
		name = "Modern"
		icon_state = "hair_modern"

	shortbangs
		name = "Short Bangs"
		icon_state = "hair_shortbangs"

	halfshaved
		name = "Half-Shaved Emo"
		icon_state = "hair_halfshaved"

	bun
		name = "Casual Bun"
		icon_state = "hair_bun"
		flags = HAIR_TIEABLE

	doublebun
		name = "Double-Bun"
		icon_state = "hair_doublebun"
		flags = HAIR_TIEABLE

	oxton
		name = "Oxton"
		icon_state = "hair_oxton"

	lowfade
		name = "Low Fade"
		icon_state = "hair_lowfade"
		gender = MALE
		flags = HAIR_VERY_SHORT

	medfade
		name = "Medium Fade"
		icon_state = "hair_medfade"
		flags = HAIR_VERY_SHORT

	highfade
		name = "High Fade"
		icon_state = "hair_highfade"
		gender = MALE
		flags = HAIR_VERY_SHORT

	baldfade
		name = "Balding Fade"
		icon_state = "hair_baldfade"
		gender = MALE
		flags = HAIR_VERY_SHORT

	nofade
		name = "Regulation Cut"
		icon_state = "hair_nofade"
		gender = MALE
		flags = HAIR_VERY_SHORT

	trimflat
		name = "Trimmed Flat Top"
		icon_state = "hair_trimflat"
		gender = MALE
		flags = HAIR_VERY_SHORT

	trimmed
		name = "Trimmed"
		icon_state = "hair_trimmed"
		gender = MALE
		flags = HAIR_VERY_SHORT

	tightbun
		name = "Tight Bun"
		icon_state = "hair_tightbun"
		gender = FEMALE
		flags = HAIR_VERY_SHORT | HAIR_TIEABLE

	coffeehouse
		name = "Coffee House Cut"
		icon_state = "hair_coffeehouse"
		gender = MALE
		flags = HAIR_VERY_SHORT

	undercut1
		name = "Undercut"
		icon_state = "hair_undercut1"
		gender = MALE
		flags = HAIR_VERY_SHORT

	undercut2
		name = "Undercut Swept Right"
		icon_state = "hair_undercut2"
		gender = MALE
		flags = HAIR_VERY_SHORT

	undercut3
		name = "Undercut Swept Left"
		icon_state = "hair_undercut3"
		gender = MALE
		flags = HAIR_VERY_SHORT

	partfade
		name = "Parted Fade"
		icon_state = "hair_shavedpart"
		gender = MALE
		flags = HAIR_VERY_SHORT

	hightight
		name = "High and Tight"
		icon_state = "hair_hightight"
		flags = HAIR_VERY_SHORT

	rowbun
		name = "Row Bun"
		icon_state = "hair_rowbun"
		flags = HAIR_TIEABLE

	rowdualbraid
		name = "Row Dual Braid"
		icon_state = "hair_rowdualtail"
		flags = HAIR_TIEABLE

	rowbraid
		name = "Row Braid"
		icon_state = "hair_rowbraid"
		flags = HAIR_TIEABLE

	regulationmohawk
		name = "Regulation Mohawk"
		icon_state = "hair_shavedmohawk"
		flags = HAIR_VERY_SHORT

	topknot
		name = "Topknot"
		icon_state = "hair_topknot"
		flags = HAIR_TIEABLE

	ronin
		name = "Ronin"
		icon_state = "hair_ronin"
		flags = HAIR_TIEABLE

	bowlcut2
		name = "Bowl2"
		icon_state = "hair_bowlcut2"

	thinning
		name = "Thinning"
		icon_state = "hair_thinning"
		flags = HAIR_VERY_SHORT

	thinningfront
		name = "Thinning Front"
		icon_state = "hair_thinningfront"
		flags = HAIR_VERY_SHORT

	thinningback
		name = "Thinning Back"
		icon_state = "hair_thinningrear"
		flags = HAIR_VERY_SHORT

	manbun
		name = "Manbun"
		icon_state = "hair_manbun"
		flags = HAIR_TIEABLE

	shy
		name = "Shy"
		icon_state = "hair_shy"

	jade
		name = "Jade"
		icon_state = "hair_jade"

	country
		name = "Country"
		icon_state = "hair_country"

	rosa
		name = "Rosa"
		icon_state = "hair_rosa"

	dave
		name = "Dave"
		icon_state = "hair_dave"

	mohawkunshaven
		name = "Unshaven Mohawk"
		icon_state = "hair_unshaven_mohawk"
/*
///////////////////////////////////
/  =---------------------------=  /
/  == Facial Hair Definitions ==  /
/  =---------------------------=  /
///////////////////////////////////
*/

/datum/sprite_accessory/facial_hair

	icon = 'icons/mob/Human_face.dmi'

	shaved
		name = "Shaved"
		icon_state = "bald"
		gender = NEUTER
		species_allowed = list(SPECIES_HUMAN,SPECIES_HUMAN_VATBORN,SPECIES_UNATHI,SPECIES_TAJ,SPECIES_SKRELL, "Machine", SPECIES_TESHARI, SPECIES_TESHARI,SPECIES_PROMETHEAN)

	watson
		name = "Watson Mustache"
		icon_state = "facial_watson"

	hogan
		name = "Hulk Hogan Mustache"
		icon_state = "facial_hogan" //-Neek

	vandyke
		name = "Van Dyke Mustache"
		icon_state = "facial_vandyke"

	chaplin
		name = "Square Mustache"
		icon_state = "facial_chaplin"

	selleck
		name = "Selleck Mustache"
		icon_state = "facial_selleck"

	neckbeard
		name = "Neckbeard"
		icon_state = "facial_neckbeard"

	fullbeard
		name = "Full Beard"
		icon_state = "facial_fullbeard"

	longbeard
		name = "Long Beard"
		icon_state = "facial_longbeard"

	vlongbeard
		name = "Very Long Beard"
		icon_state = "facial_wise"

	elvis
		name = "Elvis Sideburns"
		icon_state = "facial_elvis"
		species_allowed = list(SPECIES_HUMAN,SPECIES_PROMETHEAN,SPECIES_HUMAN_VATBORN,SPECIES_UNATHI)

	abe
		name = "Abraham Lincoln Beard"
		icon_state = "facial_abe"

	chinstrap
		name = "Chinstrap"
		icon_state = "facial_chin"

	hip
		name = "Hipster Beard"
		icon_state = "facial_hip"

	gt
		name = "Goatee"
		icon_state = "facial_gt"

	jensen
		name = "Adam Jensen Beard"
		icon_state = "facial_jensen"

	volaju
		name = "Volaju"
		icon_state = "facial_volaju"

	dwarf
		name = "Dwarf Beard"
		icon_state = "facial_dwarf"

	threeOclock
		name = "3 O'clock Shadow"
		icon_state = "facial_3oclock"

	threeOclockstache
		name = "3 O'clock Shadow and Moustache"
		icon_state = "facial_3oclockmoustache"

	fiveOclock
		name = "5 O'clock Shadow"
		icon_state = "facial_5oclock"

	fiveOclockstache
		name = "5 O'clock Shadow and Moustache"
		icon_state = "facial_5oclockmoustache"

	sevenOclock
		name = "7 O'clock Shadow"
		icon_state = "facial_7oclock"

	sevenOclockstache
		name = "7 O'clock Shadow and Moustache"
		icon_state = "facial_7oclockmoustache"

	mutton
		name = "Mutton Chops"
		icon_state = "facial_mutton"

	muttonstache
		name = "Mutton Chops and Moustache"
		icon_state = "facial_muttonmus"

	walrus
		name = "Walrus Moustache"
		icon_state = "facial_walrus"

	croppedbeard
		name = "Full Cropped Beard"
		icon_state = "facial_croppedfullbeard"

	chinless
		name = "Chinless Beard"
		icon_state = "facial_chinlessbeard"

	tribeard
		name = "Tribeard"
		icon_state = "facial_tribeard"

	moonshiner
		name = "Moonshiner"
		icon_state = "facial_moonshiner"

	martial
		name = "Martial Artist"
		icon_state = "facial_martialartist"
/*
///////////////////////////////////
/  =---------------------------=  /
/  == Alien Style Definitions ==  /
/  =---------------------------=  /
///////////////////////////////////
*/

/datum/sprite_accessory/hair
	una_spines_long
		name = "Long Unathi Spines"
		icon_state = "soghun_longspines"
		species_allowed = list(SPECIES_UNATHI)

	una_spines_short
		name = "Short Unathi Spines"
		icon_state = "soghun_shortspines"
		species_allowed = list(SPECIES_UNATHI)

	una_frills_long
		name = "Long Unathi Frills"
		icon_state = "soghun_longfrills"
		species_allowed = list(SPECIES_UNATHI)

	una_frills_short
		name = "Short Unathi Frills"
		icon_state = "soghun_shortfrills"
		species_allowed = list(SPECIES_UNATHI)

	una_horns
		name = "Unathi Horns"
		icon_state = "soghun_horns"
		species_allowed = list(SPECIES_UNATHI)

	una_bighorns
		name = "Unathi Big Horns"
		icon_state = "unathi_bighorn"
		species_allowed = list(SPECIES_UNATHI)

	una_smallhorns
		name = "Unathi Small Horns"
		icon_state = "unathi_smallhorn"
		species_allowed = list(SPECIES_UNATHI)

	una_ramhorns
		name = "Unathi Ram Horns"
		icon_state = "unathi_ramhorn"
		species_allowed = list(SPECIES_UNATHI)

	una_sidefrills
		name = "Unathi Side Frills"
		icon_state = "unathi_sidefrills"
		species_allowed = list(SPECIES_UNATHI)

//Skrell 'hairstyles'
	skr_tentacle_veryshort
		name = "Skrell Very Short Tentacles"
		icon_state = "skrell_hair_veryshort"
		species_allowed = list(SPECIES_SKRELL)
		gender = MALE

	skr_tentacle_short
		name = "Skrell Short Tentacles"
		icon_state = "skrell_hair_short"
		species_allowed = list(SPECIES_SKRELL)

	skr_tentacle_average
		name = "Skrell Average Tentacles"
		icon_state = "skrell_hair_average"
		species_allowed = list(SPECIES_SKRELL)

	skr_tentacle_verylong
		name = "Skrell Long Tentacles"
		icon_state = "skrell_hair_verylong"
		species_allowed = list(SPECIES_SKRELL)
		gender = FEMALE

//Tajaran hairstyles
	taj_ears
		name = "Tajaran Ears"
		icon_state = "ears_plain"
		species_allowed = list(SPECIES_TAJ)

	taj_ears_clean
		name = "Tajaran Clean"
		icon_state = "hair_clean"
		species_allowed = list(SPECIES_TAJ)

	taj_ears_bangs
		name = "Tajaran Bangs"
		icon_state = "hair_bangs"
		species_allowed = list(SPECIES_TAJ)

	taj_ears_braid
		name = "Tajaran Braid"
		icon_state = "hair_tbraid"
		species_allowed = list(SPECIES_TAJ)

	taj_ears_shaggy
		name = "Tajaran Shaggy"
		icon_state = "hair_shaggy"
		species_allowed = list(SPECIES_TAJ)

	taj_ears_mohawk
		name = "Tajaran Mohawk"
		icon_state = "hair_mohawk"
		species_allowed = list(SPECIES_TAJ)

	taj_ears_plait
		name = "Tajaran Plait"
		icon_state = "hair_plait"
		species_allowed = list(SPECIES_TAJ)

	taj_ears_straight
		name = "Tajaran Straight"
		icon_state = "hair_straight"
		species_allowed = list(SPECIES_TAJ)

	taj_ears_long
		name = "Tajaran Long"
		icon_state = "hair_long"
		species_allowed = list(SPECIES_TAJ)

	taj_ears_rattail
		name = "Tajaran Rat Tail"
		icon_state = "hair_rattail"
		species_allowed = list(SPECIES_TAJ)

	taj_ears_spiky
		name = "Tajaran Spiky"
		icon_state = "hair_tajspiky"
		species_allowed = list(SPECIES_TAJ)

	taj_ears_messy
		name = "Tajaran Messy"
		icon_state = "hair_messy"
		species_allowed = list(SPECIES_TAJ)

	taj_ears_curls
		name = "Tajaran Curly"
		icon_state = "hair_curly"
		species_allowed = list(SPECIES_TAJ)

	taj_ears_wife
		name = "Tajaran Housewife"
		icon_state = "hair_wife"
		species_allowed = list(SPECIES_TAJ)

	taj_ears_victory
		name = "Tajaran Victory Curls"
		icon_state = "hair_victory"
		species_allowed = list(SPECIES_TAJ)

	taj_ears_bob
		name = "Tajaran Bob"
		icon_state = "hair_tbob"
		species_allowed = list(SPECIES_TAJ)

	taj_ears_fingercurl
		name = "Tajaran Finger Curls"
		icon_state = "hair_fingerwave"
		species_allowed = list(SPECIES_TAJ)

//Teshari things
	teshari
		name = "Teshari Default"
		icon_state = "teshari_default"
		species_allowed = list(SPECIES_TESHARI)

	teshari_altdefault
		name = "Teshari Alt. Default"
		icon_state = "teshari_ears"
		species_allowed = list(SPECIES_TESHARI)

	teshari_tight
		name = "Teshari Tight"
		icon_state = "teshari_tight"
		species_allowed = list(SPECIES_TESHARI)

	teshari_excited
		name = "Teshari Spiky"
		icon_state = "teshari_spiky"
		species_allowed = list(SPECIES_TESHARI)

	teshari_spike
		name = "Teshari Spike"
		icon_state = "teshari_spike"
		species_allowed = list(SPECIES_TESHARI)

	teshari_long
		name = "Teshari Overgrown"
		icon_state = "teshari_long"
		species_allowed = list(SPECIES_TESHARI)

	teshari_burst
		name = "Teshari Starburst"
		icon_state = "teshari_burst"
		species_allowed = list(SPECIES_TESHARI)

	teshari_shortburst
		name = "Teshari Short Starburst"
		icon_state = "teshari_burst_short"
		species_allowed = list(SPECIES_TESHARI)

	teshari_mohawk
		name = "Teshari Mohawk"
		icon_state = "teshari_mohawk"
		species_allowed = list(SPECIES_TESHARI)

	teshari_pointy
		name = "Teshari Pointy"
		icon_state = "teshari_pointy"
		species_allowed = list(SPECIES_TESHARI)

	teshari_upright
		name = "Teshari Upright"
		icon_state = "teshari_upright"
		species_allowed = list(SPECIES_TESHARI)

	teshari_mane
		name = "Teshari Mane"
		icon_state = "teshari_mane"
		species_allowed = list(SPECIES_TESHARI)

	teshari_droopy
		name = "Teshari Droopy"
		icon_state = "teshari_droopy"
		species_allowed = list(SPECIES_TESHARI)

	teshari_mushroom
		name = "Teshari Mushroom"
		icon_state = "teshari_mushroom"
		species_allowed = list(SPECIES_TESHARI)

// Vox things
	vox_braid_long
		name = "Long Vox braid"
		icon_state = "vox_longbraid"
		species_allowed = list(SPECIES_VOX)

	vox_braid_short
		name = "Short Vox Braid"
		icon_state = "vox_shortbraid"
		species_allowed = list(SPECIES_VOX)

	vox_quills_short
		name = "Short Vox Quills"
		icon_state = "vox_shortquills"
		species_allowed = list(SPECIES_VOX)

	vox_quills_kingly
		name = "Kingly Vox Quills"
		icon_state = "vox_kingly"
		species_allowed = list(SPECIES_VOX)

	vox_quills_mohawk
		name = "Quill Mohawk"
		icon_state = "vox_mohawk"
		species_allowed = list(SPECIES_VOX)

/datum/sprite_accessory/facial_hair

	taj_sideburns
		name = "Tajaran Sideburns"
		icon_state = "facial_sideburns"
		species_allowed = list(SPECIES_TAJ)

	taj_mutton
		name = "Tajaran Mutton"
		icon_state = "facial_mutton"
		species_allowed = list(SPECIES_TAJ)

	taj_pencilstache
		name = "Tajaran Pencilstache"
		icon_state = "facial_pencilstache"
		species_allowed = list(SPECIES_TAJ)

	taj_moustache
		name = "Tajaran Moustache"
		icon_state = "facial_moustache"
		species_allowed = list(SPECIES_TAJ)

	taj_goatee
		name = "Tajaran Goatee"
		icon_state = "facial_goatee"
		species_allowed = list(SPECIES_TAJ)

	taj_smallstache
		name = "Tajaran Smallsatche"
		icon_state = "facial_smallstache"
		species_allowed = list(SPECIES_TAJ)

//unathi horn beards and the like

	una_chinhorn
		name = "Unathi Chin Horn"
		icon_state = "facial_chinhorns"
		species_allowed = list(SPECIES_UNATHI)

	una_hornadorns
		name = "Unathi Horn Adorns"
		icon_state = "facial_hornadorns"
		species_allowed = list(SPECIES_UNATHI)

	una_spinespikes
		name = "Unathi Spine Spikes"
		icon_state = "facial_spikes"
		species_allowed = list(SPECIES_UNATHI)

	una_dorsalfrill
		name = "Unathi Dorsal Frill"
		icon_state = "facial_dorsalfrill"
		species_allowed = list(SPECIES_UNATHI)


//Teshari things
	teshari_beard
		name = "Teshari Beard"
		icon_state = "teshari_chin"
		species_allowed = list(SPECIES_TESHARI)
		gender = NEUTER

	teshari_scraggly
		name = "Teshari Scraggly"
		icon_state = "teshari_scraggly"
		species_allowed = list(SPECIES_TESHARI)
		gender = NEUTER

	teshari_chops
		name = "Teshari Chops"
		icon_state = "teshari_gap"
		species_allowed = list(SPECIES_TESHARI)
		gender = NEUTER

/*
////////////////////////////
/  =--------------------=  /
/  ==  Body Markings   ==  /
/  =--------------------=  /
////////////////////////////
*/
/datum/sprite_accessory/marking
	icon = 'icons/mob/human_races/markings.dmi'
	do_colouration = 1 //Almost all of them have it, COLOR_ADD

	//Empty list is unrestricted. Should only restrict the ones that make NO SENSE on other species,
	//like Tajaran inner-ear coloring overlay stuff.
	species_allowed = list()

	var/body_parts = list() //A list of bodyparts this covers, in organ_tag defines
	//Reminder: BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND,BP_TORSO,BP_GROIN,BP_HEAD

	tat_heart
		name = "Tattoo (Heart, Torso)"
		icon_state = "tat_heart"
		body_parts = list(BP_TORSO)

	tat_hive
		name = "Tattoo (Hive, Back)"
		icon_state = "tat_hive"
		body_parts = list(BP_TORSO)

	tat_nightling
		name = "Tattoo (Nightling, Back)"
		icon_state = "tat_nightling"
		body_parts = list(BP_TORSO)

	tat_campbell
		name = "Tattoo (Campbell, R.Arm)"
		icon_state = "tat_campbell"
		body_parts = list(BP_R_ARM)

		left
			name = "Tattoo (Campbell, L.Arm)"
			body_parts = list(BP_L_ARM)

	tat_tiger
		name = "Tattoo (Tiger Stripes, Body)"
		icon_state = "tat_tiger"
		body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND,BP_TORSO,BP_GROIN)

	taj_paw_socks
		name = "Socks Coloration (Taj)"
		icon_state = "taj_pawsocks"
		body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND)
		species_allowed = list(SPECIES_TAJ)

	una_paw_socks
		name = "Socks Coloration (Una)"
		icon_state = "una_pawsocks"
		body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND)
		species_allowed = list(SPECIES_UNATHI)

	paw_socks
		name = "Socks Coloration (Generic)"
		icon_state = "pawsocks"
		body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND)
		species_allowed = list(SPECIES_TAJ, SPECIES_UNATHI)

	paw_socks_belly
		name = "Socks,Belly Coloration (Generic)"
		icon_state = "pawsocksbelly"
		body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND,BP_GROIN,BP_TORSO)
		species_allowed = list(SPECIES_TAJ, SPECIES_UNATHI)

	belly_hands_feet
		name = "Hands,Feet,Belly Color (Minor)"
		icon_state = "bellyhandsfeetsmall"
		body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND,BP_GROIN,BP_TORSO)
		species_allowed = list(SPECIES_TAJ, SPECIES_UNATHI)

	hands_feet_belly_full
		name = "Hands,Feet,Belly Color (Major)"
		icon_state = "bellyhandsfeet"
		body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND,BP_GROIN,BP_TORSO)
		species_allowed = list(SPECIES_TAJ, SPECIES_UNATHI)

	hands_feet_belly_full_female
		name = "Hands,Feet,Belly Color (Major, Female)"
		icon_state = "bellyhandsfeet_female"
		body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND,BP_GROIN,BP_TORSO)
		species_allowed = list(SPECIES_TAJ)

	patches
		name = "Color Patches"
		icon_state = "patches"
		body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND,BP_TORSO,BP_GROIN)
		species_allowed = list(SPECIES_TAJ)

	patchesface
		name = "Color Patches (Face)"
		icon_state = "patchesface"
		body_parts = list(BP_HEAD)
		species_allowed = list(SPECIES_TAJ)

	bands
		name = "Color Bands"
		icon_state = "bands"
		body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND,BP_TORSO,BP_GROIN)

	bandsface
		name = "Color Bands (Face)"
		icon_state = "bandsface"
		body_parts = list(BP_HEAD)

	tiger_stripes
		name = "Tiger Stripes"
		icon_state = "tiger"
		body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_TORSO,BP_GROIN)
		species_allowed = list(SPECIES_TAJ) //There's a tattoo for non-cats

	tigerhead
		name = "Tiger Stripes (Head, Minor)"
		icon_state = "tigerhead"
		body_parts = list(BP_HEAD)

	tigerface
		name = "Tiger Stripes (Head, Major)"
		icon_state = "tigerface"
		body_parts = list(BP_HEAD)
		species_allowed = list(SPECIES_TAJ) //There's a tattoo for non-cats

	backstripe
		name = "Back Stripe"
		icon_state = "backstripe"
		body_parts = list(BP_TORSO)

	//Taj specific stuff
	taj_belly
		name = "Belly Fur (Taj)"
		icon_state = "taj_belly"
		body_parts = list(BP_TORSO)
		species_allowed = list(SPECIES_TAJ)

	taj_bellyfull
		name = "Belly Fur Wide (Taj)"
		icon_state = "taj_bellyfull"
		body_parts = list(BP_TORSO)
		species_allowed = list(SPECIES_TAJ)

	taj_earsout
		name = "Outer Ear (Taj)"
		icon_state = "taj_earsout"
		body_parts = list(BP_HEAD)
		species_allowed = list(SPECIES_TAJ)

	taj_earsin
		name = "Inner Ear (Taj)"
		icon_state = "taj_earsin"
		body_parts = list(BP_HEAD)
		species_allowed = list(SPECIES_TAJ)

	taj_nose
		name = "Nose Color (Taj)"
		icon_state = "taj_nose"
		body_parts = list(BP_HEAD)
		species_allowed = list(SPECIES_TAJ)

	taj_crest
		name = "Chest Fur Crest (Taj)"
		icon_state = "taj_crest"
		body_parts = list(BP_TORSO)
		species_allowed = list(SPECIES_TAJ)

	taj_muzzle
		name = "Muzzle Color (Taj)"
		icon_state = "taj_muzzle"
		body_parts = list(BP_HEAD)
		species_allowed = list(SPECIES_TAJ)

	taj_face
		name = "Cheeks Color (Taj)"
		icon_state = "taj_face"
		body_parts = list(BP_HEAD)
		species_allowed = list(SPECIES_TAJ)

	taj_all
		name = "All Taj Head (Taj)"
		icon_state = "taj_all"
		body_parts = list(BP_HEAD)
		species_allowed = list(SPECIES_TAJ)

	//Una specific stuff
	una_face
		name = "Face Color (Una)"
		icon_state = "una_face"
		body_parts = list(BP_HEAD)
		species_allowed = list(SPECIES_UNATHI)

	una_facelow
		name = "Face Color Low (Una)"
		icon_state = "una_facelow"
		body_parts = list(BP_HEAD)
		species_allowed = list(SPECIES_UNATHI)

	una_scutes
		name = "Scutes (Una)"
		icon_state = "una_scutes"
		body_parts = list(BP_TORSO)
		species_allowed = list(SPECIES_UNATHI)

//skin styles - WIP
//going to have to re-integrate this with surgery
//let the icon_state hold an icon preview for now
/datum/sprite_accessory/skin
	icon = 'icons/mob/human_races/r_human.dmi'

	human
		name = "Default human skin"
		icon_state = "default"
		species_allowed = list(SPECIES_HUMAN,SPECIES_HUMAN_VATBORN)

	human_tatt01
		name = "Tatt01 human skin"
		icon_state = "tatt1"
		species_allowed = list(SPECIES_HUMAN,SPECIES_HUMAN_VATBORN)

	tajaran
		name = "Default tajaran skin"
		icon_state = "default"
		icon = 'icons/mob/human_races/r_tajaran.dmi'
		species_allowed = list(SPECIES_TAJ)

	unathi
		name = "Default Unathi skin"
		icon_state = "default"
		icon = 'icons/mob/human_races/r_lizard.dmi'
		species_allowed = list(SPECIES_UNATHI)

	skrell
		name = "Default skrell skin"
		icon_state = "default"
		icon = 'icons/mob/human_races/r_skrell.dmi'
		species_allowed = list(SPECIES_SKRELL)
