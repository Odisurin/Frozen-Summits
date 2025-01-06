/// Recently moved and needs to try again soon.
#define MOVEMENT_ON_COOLDOWN	-1
/// Move() returned false for whatever reason and the mob didn't move.
#define MOVEMENT_FAILED			0
/// Move() returned true and the mob hopefully moved.
#define MOVEMENT_SUCCESSFUL		1



/mob/living/simple_animal/hostile/retaliate/rogue/fish
	icon = 'icons/roguetown/mob/monster/32x32.dmi'
	name = "knucklehead trout"
	icon_state = "javelin-swim"
	icon_living = "javelin-swim"
	icon_dead = "trout-dead"
	turns_per_move = 5
	see_in_dark = 6
	response_help_simple = "touches"
	response_harm_simple = "flips"
	faction = list("waterlife")
	robust_searching = 0
	mob_biotypes = MOB_ORGANIC
	attack_sound = "splash"
	health = 50
	maxHealth = 50
	move_to_delay = 10
	vision_range = 2
	attack_same = 0
	food_type = list(/obj/item/reagent_containers/food/snacks/grown)
	harm_intent_damage = 2
	environment_smash = ENVIRONMENT_SMASH_NONE
	footstep_type = null
	retreat_distance = 10
	aggro_vision_range = 2
	minimum_distance = 10
	STASPD = 20
	STACON = 2
	STASTR = 2
	dodge_sound = 'sound/combat/dodge.ogg'
	dodge_prob = 0
	stop_automated_movement_when_pulled = 1
	dodge_prob = 5
	butcher_results = list(/obj/item/reagent_containers/food/snacks/rogue/meat/mince/fish = 3, /obj/item/natural/bone = 1)

	// By default they can be in any water turf.  Subtypes might restrict to deep/shallow etc
	var/global/list/suitable_turf_types =  list(
		/turf/open/water/ocean/deep,
		/turf/open/water/ocean,
		/turf/open/water/pond,
		/turf/open/water/river,
	)

// Makes the AI unable to willingly go on land.
/mob/living/simple_animal/hostile/retaliate/rogue/fish/Move(newloc, dir = 0)
	if(!istype(newloc, /turf)) // Ensure the target location is a turf
		return FALSE
	if(!is_type_in_list(newloc, suitable_turf_types)) // Restrict movement to water turfs
		return FALSE
	return ..(newloc, dir) // Proceed as normal if valid


/mob/living/simple_animal/hostile/retaliate/rogue/fish/pike
	name = "black ice pike"
	icon_state = "sifbass-swim"
	icon_living = "sifbass-swim"
	icon_dead = "sifbass-dead"


/mob/living/simple_animal/hostile/retaliate/rogue/fish/koi
	name = "ice winter koi"
	icon_state = "koi-swim"
	icon_living = "koi-swim"	
	icon_dead = "koi-dead"
