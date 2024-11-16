/*/datum/virtue/size/giant
	name = "Giant"
	desc = "I've always been larger, stronger and hardier than the average person. I tend to lumber around a lot, though..."
	added_stats = list(STAT_STRENGTH = 3, STAT_CONSTITUTION = 2, STAT_SPEED = -2)
	triumph_cost = 0

/datum/virtue/size/giant/apply_to_human(mob/living/carbon/human/recipient)
	recipient.transform = recipient.transform.Scale(1.25, 1.25)
	recipient.transform = recipient.transform.Translate(0, (0.25 * 16))
	recipient.update_transform()
*/
/datum/virtue/size/giant_feral
	name = "Beastial Giant"
	desc = "I've always been larger, stronger and hardier than the average person, but not the brightest. I tend to lumber around a lot, though... And the call of the moon... and my un-natural sharp claws or hoofs..."
	added_stats = list(STAT_STRENGTH = 2, STAT_CONSTITUTION = 2, STAT_SPEED = -2, STAT_INTELLIGENCE = -1)
	triumph_cost = 0

/datum/virtue/size/giant_feral/apply_to_human(mob/living/carbon/human/recipient)
	recipient.mind?.AddSpell(new /obj/effect/proc_holder/spell/self/claws)
	recipient.mind?.AddSpell(new /obj/effect/proc_holder/spell/self/howl/call_of_the_moon)
	recipient.transform = recipient.transform.Scale(1.25, 1.25)
	recipient.transform = recipient.transform.Translate(0, (0.25 * 16))
	recipient.update_transform()

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
