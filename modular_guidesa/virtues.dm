/datum/virtue/utility/performer
	name = "Performer"
	desc = "Music, artistry and the act of showmanship carried me through life. I've hidden a favorite instrument of mine, know how to please anyone I touch, and how to crack the eggs of hecklers."
	added_traits = list(TRAIT_NUTCRACKER,TRAIT_GOODLOVER)

/datum/virtue/utility/performer/apply_to_human(mob/living/carbon/human/recipient)
	added_skills = list(list(/datum/skill/misc/music, 3, 6))
	var/list/instruments = list()
	for(var/path in subtypesof(/obj/item/rogue/instrument))
		var/obj/item/rogue/instrument/instr = path
		instruments[instr.name] = path
	var/item = input(recipient, "What instrument did I stash?", "STASH") as null|anything in instruments
	if(item)
		var/instr = instruments[item]
		var/obj/item/rogue/instrument/I = instr
		recipient.mind?.special_items[I.name] = instr

