/obj/item/rogueweapon/sword/iron/scythe
	name = "bone scythe"
	desc = "A terrifying scythe made out of bones and iron."
	icon_state = "cannibal"
	minstr = 6
	smeltresult = null
	max_integrity = 100
	sellprice = 10


/obj/item/rogueweapon/sword/iron/cleaver
	name = "iron cleaver"
	desc = "A terrifying cleaver made out of iron."
	icon_state = "cleaver"
	minstr = 6
	smeltresult = null
	max_integrity = 100
	sellprice = 10


/obj/item/rogueweapon/sword/iron/cultist_Sword
	name = "enchanted sword"
	desc = "A terrifying sword made out of iron, being slightly enchanted."
	icon_state = "cultblade"
	minstr = 6
	smeltresult = null
	max_integrity = 100
	sellprice = 10



















//---------------------------------------

/obj/item/rogueweapon/mace/goden/steel/warhammer
	name = "warhammer"
	desc = "A great dwarven warhammer made of stern steel, enscratched with oaths of battle and time."
	icon_state = "warhammer"
	wlength = WLENGTH_GREAT
	swingsound = BLUNTWOOSH_HUGE
	sellprice = 100

/obj/item/rogueweapon/mace/goden/steel/warhammer/getonmobprop(tag)
	. = ..()
	if(tag)
		switch(tag)
			if("gen")
				return list("shrink" = 0.6,"sx" = -7,"sy" = 2,"nx" = 7,"ny" = 3,"wx" = -2,"wy" = 1,"ex" = 1,"ey" = 1,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = -38,"sturn" = 37,"wturn" = 30,"eturn" = -30,"nflip" = 0,"sflip" = 8,"wflip" = 8,"eflip" = 0)
			if("wielded")
				return list("shrink" = 0.6,"sx" = 5,"sy" = -3,"nx" = -5,"ny" = -2,"wx" = -5,"wy" = -1,"ex" = 3,"ey" = -2,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = 7,"sturn" = -7,"wturn" = 16,"eturn" = -22,"nflip" = 8,"sflip" = 0,"wflip" = 8,"eflip" = 0)
			if("onbelt")
				return list("shrink" = 0.3,"sx" = -2,"sy" = -5,"nx" = 4,"ny" = -5,"wx" = 0,"wy" = -5,"ex" = 2,"ey" = -5,"nturn" = 0,"sturn" = 0,"wturn" = 0,"eturn" = 0,"nflip" = 0,"sflip" = 0,"wflip" = 0,"eflip" = 0,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0)

/datum/anvil_recipe/weapons/steel/warhammer
	name = "Steel Warhammer (+Small Log)"
	appro_skill = /datum/skill/craft/weaponsmithing
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/grown/log/tree/small)
	created_item = 	/obj/item/rogueweapon/mace/goden/steel/warhammer
	craftdiff = 2
