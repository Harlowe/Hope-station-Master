/obj/item/weapon/gun/projectile/revolvershotgun
	name = "Jackhammer"
	desc = "Uses 12g rounds."
	icon = 'icons/obj/gun_yw.dmi'
	icon_state = "revolvshot"
	item_state = null
	w_class = ITEMSIZE_LARGE
	force = 10
	caliber = "12g"
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 4, TECH_ILLEGAL = 2)
	slot_flags = SLOT_BACK|SLOT_BELT|SLOT_HOLSTER
	handle_casings = CYCLE_CASINGS
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/m12gdrumjack/beanbag
	allowed_magazines = list(/obj/item/ammo_magazine/m12gdrumjack)
	projectile_type = /obj/item/projectile/bullet/shotgun

/obj/item/weapon/gun/projectile/revolvershotgun/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "revolvshot"
	else
		icon_state = "revolvshot-empty"
	return


/obj/item/ammo_magazine/m12gdrumjack
	name = "drum magazine (12 gauge slug)"
	desc = "A magazine for a revolver shotgun."
	icon = 'icons/obj/ammo_yw.dmi'
	icon_state = "c12g"
	mag_type = MAGAZINE
	caliber = "12g"
	matter = list(DEFAULT_WALL_MATERIAL = 13000) //did the math. now fixed the exploityness of this thing. Have fun!
	ammo_type = /obj/item/ammo_casing/a12g
	max_ammo = 4
	multiple_sprites = 1

/obj/item/ammo_magazine/m12gdrumjack/beanbag
	name = "drum magazine (12 gauge beanbag)"
	ammo_type = /obj/item/ammo_casing/a12g/beanbag

/obj/item/ammo_magazine/m12gdrumjack/pellet
	name = "drum magazine (12 gauge pellet)"
	ammo_type = /obj/item/ammo_casing/a12g/pellet

/obj/item/ammo_magazine/m12gdrumjack/flash
	name = "drum magazine (12 gauge flash)"
	ammo_type = /obj/item/ammo_casing/a12g/flash

/obj/item/ammo_magazine/m12gdrumjack/empty
	name = "drum magazine (12 gauge)"
	initial_ammo = 0