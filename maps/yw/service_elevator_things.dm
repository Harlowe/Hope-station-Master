/obj/turbolift_map_holder/lumber
	icon = 'icons/obj/turbolift_preview_5x5.dmi'
	depth = 4
	lift_size_x = 4
	lift_size_y = 4

/obj/turbolift_map_holder/lumber/serviceelevator
	name = "Lumber turbolift Service Elevator map placeholder"
	dir = NORTH

	areas_to_use = list(
		/area/turbolift/lumber_floor_underground_mine,
		/area/turbolift/lumber_floor_basement,
		/area/turbolift/lumber_floor_main_level,
		/area/turbolift/lumber_floor_dorms
		)
/obj/turbolift_map_holder/lumber/medevator
	icon = 'icons/obj/turbolift_preview_3x3.dmi'
	depth = 2
	lift_size_x = 2
	lift_size_y = 2
	dir = EAST
	name = "Lumber turbolift Medbay Elevator map placeholder"

	areas_to_use = list(
		/area/turbolift/lumber_floor_medical,
		/area/turbolift/lumber_floor_medibasement,
		)