/obj/item/alch
	name = "dust"
	desc = ""
	icon = 'icons/roguetown/misc/alchemy.dmi'
	icon_state = "irondust"
	w_class = WEIGHT_CLASS_TINY
	dust_result = null

// rune dust results

/obj/item/rune/spell/fire_rune
	dust_result = /obj/item/alch/firedust

/obj/item/rune/spell/air_rune
	dust_result = /obj/item/alch/airdust

/obj/item/rune/spell/water_rune
	dust_result = /obj/item/alch/waterdust

/obj/item/rune/spell/earth_rune
	dust_result = /obj/item/alch/earthdust

/obj/item/rune/spell/blank_rune
	dust_result = /obj/item/alch/runedust

//potion ingredients, sorted by potion

/obj/item/alch/viscera
	name = "viscera"
	icon_state = "viscera"
	possible_potion = "healthpot"

/obj/item/alch/waterdust
	name = "water rune dust"
	icon_state = "runedust"
	possible_potion = "mindcomp"

/obj/item/alch/bonemeal
	name = "bone meal"
	icon_state = "bonemeal"
	possible_potion = "manapot"

/obj/item/alch/seeddust
	name = "seed dust"
	icon_state = "seeddust"
	possible_potion = "manapot"

/obj/item/alch/runedust
	name = "rune dust"
	icon_state = "runedust"
	possible_potion = "strongmana"

/obj/item/alch/coaldust
	name = "coal dust"
	icon_state = "coaldust"
	possible_potion = "antidote"

/obj/item/alch/silverdust
	name = "silver dust"
	icon_state = "silverdust"
	possible_potion = "diseasecure"

/obj/item/alch/magicdust
	name = "magicdust"
	//icon_state = "magicdust"
	possible_potion = "buffpot"

/obj/item/alch/firedust
	name = "fire rune dust"
	icon_state = "runedust"
	possible_potion = "bodycomp"

/obj/item/alch/sinew
	name = "sinew"
	icon_state = "sinew"
	dropshrink = 0.5
	dust_result = /obj/item/alch/viscera
	possible_potion = "strpot"

/obj/item/alch/irondust
	name = "iron dust"
	icon_state = "irondust"
	possible_potion = "strpot"

/obj/item/alch/airdust
	name = "air rune dust"
	icon_state = "runedust"
	possible_potion = "stronghealth"

/obj/item/alch/swampdust
	name = "swampweed dust"
	icon_state = "tobaccodust"
	possible_potion = "intpot"

/obj/item/alch/tobaccodust
	name = "tobacco dust"
	icon_state = "tobaccodust"
	possible_potion = "perpot"

/obj/item/alch/earthdust
	name = "earth rune dust"
	//icon_state = "earthdust"
	possible_potion = "spiritcomp"

/obj/item/alch/bone
	name = "tail bone"
	icon_state = "bone"
	desc = "The only bone in creachers with alchemical properties."
	force = 7
	throwforce = 5
	w_class = WEIGHT_CLASS_SMALL
	dust_result = /obj/item/alch/bonemeal
	possible_potion = "conpot"

/obj/item/alch/horn
	name = "troll horn"
	icon_state = "horn"
	desc = "The horn of a bog troll."
	force = 7
	throwforce = 5
	w_class = WEIGHT_CLASS_NORMAL
	dust_result = /obj/item/alch/earthdust

//Modifier ingredients
/obj/item/alch/golddust
	name = "gold dust"
	icon_state = "golddust"
	possible_potion = "strong"

/obj/item/alch/feaudust
	name = "feau dust"
	icon_state = "feaudust"
	possible_potion = "long"

	major_pot = /datum/alch_cauldron_recipe/spd_potion
	med_pot = /datum/alch_cauldron_recipe/big_mana_potion
	minor_pot = /datum/alch_cauldron_recipe/disease_cure

/obj/item/alch/ozium
	name = "alchemical ozium"
	desc = "Alchemical processing has left it unfit for consumption."
	icon_state = "whitepowder"

	major_pot = /datum/alch_cauldron_recipe/big_stamina_potion
	med_pot = /datum/alch_cauldron_recipe/lck_potion
	minor_pot = /datum/alch_cauldron_recipe/int_potion

//BEGIN THE HERBS

/obj/item/alch/atropa
	name = "atropa"
	icon_state = "atropa"

	major_pot = /datum/alch_cauldron_recipe/doompoison
	med_pot = /datum/alch_cauldron_recipe/berrypoison
	minor_pot = /datum/alch_cauldron_recipe/stam_poison

/obj/item/alch/matricaria
	name = "matricaria"
	icon_state = "matricaria"

	major_pot = /datum/alch_cauldron_recipe/berrypoison
	med_pot = /datum/alch_cauldron_recipe/per_potion
	minor_pot = /datum/alch_cauldron_recipe/doompoison

/obj/item/alch/symphitum
	name = "symphitum"
	icon_state = "symphitum"

	major_pot = /datum/alch_cauldron_recipe/health_potion
	med_pot = /datum/alch_cauldron_recipe/stam_poison
	minor_pot = /datum/alch_cauldron_recipe/antidote

/obj/item/alch/taraxacum
	name = "taraxacum"
	icon_state = "taraxacum"

	major_pot = /datum/alch_cauldron_recipe/stam_poison
	med_pot = /datum/alch_cauldron_recipe/health_potion
	minor_pot = /datum/alch_cauldron_recipe/antidote

/obj/item/alch/euphrasia
	name = "euphrasia"
	icon_state = "euphrasia"

	major_pot = /datum/alch_cauldron_recipe/spd_potion
	med_pot = /datum/alch_cauldron_recipe/stam_poison
	minor_pot = /datum/alch_cauldron_recipe/int_potion

/obj/item/alch/paris
	name = "paris"
	icon_state = "paris"

	major_pot = /datum/alch_cauldron_recipe/big_stam_poison
	med_pot = /datum/alch_cauldron_recipe/berrypoison
	minor_pot = /datum/alch_cauldron_recipe/stam_poison

/obj/item/alch/calendula
	name = "calendula"
	icon_state = "calendula"

	major_pot = /datum/alch_cauldron_recipe/big_health_potion
	med_pot = /datum/alch_cauldron_recipe/end_potion
	minor_pot = /datum/alch_cauldron_recipe/health_potion

/obj/item/alch/mentha
	name = "mentha"
	icon_state = "mentha"

	major_pot = /datum/alch_cauldron_recipe/per_potion
	med_pot = /datum/alch_cauldron_recipe/int_potion
	minor_pot = /datum/alch_cauldron_recipe/stamina_potion

/obj/item/alch/urtica
	name = "urtica"
	icon_state = "urtica"

	major_pot = /datum/alch_cauldron_recipe/health_potion
	med_pot = /datum/alch_cauldron_recipe/spd_potion
	minor_pot = /datum/alch_cauldron_recipe/stamina_potion

/obj/item/alch/salvia
	name = "salvia"
	icon_state = "salvia"

	major_pot = /datum/alch_cauldron_recipe/con_potion
	med_pot = /datum/alch_cauldron_recipe/str_potion
	minor_pot = /datum/alch_cauldron_recipe/end_potion

/obj/item/alch/hypericum
	name = "hypericum"
	icon_state = "hypericum"

	major_pot = /datum/alch_cauldron_recipe/stamina_potion
	med_pot = /datum/alch_cauldron_recipe/big_mana_potion
	minor_pot = /datum/alch_cauldron_recipe/antidote

/obj/item/alch/benedictus
	name = "benedictus"
	icon_state = "benedictus"

	major_pot = /datum/alch_cauldron_recipe/big_stamina_potion
	med_pot = /datum/alch_cauldron_recipe/stamina_potion
	minor_pot = /datum/alch_cauldron_recipe/int_potion

/obj/item/alch/valeriana
	name = "valeriana"
	icon_state = "valeriana"

	major_pot = /datum/alch_cauldron_recipe/health_potion
	med_pot = /datum/alch_cauldron_recipe/spd_potion
	minor_pot = /datum/alch_cauldron_recipe/stam_poison

/obj/item/alch/artemisia
	name = "artemisia"
	icon_state = "artemisia"

	major_pot = /datum/alch_cauldron_recipe/lck_potion
	med_pot = /datum/alch_cauldron_recipe/spd_potion
	minor_pot = /datum/alch_cauldron_recipe/health_potion

//dust mix crafting
/datum/crafting_recipe/roguetown/alch/feaudust
	name = "feau dust"
	result = list(/obj/item/alch/feaudust,
				/obj/item/alch/feaudust)
	reqs = list(/obj/item/alch/irondust = 2,
				/obj/item/alch/golddust = 1)
	structurecraft = /obj/structure/table/wood
	verbage = "mixes"
	craftsound = 'sound/foley/scribble.ogg'
	skillcraft = /datum/skill/misc/alchemy
	craftdiff = 0

/datum/crafting_recipe/roguetown/alch/magicdust
	name = "magic dust"
	result = list(/obj/item/alch/magicdust)
	reqs = list(/obj/item/alch/waterdust = 1, /obj/item/alch/firedust = 1,
				/obj/item/alch/airdust = 1, /obj/item/alch/earthdust = 1)
	structurecraft = /obj/structure/table/wood
	verbage = "mixes"
	craftsound = 'sound/foley/scribble.ogg'
	skillcraft = /datum/skill/misc/alchemy
	craftdiff = 0
