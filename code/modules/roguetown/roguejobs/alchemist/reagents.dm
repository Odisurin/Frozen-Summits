//Basic
/datum/reagent/additive
	name = "additive"
	reagent_state = LIQUID

//Potions
/datum/reagent/medicine/healthpot
	name = "Dated Health Potion"
	description = "Gradually regenerates all types of damage, is past it's shelf-life."
	reagent_state = LIQUID
	color = "#A20000"
	taste_description = "red"
	overdose_threshold = 45
	metabolization_rate = 0.5 * REAGENTS_METABOLISM
	alpha = 173

/datum/reagent/medicine/healthpot/on_mob_life(mob/living/carbon/M)
	if(volume >= 60)
		M.reagents.remove_reagent(/datum/reagent/medicine/healthpot, 2) //No overhealing.
	var/list/wCount = M.get_wounds()
	if(M.blood_volume < BLOOD_VOLUME_NORMAL)
		M.blood_volume = min(M.blood_volume+50, BLOOD_VOLUME_MAXIMUM)
	else
		//can overfill you with blood, but at a slower rate
		M.blood_volume = min(M.blood_volume+10, BLOOD_VOLUME_MAXIMUM)
	if(wCount.len > 0)
		//some peeps dislike the church, this allows an alternative thats not a doctor or sleep.
		M.heal_wounds(3) //at a motabalism of .5 U a tick this translates to 120WHP healing with 20 U Most wounds are unsewn 15-100. This is powerful on single wounds but rapidly weakens at multi wounds.
		M.update_damage_overlays()
	M.adjustBruteLoss(-0.7*REM, 0)
	M.adjustFireLoss(-0.7*REM, 0)
	M.adjustOxyLoss(-0.7, 0)
	M.adjustOrganLoss(ORGAN_SLOT_BRAIN, -0.7*REM)
	M.adjustCloneLoss(-0.7*REM, 0)
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		if(!istype(H.dna.species, /datum/species/werewolf))
			M.adjust_nutrition(-2.5*REM)
	..()
	. = 1

/datum/reagent/medicine/healthpot/overdose_start(mob/living/M)
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		if(!istype(H.dna.species, /datum/species/werewolf))
			H.playsound_local(H, 'sound/misc/heroin_rush.ogg', 100, FALSE)
			H.visible_message(span_warning("Blood runs from [H]'s nose."))
	. = 1

/datum/reagent/medicine/healthpot/overdose_process(mob/living/M)
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		if(!istype(H.dna.species, /datum/species/werewolf))
			M.adjustToxLoss(2, 0)
	..()
	. = 1

/datum/reagent/medicine/healthpotnew
	name = "Health Potion"
	description = "Gradually regenerates all types of damage."
	reagent_state = LIQUID
	color = "#ff0000"
	taste_description = "red"
	overdose_threshold = 45
	metabolization_rate = 0.5 * REAGENTS_METABOLISM
	alpha = 173

/datum/reagent/medicine/healthpotnew/on_mob_life(mob/living/carbon/M)
	M.reagents.remove_reagent(/datum/reagent/medicine/healthpot, 100) //removes old health pot so you can't double-up
	if(volume >= 60)
		M.reagents.remove_reagent(/datum/reagent/medicine/healthpotnew, 2) //No overhealing.
	var/list/wCount = M.get_wounds()
	if(M.blood_volume < BLOOD_VOLUME_NORMAL)
		M.blood_volume = min(M.blood_volume+50, BLOOD_VOLUME_MAXIMUM)
	else
		//can overfill you with blood, but at a slower rate
		M.blood_volume = min(M.blood_volume+10, BLOOD_VOLUME_MAXIMUM)
	if(wCount.len > 0)
		//some peeps dislike the church, this allows an alternative thats not a doctor or sleep.
		M.heal_wounds(3) //at a motabalism of .5 U a tick this translates to 120WHP healing with 20 U Most wounds are unsewn 15-100. This is powerful on single wounds but rapidly weakens at multi wounds.
		M.update_damage_overlays()
	M.adjustBruteLoss(-1.4*REM, 0)
	M.adjustFireLoss(-1.4*REM, 0)
	M.adjustOxyLoss(-1.4, 0)
	M.adjustOrganLoss(ORGAN_SLOT_BRAIN, -1.4*REM)
	M.adjustCloneLoss(-1.4*REM, 0)
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		if(!istype(H.dna.species, /datum/species/werewolf))
			M.adjust_nutrition(-0.5*REM)
	..()
	. = 1

/datum/reagent/medicine/healthpotnew/overdose_start(mob/living/M)
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		if(!istype(H.dna.species, /datum/species/werewolf))
			H.playsound_local(H, 'sound/misc/heroin_rush.ogg', 100, FALSE)
			H.visible_message(span_warning("Blood runs from [H]'s nose."))
	. = 1

/datum/reagent/medicine/healthpotnew/overdose_process(mob/living/M)
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		if(!istype(H.dna.species, /datum/species/werewolf))
			M.adjustToxLoss(2, 0)
	..()
	. = 1

/datum/reagent/medicine/shroomt
	name = "Shroom Tea"
	description = "Extremely slowly regenerates all types of damage. long lasting."
	reagent_state = LIQUID
	color = "#476e4d"
	taste_description = "dirt"
	overdose_threshold = 25 // cups hold 24 so even one sip more from tanakrd is OD
	metabolization_rate = 0.2 * REAGENTS_METABOLISM
	alpha = 173

/datum/reagent/medicine/shroomt/on_mob_life(mob/living/carbon/M)
	var/list/wCount = M.get_wounds()
	if(M.blood_volume < BLOOD_VOLUME_NORMAL)
		M.blood_volume = min(M.blood_volume+50, BLOOD_VOLUME_MAXIMUM)
	else
		M.blood_volume = min(M.blood_volume+2, BLOOD_VOLUME_MAXIMUM)
	if(wCount.len > 0)
		M.heal_wounds(1)
		M.update_damage_overlays()
	M.adjustBruteLoss(-0.2*REM, 0)
	M.adjustToxLoss(-0.2*REM, 0)
	M.adjustFireLoss(-0.2*REM, 0)
	M.adjustOxyLoss(-1, 0)
	M.rogstam_add(25)
	M.adjustOrganLoss(ORGAN_SLOT_BRAIN, -1*REM)
	M.adjustCloneLoss(-1*REM, 0)
	..()
	. = 1

/datum/reagent/medicine/shroomt/overdose_process(mob/living/carbon/M)
	M.add_nausea(15)


/datum/reagent/medicine/stronghealth
	name = "Strong Health Potion"
	description = "Quickly regenerates all types of damage."
	color = "#820000be"
	taste_description = "rich lifeblood"
	metabolization_rate = REAGENTS_METABOLISM * 10

/datum/reagent/medicine/stronghealth/on_mob_life(mob/living/carbon/M)
	M.blood_volume = min(M.blood_volume+5, BLOOD_VOLUME_MAXIMUM)
	M.adjustBruteLoss(-8*REM, 0)
	M.adjustFireLoss(-8*REM, 0)
	M.adjustOxyLoss(-5, 0)
	M.adjustOrganLoss(ORGAN_SLOT_BRAIN, -5*REM)
	M.adjustCloneLoss(-5*REM, 0)
	..()
	. = 1

//
/datum/reagent/medicine/manapot
	name = "Mana Potion"
	description = "Gradually regenerates stamina."
	reagent_state = LIQUID
	color = "#0000ff"
	taste_description = "manna"
	overdose_threshold = 45
	metabolization_rate = 0.5 * REAGENTS_METABOLISM
	alpha = 173

/datum/reagent/medicine/manapot/on_mob_life(mob/living/carbon/M)
	M.rogstam_add(10)
	..()
	. = 1

/datum/reagent/medicine/manapot/overdose_start(mob/living/M)
	M.playsound_local(M, 'sound/misc/heroin_rush.ogg', 100, FALSE)
	M.visible_message(span_warning("Blood runs from [M]'s nose."))
	. = 1

/datum/reagent/medicine/manapot/overdose_process(mob/living/M)
	M.adjustToxLoss(3, 0)
	..()
	. = 1

/datum/reagent/berrypoison
	name = "Berry Poison"
	description = "Contains a poisonous thick, dark purple liquid."
	reagent_state = LIQUID
	color = "#00B4FF"
	metabolization_rate = 0.1

/datum/reagent/berrypoison/on_mob_life(mob/living/carbon/M)
	if(!HAS_TRAIT(M, TRAIT_NASTY_EATER))
		M.add_nausea(9)
		M.adjustToxLoss(3, 0)
	return ..()

/datum/reagent/organpoison
	name = "Organ Poison"
	description = "A viscous black liquid clings to the glass."
	reagent_state = LIQUID
	color = "#ff2f00"
	metabolization_rate = 0.1

/datum/reagent/organpoison/on_mob_life(mob/living/carbon/M)
	if(!HAS_TRAIT(M, TRAIT_NASTY_EATER) && !HAS_TRAIT(M, TRAIT_ORGAN_EATER))
		M.add_nausea(9)
		M.adjustToxLoss(3, 0)
	return ..()

//pyro flower nectar - stonekeep port

/datum/reagent/medicine/strongmana
	name = "Strong Mana Potion"
	description = "Gradually regenerates stamina."
	color = "#0000ff"
	metabolization_rate = REAGENTS_METABOLISM * 10

/datum/reagent/medicine/strongmana/on_mob_life(mob/living/carbon/M)
	M.rogstam_add(200)
	..()
	. = 1


/datum/reagent/medicine/antidote
	name = "Poison Antidote"
	description = ""
	reagent_state = LIQUID
	color = "#00ff00"
	taste_description = "sickly sweet"
	metabolization_rate = REAGENTS_METABOLISM

/datum/reagent/medicine/antidote/on_mob_life(mob/living/carbon/M)
	M.adjustToxLoss(-4, 0)
	..()
	. = 1

/datum/reagent/medicine/diseasecure
	name = "Disease Cure"
	description = ""
	reagent_state = LIQUID
	color = "#004200"
	taste_description = "dirt"
	metabolization_rate = 30 * REAGENTS_METABOLISM

/datum/reagent/medicine/diseasecure/on_mob_life(mob/living/carbon/M)
	M.adjustToxLoss(-6, 0)
	..()
	. = 1

//Buff potions
/datum/reagent/buff
	description = ""
	reagent_state = LIQUID
	metabolization_rate = REAGENTS_METABOLISM

/datum/reagent/buff/strength
	name = "Strength"
	color = "#ff9000"
	taste_description = "old meat"

/datum/reagent/buff/strength/on_mob_add(mob/living/carbon/M)
	testing("str pot in system")
	M.apply_status_effect(/datum/status_effect/buff/alch/strengthpot)
	..()

/datum/reagent/buff/perception
	name = "Perception"
	color = "#ffff00"
	taste_description = "sweets"

/datum/reagent/buff/perception/on_mob_life(mob/living/carbon/M)
	testing("per pot in system")
	if(M.has_status_effect(/datum/status_effect/buff/alch/perceptionpot))
		return ..()
	if(M.reagents.has_reagent((/datum/reagent/buff/perception),4))
		M.apply_status_effect(/datum/status_effect/buff/alch/perceptionpot)
		M.reagents.remove_reagent(/datum/reagent/buff/perception, M.reagents.get_reagent_amount(/datum/reagent/buff/perception))
	return ..()

/datum/reagent/buff/intelligence
	name = "Intelligence"
	color = "#00ff90"
	taste_description = "sweets"

/datum/reagent/buff/intelligence/on_mob_life(mob/living/carbon/M)
	testing("int pot in system")
	if(M.has_status_effect(/datum/status_effect/buff/alch/intelligencepot))
		return ..()
	if(M.reagents.has_reagent((/datum/reagent/buff/intelligence),4))
		M.apply_status_effect(/datum/status_effect/buff/alch/intelligencepot)
		M.reagents.remove_reagent(/datum/reagent/buff/intelligence, M.reagents.get_reagent_amount(/datum/reagent/buff/intelligence))
	return ..()

/datum/reagent/buff/constitution
	name = "Constitution"
	color = "#ffff00"
	taste_description = "sweets"

/datum/reagent/buff/constitution/on_mob_life(mob/living/carbon/M)
	testing("con pot in system")
	if(M.has_status_effect(/datum/status_effect/buff/alch/constitutionpot))
		return ..()
	if(M.reagents.has_reagent((/datum/reagent/buff/constitution),4))
		M.apply_status_effect(/datum/status_effect/buff/alch/constitutionpot)
		M.reagents.remove_reagent(/datum/reagent/buff/constitution, M.reagents.get_reagent_amount(/datum/reagent/buff/constitution))
	return ..()

/datum/reagent/buff/endurance
	name = "Endurance"
	color = "#ffff00"
	taste_description = "sweets"

/datum/reagent/buff/endurance/on_mob_life(mob/living/carbon/M)
	testing("end pot in system")
	if(M.has_status_effect(/datum/status_effect/buff/alch/endurancepot))
		return ..()
	if(M.reagents.has_reagent((/datum/reagent/buff/endurance),4))
		M.apply_status_effect(/datum/status_effect/buff/alch/endurancepot)
		M.reagents.remove_reagent(/datum/reagent/buff/endurance, M.reagents.get_reagent_amount(/datum/reagent/buff/endurance))
	return ..()

/datum/reagent/buff/speed
	name = "Speed"
	color = "#ffff00"
	taste_description = "sweets"

/datum/reagent/buff/speed/on_mob_life(mob/living/carbon/M)
	testing("spd pot in system")
	if(M.has_status_effect(/datum/status_effect/buff/alch/speedpot))
		return ..()
	if(M.reagents.has_reagent((/datum/reagent/buff/speed),4))
		M.apply_status_effect(/datum/status_effect/buff/alch/speedpot)
		M.reagents.remove_reagent(/datum/reagent/buff/speed, M.reagents.get_reagent_amount(/datum/reagent/buff/speed))
	return ..()

/datum/reagent/buff/fortune
	name = "Fortune"
	color = "#ffff00"
	taste_description = "sweets"

/datum/reagent/buff/fortune/on_mob_life(mob/living/carbon/M)
	testing("luck pot in system")
	if(M.has_status_effect(/datum/status_effect/buff/alch/fortunepot))
		return ..()
	if(M.reagents.has_reagent((/datum/reagent/buff/fortune),4))
		M.apply_status_effect(/datum/status_effect/buff/alch/fortunepot)
		M.reagents.remove_reagent(/datum/reagent/buff/fortune, M.reagents.get_reagent_amount(/datum/reagent/buff/fortune))
	return ..()


//Poisons
/datum/reagent/berrypoison
	name = "Berry Poison"
	description = ""
	reagent_state = LIQUID
	color = "#00B4FF"
	taste_description = "burning"
	metabolization_rate = REAGENTS_METABOLISM

/datum/reagent/berrypoison/on_mob_life(mob/living/carbon/M)
	M.add_nausea(9)
	M.adjustToxLoss(3, 0)
	return ..()


/datum/reagent/strongpoison
	name = "Strong Poison"
	description = ""
	reagent_state = LIQUID
	color = "#000000"
	taste_description = "burning"
	metabolization_rate = REAGENTS_METABOLISM

/datum/reagent/strongpoison/on_mob_life(mob/living/carbon/M)
	M.add_nausea(20)
	M.adjustToxLoss(12, 0)
	return ..()

//Potion reactions
/datum/chemical_reaction/alch/stronghealth
	name = "Strong Health Potion"
	id = /datum/reagent/medicine/stronghealth
	results = list(/datum/reagent/medicine/stronghealth = 5)
	required_reagents = list(/datum/reagent/medicine/healthpot = 5, /datum/reagent/additive = 5)
	mix_message = "The cauldron glows for a moment."
/datum/chemical_reaction/alch/strongmana
	name = "Strong Mana Potion"
	id = /datum/reagent/medicine/strongmana
	results = list(/datum/reagent/medicine/strongmana = 5)
	required_reagents = list(/datum/reagent/medicine/manapot = 5, /datum/reagent/additive = 5)
	mix_message = "The cauldron glows for a moment."

/datum/chemical_reaction/alch/strongpoison
	name = "Strong Health Potion"
	id = /datum/reagent/strongpoison
	results = list(/datum/reagent/strongpoison = 5)
	required_reagents = list(/datum/reagent/berrypoison = 5, /datum/reagent/additive = 5)
	mix_message = "The cauldron glows for a moment."


/*----------\
|Ingredients|
\----------*/
/datum/reagent/undeadash
	name = "Spectral Powder"
	description = ""
	reagent_state = SOLID
	color = "#330066"
	taste_description = "tombstones"
	metabolization_rate = 0.1

/datum/reagent/toxin/fyritiusnectar
	name = "fyritius nectar"
	description = "oh no"
	reagent_state = LIQUID
	color = "#ffc400"
	metabolization_rate = 0.5

/datum/reagent/toxin/fyritiusnectar/on_mob_life(mob/living/carbon/M)
	if(volume > 0.99)
		M.add_nausea(9)
		M.adjustFireLoss(2, 0)
		M.adjust_fire_stacks(1)
		M.IgniteMob()
	return ..()

/datum/reagent/infection
	name = "excess choleric humour"
	description = "Red-yellow pustulence - the carrier of disease, the enemy of all Pestrans."
	reagent_state = LIQUID
	color = "#dfe36f"
	metabolization_rate = 0.1
	var/damage_tick = 0.3
	var/lethal_fever = FALSE
	var/fever_multiplier = 1

/datum/reagent/infection/on_mob_life(mob/living/carbon/M)
	var/heat = (BODYTEMP_AUTORECOVERY_MINIMUM + clamp(volume, 3, 15)) * fever_multiplier
	M.adjustToxLoss(damage_tick, 0)
	if (lethal_fever)
		M.adjust_bodytemperature(heat, 0)
		if (prob(5))
			to_chat(M, span_warning("A wicked heat settles within me... I feel ill. Very ill."))
	else
		M.adjust_bodytemperature(heat, 0, BODYTEMP_HEAT_DAMAGE_LIMIT - 1)
		if (prob(5))
			to_chat(M, span_warning("I feel a horrible chill despite the sweat rolling from my brow..."))
	return ..()

/datum/reagent/infection/minor
	name = "disrupted choleric humor"
	description = "Symptomatic of disrupted humours."
	damage_tick = 0.1
	lethal_fever = FALSE

/datum/reagent/infection/major
	name = "excess melancholic humour"
	description = "Kingsfield's Bane. Excess melancholic has killed thousands, and even Pestra's greatest struggle against its insidious advance."
	damage_tick = 1
	lethal_fever = TRUE
	fever_multiplier = 3

/datum/reagent/infection/major/on_mob_life(mob/living/carbon/M)
	if (M.badluck(1))
		M.reagents.add_reagent(src, rand(1,3))
		to_chat(M, span_small("I feel even worse..."))
	return ..()

/datum/reagent/medicine/caffeine
	name = "caffeine"
	description = "No Sleep"
	reagent_state = LIQUID
	color = "#D2FFFA"
	metabolization_rate = 20 * REAGENTS_METABOLISM
	overdose_threshold = null

/datum/reagent/medicine/stimu
	name = "Stimu"
	description = "crit stabalizer and blood restorer painkiller"
	reagent_state = LIQUID
	color = "#D2FFFA"
	metabolization_rate = 0.25 * REAGENTS_METABOLISM
	overdose_threshold = null

/datum/reagent/medicine/stimu/on_mob_metabolize(mob/living/carbon/M)
	..()
	ADD_TRAIT(M, TRAIT_NOCRITDAMAGE, TRAIT_GENERIC)
	ADD_TRAIT(M, TRAIT_NOPAIN, TRAIT_GENERIC)

/datum/reagent/medicine/stimu/on_mob_end_metabolize(mob/living/carbon/M)
	REMOVE_TRAIT(M, TRAIT_NOCRITDAMAGE, TRAIT_GENERIC)
	REMOVE_TRAIT(M, TRAIT_NOPAIN, TRAIT_GENERIC)
	..()

/datum/reagent/medicine/stimu/on_mob_life(mob/living/carbon/M)
	if(M.blood_volume < BLOOD_VOLUME_NORMAL)
		M.heal_wounds(2) //same as health pot only heal wounds while bleeding. technically.
		M.blood_volume = min(M.blood_volume+15, BLOOD_VOLUME_NORMAL)
	if(M.health <= M.crit_threshold)
		M.adjustToxLoss(-0.5*REM, 0)
		M.adjustBruteLoss(-0.5*REM, 0)
		M.adjustFireLoss(-0.5*REM, 0)
		M.adjustOxyLoss(-0.5*REM, 0)
	if(M.losebreath >= 4)
		M.losebreath -= 2
	if(M.losebreath < 0)
		M.losebreath = 0
	..()

/datum/reagent/medicine/purify
	name = "PURIFY"
	reagent_state = LIQUID
	color = "#808080"
	metabolization_rate = 0.5 * REAGENTS_METABOLISM
	overdose_threshold = null
	description = "A powerful drug that purifies the blood and seals wounds painfully on the body."

/datum/reagent/medicine/purify/on_mob_life(mob/living/carbon/human/M)
	M.adjustFireLoss(0.5*REM, 0)
	M.heal_wounds(3)
	
	// Iterate through all body parts
	for (var/obj/item/bodypart/B in M.bodyparts)
		// Iterate through wounds on each body part
		for (var/datum/wound/W in B.wounds)
			// Check for and remove zombie infection
			if (W.zombie_infection_timer)
				deltimer(W.zombie_infection_timer)
				W.zombie_infection_timer = null
				to_chat(M, "You feel the drugs burning intensely in [B.name].")
			// Check for and remove werewolf infection
			if (W.werewolf_infection_timer)
				deltimer(W.werewolf_infection_timer)
				W.werewolf_infection_timer = null
				to_chat(M, "You feel the drugs burning intensely in [B.name].")

			// Handle destruction of the wound
			W.Destroy(0)

	M.update_damage_overlays()

