/datum/virtue/size/giant_feral
	name = "Beastial Giant"
	desc = "I've always been larger, stronger and hardier than the average person, but not the brightest. I tend to lumber around a lot, though... and my un-natural sharp claws or hoofs..."
	added_stats = list(STAT_STRENGTH = 2, STAT_CONSTITUTION = 2, STAT_SPEED = -2, STAT_INTELLIGENCE = -1)
	triumph_cost = 0

/datum/virtue/size/giant_feral/apply_to_human(mob/living/carbon/human/recipient)
	recipient.mind?.AddSpell(new /obj/effect/proc_holder/spell/self/claws)
	recipient.transform = recipient.transform.Scale(1.25, 1.25)
	recipient.transform = recipient.transform.Translate(0, (0.25 * 16))
	recipient.update_transform()


||-------------

/datum/virtue/size/feral_sorcerer
	name = "Beastial Sorcerer"
	desc = "I've always been stronger and hardier than the average person, but not the brightest.... However my bloodline is blessed with arcana. I tend to lumber around a lot, though... and my un-natural sharp claws or hoofs..."
	added_stats = list(STAT_STRENGTH = 2, STAT_CONSTITUTION = 2, STAT_SPEED = -2)
	triumph_cost = 0

/datum/virtue/size/feral_sorcerer/apply_to_human(mob/living/carbon/human/recipient)
	recipient.mind?.AddSpell(new /obj/effect/proc_holder/spell/self/claws)
	if (!recipient.mind?.get_skill_level(/datum/skill/magic/arcane)) 
		recipient.mind?.adjust_spellpoints(2)
		if (!recipient.mind?.has_spell(/obj/effect/proc_holder/spell/targeted/touch/prestidigitation))
			recipient.mind?.AddSpell(new /obj/effect/proc_holder/spell/targeted/touch/prestidigitation)

||-------------------

/datum/virtue/size/lycan_male
	name = "Lycanthropic Lineage (Male)"
	desc = "Born of the feral bloodline, my frame is broad, my strength immense, and my constitution unmatched. However, my mind is often clouded, a reflection of the wild instincts within. The sharpness of my claws and the deep, resonant howl that escapes my throat speak of the beast that stirs in my soul. The moon calls to me, drawing me closer to my true form, where man and wolf converge in a primal dance of power and fury. Through the gift of transformation and a name that marks my rebirth, I stride between civilization and the wilds, embodying both"
	added_stats = list(STAT_STRENGTH = 3, STAT_CONSTITUTION = 3, STAT_SPEED = -4, STAT_INTELLIGENCE = -2)

/datum/virtue/size/lycan_male/apply_to_human(mob/living/carbon/human/recipient)
	recipient.mind?.AddSpell(new /obj/effect/proc_holder/spell/self/claws)
	recipient.mind?.AddSpell(new /obj/effect/proc_holder/spell/self/howl/call_of_the_moon)
	recipient.mind?.AddSpell(new /obj/effect/proc_holder/spell/targeted/shapeshift/werewolf_m)
	recipient.mind?.AddSpell(new /obj/effect/proc_holder/spell/self/rename_self)

/datum/virtue/size/lycan_female
	name = "Lycanthropic Lineage (Female)"
	desc = "Born of the feral bloodline, my frame is broad, my strength immense, and my constitution unmatched. However, my mind is often clouded, a reflection of the wild instincts within. The sharpness of my claws and the deep, resonant howl that escapes my throat speak of the beast that stirs in my soul. The moon calls to me, drawing me closer to my true form, where man and wolf converge in a primal dance of power and fury. Through the gift of transformation and a name that marks my rebirth, I stride between civilization and the wilds, embodying both"
	added_stats = list(STAT_STRENGTH = 3, STAT_CONSTITUTION = 3, STAT_SPEED = -4, STAT_INTELLIGENCE = -2)

/datum/virtue/size/lycan_female/apply_to_human(mob/living/carbon/human/recipient)
	recipient.mind?.AddSpell(new /obj/effect/proc_holder/spell/self/claws)
	recipient.mind?.AddSpell(new /obj/effect/proc_holder/spell/self/howl/call_of_the_moon)
	recipient.mind?.AddSpell(new /obj/effect/proc_holder/spell/targeted/shapeshift/werewolf_f)
	recipient.mind?.AddSpell(new /obj/effect/proc_holder/spell/self/rename_self)

||-------------------------


/datum/virtue/size/lycan_male_sorcerer
	name = "Magical Lycanthropic Lineage (Male)"
	desc = "Born of the feral bloodline, my frame is broad, my strength immense, and my constitution unmatched. Yet, the presence of magic in my veins grants me a touch of clarity and intellect rare among my kind. The sharpness of my claws and the deep, resonant howl that escapes my throat speak of the beast that stirs in my soul. The moon calls to me, its phases unlocking the primal might within, where man, beast, and magic converge in a dance of raw power and mystical energy. Through the gift of transformation and a name that marks my rebirth, I walk the balance between civilization and the wilds, embracing both the savage and the arcane."
	added_stats = list(STAT_STRENGTH = 2, STAT_CONSTITUTION = 1, STAT_SPEED = -3, STAT_INTELLIGENCE = 1)

/datum/virtue/size/lycan_male_sorcerer/apply_to_human(mob/living/carbon/human/recipient)
	recipient.mind?.AddSpell(new /obj/effect/proc_holder/spell/self/claws)
	recipient.mind?.AddSpell(new /obj/effect/proc_holder/spell/self/howl/call_of_the_moon)
	recipient.mind?.AddSpell(new /obj/effect/proc_holder/spell/targeted/shapeshift/werewolf_m)
	recipient.mind?.AddSpell(new /obj/effect/proc_holder/spell/self/rename_self)
	if (!recipient.mind?.get_skill_level(/datum/skill/magic/arcane)) 
		recipient.mind?.adjust_spellpoints(2)
		if (!recipient.mind?.has_spell(/obj/effect/proc_holder/spell/targeted/touch/prestidigitation))
			recipient.mind?.AddSpell(new /obj/effect/proc_holder/spell/targeted/touch/prestidigitation)


/datum/virtue/size/lycan_female_sorcerer
	name = "Magical Lycanthropic Lineage (Female)"
	desc = "Born of the feral bloodline, my frame is broad, my strength immense, and my constitution unmatched. Yet, the presence of magic in my veins grants me a touch of clarity and intellect rare among my kind. The sharpness of my claws and the deep, resonant howl that escapes my throat speak of the beast that stirs in my soul. The moon calls to me, its phases unlocking the primal might within, where man, beast, and magic converge in a dance of raw power and mystical energy. Through the gift of transformation and a name that marks my rebirth, I walk the balance between civilization and the wilds, embracing both the savage and the arcane."
	added_stats = list(STAT_STRENGTH = 2, STAT_CONSTITUTION = 1, STAT_SPEED = -3, STAT_INTELLIGENCE = 1)

/datum/virtue/size/lycan_female_sorcerer/apply_to_human(mob/living/carbon/human/recipient)
	recipient.mind?.AddSpell(new /obj/effect/proc_holder/spell/self/claws)
	recipient.mind?.AddSpell(new /obj/effect/proc_holder/spell/self/howl/call_of_the_moon)
	recipient.mind?.AddSpell(new /obj/effect/proc_holder/spell/targeted/shapeshift/werewolf_f)
	recipient.mind?.AddSpell(new /obj/effect/proc_holder/spell/self/rename_self)
	if (!recipient.mind?.get_skill_level(/datum/skill/magic/arcane)) 
		recipient.mind?.adjust_spellpoints(2)
		if (!recipient.mind?.has_spell(/obj/effect/proc_holder/spell/targeted/touch/prestidigitation))
			recipient.mind?.AddSpell(new /obj/effect/proc_holder/spell/targeted/touch/prestidigitation)
