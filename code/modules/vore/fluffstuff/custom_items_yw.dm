// **************
// Unleashed_Mana
// **************
/obj/item/weapon/fluff/zekewatch
	name = "Zeke's pocketwatch"
	desc = "Looks like it's broken... or is it?"
	w_class = 1.0
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "zekewatch"

/obj/item/weapon/fluff/zekewatch/attack_self(mob/living/user)
	if(user.r_hand == src || user.l_hand == src)
		var/time1 = rand(0,11)
		var/time2 = rand(0,59)

		if(time1 < 10)
			time1 = "0[time1]"
		if(time2 < 10)
			time2 = "0[time2]"

		user.visible_message("<span class='rose'>[src] displays [time1]:[time2]</span>")
	else
		return ..()
	return

/obj/item/weapon/kitchenknife/tacknife/unathiknife/fluff/eravik_vessi_1
	name = "Noctis"
	desc = "A strange blade made of some kind of black metal. It feels... incomplete."
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "eravikblade"

/obj/item/weapon/reagent_containers/food/drinks/flask/fluff/david_3
	name = "David's lucky bottle"
	desc = "As long as there is something in it, nothing can go wrong."
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "davidbottle"

/obj/item/weapon/material/kitchen/utensil/fork/fluff/ragna_1
	name = "Ragna's fork"
	desc = "\"FEAR RAGNA!\""
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "ragnafork"
	icon_override = 'icons/vore/custom_items_yw.dmi'
	item_state_slots = list(slot_r_hand_str = "ragnafork_r", slot_l_hand_str = "ragnafork_l")

// *********
// Capt_matt
// *********
/obj/item/weapon/material/hatchet/unathiknife/fluff/payton_joghs_1
	name = "Payton's Knife"
	desc = "It appears to be a traditional unathi knife, though with 'Payton' written on the side and appearing to be made of steel."
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "paytonknife"

// **************
// BlackAngelsAce
// **************
/obj/item/weapon/oldtwohanded/spear/fluff/madoka_koto_1
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_override = 'icons/vore/custom_items_yw.dmi'
	icon_state = "madokaspear0"
	base_icon = "madokaspear"

	item_state_slots = list(slot_back_str = "madokaspear0_mob")

	name = "Madoka's spear"
	desc = "A 10 foot long spear, with a sturdy wooden shaft to which is attached a strange, double spiked steel blade. One is slightly larger than the other."
	force = 14
	w_class = 5.0
	slot_flags = SLOT_BACK
	force_wielded = 22 // Was 13, Buffed - RR
	throwforce = 20
	throw_speed = 3
	edge = 0
	sharp = 1
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb = list("stabbed", "pierced", "jabbed", "torn", "gored")

// *************
// GeneralPantsu
// *************

//Amara Faell

/obj/item/weapon/flame/lighter/zippo/fluff/amara
	desc = "A zippo that comes in a metallic blood red case. How the flame can be lime green is an enigma in itself."
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "bloodredzippo"

/obj/item/device/modkit_conversion/fluff/amara_hos_kit
	name = "Amara's modkit"
	desc = "A kit containing all the needed tools and parts to modify a Head of security armored coat. It has a red wolf painted on it."

	icon = 'icons/vore/custom_items_vr.dmi'
	icon_state = "modkit"

	from_suit = /obj/item/clothing/suit/storage/vest/hoscoat
	to_suit = /obj/item/clothing/suit/storage/vest/hoscoat/amara_hos

//Nika Domashev

/obj/item/device/modkit_conversion/fluff/nika_sec_kit
	name = "Nika's modkit"
	desc = "A kit containing all the needed tools and parts to modify a Officer Armor Vest."

	icon = 'icons/vore/custom_items_vr.dmi'
	icon_state = "modkit"

	from_suit = /obj/item/clothing/suit/storage/vest/officer
	to_suit = /obj/item/clothing/suit/storage/vest/officer/fluff/nika

// *******
// Dawidoe
// *******
/obj/item/weapon/flame/lighter/zippo/fluff/melissa
	name = "Zippo"
	desc = "A custom made zippo lighter with word 'Mel' engraved in white font on the bottom right corner. It's black, with red lines around the edges."
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "melzippo"

/obj/item/device/modkit_conversion/fluff/melissa_gun_kit
	name = "Melissa's modkit"
	desc = "A kit containing all the needed tools and parts to modify a 45 Pistol."

	icon = 'icons/vore/custom_items_vr.dmi'
	icon_state = "modkit"

	from_suit = /obj/item/weapon/gun/projectile/sec/flash
	to_suit = /obj/item/weapon/gun/projectile/fluff/m1911

// *******
// Deathty
// *******

/obj/item/device/modkit_conversion/fluff/art_hos_kit
	name = "Arthur's modkit"
	desc = "A kit containing all the needed tools and parts to modify a Head of security armored coat."

	icon = 'icons/vore/custom_items_vr.dmi'
	icon_state = "modkit"

	from_suit = /obj/item/clothing/suit/storage/vest/hoscoat
	to_suit = /obj/item/clothing/suit/storage/vest/hoscoat/art_hos

// ************
// championfire
// ************

//Anoki Windroar

/obj/item/weapon/implanter/reagent_generator/roiz/anoki
	implant_type = /obj/item/weapon/implant/reagent_generator/roiz/anoki

/obj/item/weapon/implant/reagent_generator/roiz/anoki
	name = "egg laying implant"
	desc = "This is an implant that allows the user to lay eggs."
	usable_volume = 500
	transfer_amount = 50

	empty_message = list("Your lower belly feels smooth and empty. Sorry, we're out of eggs!", "The reduced pressure in your lower belly tells you there are no more eggs.")
	full_message = list("Your lower belly looks swollen with irregular bumps, and it feels heavy.", "Your lower abdomen feels really heavy, making it a bit hard to walk.")
	emote_descriptor = list("an egg right out of Anoki's lower belly!", "into Anoki' belly firmly, forcing him to lay an egg!", "Anoki really tight, who promptly lays an egg!")

// ********
// Vitorhks
// ********

//Jessica Mayer

/obj/item/device/modkit_conversion/fluff/jessica_sec_kit
	name = "Jessica's modkit"
	desc = "A kit containing all the needed tools and parts to modify a Officer Armor Vest."

	icon = 'icons/vore/custom_items_vr.dmi'
	icon_state = "modkit"

	from_suit = /obj/item/clothing/suit/storage/vest/officer
	to_suit = /obj/item/clothing/suit/storage/vest/officer/fluff/jessica

// *******
// ConZon4
// *******

//Dillan McGraw

//	/obj/item/weapon/storage/fluff/cane/dillan
//	var/max_w_class = 1
//	var/max_storage_space = 4
//	throwforce = 7
//	force = 5
//	name = "Polished Cane"
//	desc = "A wooden cane, polished to a fine gleam. It appears weathered and worn down from extended use. On the handle, the name 'Dillan' can be read."
//	icon = 'icons/vore/custom_items_yw.dmi'
//	icon_state = "fancycane"
//	item_icons = list(
//		slot_l_hand_str = 'icons/vore/custom_items_left_hand_yw.dmi',
//		slot_r_hand_str = 'icons/vore/custom_items_right_hand_yw.dmi',
//		)
//
// ********
// lukevale
// ********

// This implant gives me cancer -Izac

//Mira Rezus

/obj/item/weapon/implant/reagent_generator/tempest/mira
	name = "lactation implant"
	desc = "This is an implant that allows the user to lactate."
	usable_volume = 1000

	empty_message = list("Your breasts feel unusually empty.", "Your chest feels lighter - your milk supply is empty!", "Your milk reserves have run dry.", "Your grateful nipples ache as the last of your milk leaves them.")
	full_message = list("Your breasts ache badly - they are swollen and feel fit to burst!", "You need to be milked! Your breasts feel bloated, eager for release.", "Your milky breasts are starting to leak...")
	emote_descriptor = list("squeezes Mira's nipples, milking them", "milks Mira's breasts", "extracts milk")
	self_emote_descriptor = list("squeeze out", "extract")
	random_emote = list("surpresses a moan", "gasps sharply", "bites her lower lip")
	verb_name = "Milk"
	verb_desc = "Grab Mira's breasts and milk her, storing her fresh, warm milk in a container. This will undoubtedly turn her on."

/obj/item/weapon/implanter/reagent_generator/mira
	implant_type = /obj/item/weapon/implant/reagent_generator/tempest/mira

//Natalya Vospit

/obj/item/weapon/implant/reagent_generator/tempest/natalya
	name = "lactation implant"
	desc = "This is an implant that allows the user to lactate."
	usable_volume = 1000

	empty_message = list("Your breasts feel unusually empty.", "Your chest feels lighter - your milk supply is empty!", "Your milk reserves have run dry.", "Your grateful nipples ache as the last of your milk leaves them.")
	full_message = list("Your breasts ache badly - they are swollen and feel fit to burst!", "You need to be milked! Your breasts feel bloated, eager for release.", "Your milky breasts are starting to leak...")
	emote_descriptor = list("squeezes Natalya's nipples, milking them", "milks Natalya's breasts", "extracts milk")
	self_emote_descriptor = list("squeeze out", "extract")
	random_emote = list("surpresses a moan", "gasps sharply", "bites her lower lip")
	verb_name = "Milk"
	verb_desc = "Grab Natalya's breasts and milk her, storing her fresh, warm milk in a container. This will undoubtedly turn her on."

/obj/item/weapon/implanter/reagent_generator/natalya
	implant_type = /obj/item/weapon/implant/reagent_generator/tempest/natalya

// **************
// VanesaFancyFin
// **************

//Ire

/obj/item/weapon/bikehorn/fluff/chew_ire
	name = "Chew toy"
	desc = "A toy normally used by dogs to play with or chew on"
	slot_flags = SLOT_MASK
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "chew"
	item_state = "chew"
	item_icons = list(
		slot_l_hand_str = 'icons/vore/custom_items_left_hand_yw.dmi',
		slot_r_hand_str = 'icons/vore/custom_items_right_hand_yw.dmi',
		)
