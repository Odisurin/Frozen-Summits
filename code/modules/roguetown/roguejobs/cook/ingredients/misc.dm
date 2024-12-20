
/obj/item/reagent_containers/food/snacks/rogue/raisins
	name = "raisins"
	desc = "A handful of sweet, dried grape raisins."
	icon = 'icons/roguetown/items/produce.dmi'
	icon_state = "raisins5"
	bitesize = 5
	list_reagents = list(/datum/reagent/consumable/nutriment = 5)
	w_class = WEIGHT_CLASS_TINY
	tastes = list("dried fruit" = 1)
	foodtype = GRAIN
	eat_effect = null
	rotprocess = null

/obj/item/reagent_containers/food/snacks/rogue/raisins/On_Consume(mob/living/eater)
	..()
	if(bitecount == 1)
		icon_state = "raisins4"
	if(bitecount == 2)
		icon_state = "raisins3"
	if(bitecount == 3)
		icon_state = "raisins2"
	if(bitecount == 4)
		icon_state = "raisins1"

/obj/item/reagent_containers/food/snacks/rogue/raisins/CheckParts(list/parts_list, datum/crafting_recipe/R)
	..()
	for(var/obj/item/reagent_containers/food/snacks/M in parts_list)
		color = M.filling_color
		if(M.reagents)
			M.reagents.remove_reagent(/datum/reagent/consumable/nutriment, M.reagents.total_volume)
			M.reagents.trans_to(src, M.reagents.total_volume)
		qdel(M)

/obj/item/reagent_containers/food/snacks/rogue/tomatoslice
	name = "slice of tomato"
	desc = "It makes you cry thinking about it."
	icon = 'icons/roguetown/items/food.dmi'
	icon_state = "tomatoslice"
	bitesize = 3
	rotprocess = 20 MINUTES
	list_reagents = list(/datum/reagent/consumable/nutriment = 1, /datum/reagent/consumable/tomatojuice = 1)
	grind_results = list(/datum/reagent/consumable/tomatojuice = 1)

/obj/item/reagent_containers/food/snacks/grown/westspice
	name = "western herbs"
	desc = "Herbs that can be found in the western hemisphere - a little less exotic, a lot more affordable, but still tasty."
	icon = 'icons/roguetown/items/produce.dmi'
	icon_state = "westernspice"
	bitesize = 3
	rotprocess = null
	list_reagents = list(/datum/reagent/consumable/nutriment = 3)

/obj/item/reagent_containers/food/snacks/grown/eastspice
	name = "eastern spices"
	desc = "Herbs that have to be imported from the other side of the globe - expensive and flavorful."
	icon = 'icons/roguetown/items/produce.dmi'
	icon_state = "easternspice"
	bitesize = 3
	rotprocess = null
	list_reagents = list(/datum/reagent/consumable/nutriment = 3)
