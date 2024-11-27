//BE SPECIAL converted most to regular quirk traits for consistency in characters -- vide noir.
//Will need rebalancing costs and stuff.

/datum/quirk/greaternightvision
	name = "Darkvision"
	desc = "I can easily see in the dark."
	value = 2

/datum/quirk/greaternightvision/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	var/obj/item/organ/eyes/eyes = H.getorganslot(ORGAN_SLOT_EYES)
	if(!eyes)
		return
	eyes.see_in_dark = 7
	eyes.lighting_alpha = LIGHTING_PLANE_ALPHA_MOSTLY_VISIBLE
	eyes.Insert(H)
	ADD_TRAIT(H, TRAIT_NOCSIGHT, TRAIT_GENERIC)

/datum/quirk/thickskin
	name = "Tough"
	desc = "I feel it. Thick Skin. Dense Flesh. Durable Bones. I'm a punch-taking machine."
	value = 3

/datum/quirk/thickskin/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_BREADY, TRAIT_GENERIC)
	H.change_stat("constitution", 2)

/datum/quirk/curseofcain
	name = "Flawed Immortality"
	desc = "I don't need to eat or breathe anymore... Is this normal?"
	value = 3

/datum/quirk/curseofcain/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_NOHUNGER, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_NOBREATH, TRAIT_GENERIC)
	H.change_stat("endurance", 2)

/datum/quirk/deadened
	name = "Deadened"
	desc = "Ever since <b>it</b> happened, I've never been able to feel anything. Inside or out."
	value = 2

/datum/quirk/deadened/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_NOMOOD, TRAIT_GENERIC)

/datum/quirk/value
	name = "Skilled Appraiser"
	desc = "I know how to estimate an item's value, more or less."
	value = 1

/datum/quirk/value/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_SEEPRICES, TRAIT_GENERIC)

/datum/quirk/night_owl
	name = "Night Owl"
	desc = "I've always preferred the night."
	value = 1

/datum/quirk/night_owl/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_NIGHT_OWL, TRAIT_GENERIC)

/datum/quirk/beautiful
	name = "Beautiful"
	desc = "My face is a work of art"
	value = 1

/datum/quirk/beautiful/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_BEAUTIFUL, TRAIT_GENERIC)

//positive
/datum/quirk/duelist
	name = "Swordmaster"
	desc = "I was the student of a sword master, my skill are okayish! I've also hidden a rapier."
	value = 4

/datum/quirk/duelist/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.change_stat("speed", 2)
	H.mind.adjust_skillrank_up_to(/datum/skill/combat/swords, 3, TRUE)
	H.mind.special_items["Rapier"] = /obj/item/rogueweapon/sword/rapier

/datum/quirk/training1
	name = "Sword Training"
	desc = "I have journeyman sword skills."
	value = 1

/datum/quirk/training1/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.mind.adjust_skillrank_up_to(/datum/skill/combat/swords, 3, TRUE)

/datum/quirk/training2
	name = "Mace Training"
	desc = "I have journeyman mace skills."
	value = 1

/datum/quirk/training2/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.mind.adjust_skillrank_up_to(/datum/skill/combat/maces, 3, TRUE)

/datum/quirk/training3
	name = "Whips and Flails Training"
	desc = "I have journeyman flail and whip skills."
	value = 1

/datum/quirk/training3/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.mind.adjust_skillrank_up_to(/datum/skill/combat/whipsflails, 3, TRUE)

/datum/quirk/training4
	name = "Polearms Training"
	desc = "I have journeyman polearm skills."
	value = 1

/datum/quirk/training4/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.mind.adjust_skillrank_up_to(/datum/skill/combat/polearms, 3, TRUE)

/datum/quirk/training5
	name = "Knife Training"
	desc = "I have journeyman knife skills."
	value = 1

/datum/quirk/training5/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.mind.adjust_skillrank_up_to(/datum/skill/combat/knives, 3, TRUE)

/datum/quirk/training6
	name = "Axe Training"
	desc = "I have journeyman axe skills, including woodchopping."
	value = 1

/datum/quirk/training6/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.mind.adjust_skillrank_up_to(/datum/skill/combat/axes, 3, TRUE)
	H.mind.adjust_skillrank_up_to(/datum/skill/labor/lumberjacking, 3, TRUE)


/datum/quirk/training8
	name = "Shield Training"
	desc = "I have journeyman shield skills."
	value = 1

/datum/quirk/training8/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.mind.adjust_skillrank_up_to(/datum/skill/combat/shields, 3, TRUE)

/datum/quirk/training9
	name = "Unarmed Training"
	desc = "I have journeyman unarmed skills."
	value = 1

/datum/quirk/training9/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.mind.adjust_skillrank_up_to(/datum/skill/combat/unarmed, 3, TRUE)

/datum/quirk/mtraining1
	name = "Medical Training"
	desc = "I have journeyman medical skills."
	value = 1

/datum/quirk/mtraining1/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.mind.adjust_skillrank_up_to(/datum/skill/misc/medicine, 3, TRUE)

/datum/quirk/eagle_eyed
	name = "Eagle Eyed"
	desc = "With my sharp aim I could always hit distant targets, I've also hidden a crossbow and some bolts."
	value = 4

/datum/quirk/eagle_eyed/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.change_stat("perception", 2)
	H.mind.adjust_skillrank_up_to(/datum/skill/combat/crossbows, 5, TRUE)
	H.mind.adjust_skillrank_up_to(/datum/skill/combat/bows, 5, TRUE)
	H.mind.special_items["Crossbow"] = /obj/item/gun/ballistic/revolver/grenadelauncher/crossbow
	H.mind.special_items["Bolts"] = /obj/item/quiver/bolts

/datum/quirk/mule
	name = "Mule"
	desc = "I've been dealing drugs and I have a stash hidden away"
	value = 2

/datum/quirk/mule/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.mind.special_items["Stash One"] = /obj/item/storage/backpack/rogue/satchel/mule
	H.mind.special_items["Stash Two"] = /obj/item/storage/backpack/rogue/satchel/mule
	H.mind.special_items["Dagger"] = /obj/item/rogueweapon/huntingknife/idagger
	H.mind.adjust_skillrank_up_to(/datum/skill/combat/knives, 2, TRUE)

/datum/quirk/bookworm
	name = "Bookworm"
	desc = "I love books and I became quite skillfull at reading and writing."
	value = 1

/datum/quirk/bookworm/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.mind.adjust_skillrank_up_to(/datum/skill/misc/reading, 4, TRUE)

/datum/quirk/arsonist
	name = "Arsonist"
	desc = "I like seeing things combust and burn. I have hidden around two firebobms"
	value = 2

/datum/quirk/arsonist/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.mind.special_items["Firebomb One"] = /obj/item/bomb
	H.mind.special_items["Firebomb Two"] = /obj/item/bomb
	H.mind.adjust_skillrank_up_to(/datum/skill/misc/alchemy, 2, TRUE)

/datum/quirk/pineapple
	name = "No safeword."
	desc = "I enjoy whipping people until they squirm and whine, I am skilled at using whips, and have a hidden one somewhere."
	value = 4

/datum/quirk/pineapple/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.mind.special_items["Whip"] = /obj/item/rogueweapon/whip
	H.mind.adjust_skillrank_up_to(/datum/skill/combat/whipsflails, 4, TRUE)


/datum/quirk/spring_in_my_step
	name = "Spring in my Step"
	desc = "My legs are quite strong and where most have to climb, I can just jump"
	value = 2

/datum/quirk/spring_in_my_step/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_ZJUMP, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_NOFALLDAMAGE1, TRAIT_GENERIC)

/datum/quirk/impervious
	name = "Impervious"
	desc = "I've spent years shoring up my weakspots, and have become difficult to wound with critical blows."
	value = 3
/datum/quirk/impervious/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_CRITICAL_RESISTANCE, TRAIT_GENERIC)


/datum/quirk/thief
	name = "Thief"
	desc = "Life's not easy around here, but I've made mine a little easier by taking things of others. I am a great at picking pockets."
	value = 3

/datum/quirk/thief/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.mind.adjust_skillrank_up_to(/datum/skill/misc/stealing, 5, TRUE)

/datum/quirk/languagesavant
	name = "Polyglot"
	desc = "I have always picked up on languages easily, even those that are forbidden to mortals."
	value = 3

/datum/quirk/languagesavant/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.grant_language(/datum/language/dwarvish)
	H.grant_language(/datum/language/elvish)
	H.grant_language(/datum/language/hellspeak)
	H.grant_language(/datum/language/celestial)
	H.grant_language(/datum/language/orcish)
	H.grant_language(/datum/language/beast)
	H.grant_language(/datum/language/draconic)

/datum/quirk/civilizedbarbarian
	name = "Tavern Brawler"
	desc = "I am a barstool warrior. Improvised weapons are more effective in my hands."
	value = 2

/datum/quirk/civilizedbarbarian/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_CIVILIZEDBARBARIAN, TRAIT_GENERIC) //Need to make trait improve hitting people with chairs, mugs, goblets.

/datum/quirk/mastercraftsmen
	name = "Master Craftsman"
	desc = "In my youth, I've decided I'd get a grasp on every trade, and pursued the 10 arts of the craft. I am passable at each of them."
	value = 3

/datum/quirk/mastercraftsmen/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.mind.adjust_skillrank_up_to(/datum/skill/craft/crafting, 3, TRUE)
	H.mind.adjust_skillrank_up_to(/datum/skill/craft/weaponsmithing, 3, TRUE)
	H.mind.adjust_skillrank_up_to(/datum/skill/craft/armorsmithing, 3, TRUE)
	H.mind.adjust_skillrank_up_to(/datum/skill/craft/blacksmithing, 3, TRUE)
	H.mind.adjust_skillrank_up_to(/datum/skill/craft/carpentry, 3, TRUE)
	H.mind.adjust_skillrank_up_to(/datum/skill/craft/masonry, 3, TRUE)
	H.mind.adjust_skillrank_up_to(/datum/skill/craft/traps, 3, TRUE)
	H.mind.adjust_skillrank_up_to(/datum/skill/craft/cooking, 3, TRUE)
	H.mind.adjust_skillrank_up_to(/datum/skill/craft/engineering, 3, TRUE)
	H.mind.adjust_skillrank_up_to(/datum/skill/craft/tanning, 3, TRUE)
	H.mind.adjust_skillrank_up_to(/datum/skill/misc/sewing, 3, TRUE)
	H.mind.adjust_skillrank_up_to(/datum/skill/misc/alchemy, 3, TRUE)
	H.mind.adjust_skillrank_up_to(/datum/skill/craft/smelting, 3, TRUE) //lets be real you are taking this for smithing only.
	H.mind.special_items["Hammer"] = /obj/item/rogueweapon/hammer/claw //works same as normal hammer. for smithing
	H.mind.special_items["Tongs"] = /obj/item/rogueweapon/tongs
	H.mind.special_items["Coal"] = /obj/item/rogueore/coal // ya get one kid, make an ore furnace and smelt logs for the rest.


/datum/quirk/bleublood
	name = "Noble Lineage"
	desc = "I am of noble blood."
	value = 1

/datum/quirk/bleublood/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_NOBLE, TRAIT_GENERIC)
	H.mind.adjust_skillrank_up_to(/datum/skill/misc/reading, 2, TRUE)

/datum/quirk/richpouch
	name = "Rich Pouch"
	desc = "I have a pouch full of coins."
	value = 1

/datum/quirk/richpouch/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	var/obj/item/pouch = new /obj/item/storage/belt/rogue/pouch/coins/rich(get_turf(H))
	H.put_in_hands(pouch, forced = TRUE)

/datum/quirk/swift
	name = "Speedster"
	desc = "I am very athletic and fast. I can also dodge anything as long as I am not weighted down by medium or heavier armor."
	value = 5

/datum/quirk/swift/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_DODGEEXPERT, TRAIT_GENERIC)
	H.mind.adjust_skillrank(/datum/skill/misc/athletics, 5, TRUE)
	H.change_stat("speed", 3)

/datum/quirk/gourmand
	name = "Gourmand"
	desc = "I can eat even the most spoiled, raw, or toxic food and water as if they were delicacies. I'm even immune to the berry poison some folk like to coat their arrows with."
	value = 3

/datum/quirk/gourmand/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_NASTY_EATER, TRAIT_GENERIC)

/datum/quirk/backproblems
	name = "Giant"
	desc = "I've always been called a giant (atleast among my kin). I am valued for my stature, but, this world made for smaller folk has forced me to move cautiously."
	value = 0

/datum/quirk/backproblems/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.change_stat("strength", 2)
	H.change_stat("constitution", 1)
	H.change_stat("speed", -2)
	H.transform = H.transform.Scale(1.25, 1.25)
	H.transform = H.transform.Translate(0, (0.25 * 16))
	H.update_transform()



//negative
/datum/quirk/nimrod
	name = "Nimrod"
	desc = "In the past I learned slower than my peers, and I tend to be clumsy."
	value = -7

/datum/quirk/nimrod/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.change_stat("speed", -2)
	H.change_stat("intelligence", -4)

/datum/quirk/nopouch
	name = "No Pouch"
	desc = "I lost my pouch recently, I'm without a zenny.."
	value = -4

/datum/quirk/nopouch/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	var/obj/item/pouch = locate(/obj/item/storage/belt/rogue/pouch) in H
	if(H.wear_neck == pouch)
		H.wear_neck = null
	if(H.beltl == pouch)
		H.beltl = null
	if(H.beltr == pouch)
		H.beltr = null
	qdel(pouch)

/datum/quirk/hussite
	name = "Known Heretic"
	desc = "I've been denounced by the church for either reasons legitimate or not!"
	value = -8

/datum/quirk/hussite/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	GLOB.excommunicated_players += H.real_name

/datum/quirk/bounty
	name = "Hunted Man"
	desc = "Someone put a bounty on my head!"
	value = -4

/datum/quirk/bounty/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	var/reason = ""
	var/employer = "unknown employer"
	var/employer_gender
	if(prob(65))
		employer_gender = MALE
	else
		employer_gender = FEMALE
	if(employer_gender == MALE)
		employer = pick(list("Baron", "Lord", "Nobleman", "Prince"))
	else
		employer = pick(list("Duchess", "Lady", "Noblelady", "Princess"))
	employer = "[employer] [random_human_name(employer_gender, FALSE, FALSE)]"
	var/amount = rand(40,100)
	switch(rand(1,8))
		if(1)
			reason = "murder"
		if(2)
			reason = "kinslaying"
		if(3)
			reason = "besmirching a noble's name"
		if(4)
			reason = "treason"
		if(5)
			reason = "arson"
		if(6)
			reason = "heresy"
		if(7)
			reason = "robbing a noble"
		if(8)
			reason = "burglary"
	add_bounty(H.real_name, amount, FALSE, reason, employer)
	to_chat(H, span_notice("Whether I done it or not, I have been accused of [reason], and the [employer] put a bounty on my head!"))

/datum/quirk/outlaw
	name = "Known Outlaw"
	desc = "Whether for crimes I did or was accused of, I have been declared an outlaw!"
	value = -4

/datum/quirk/outlaw/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	make_outlaw(H.real_name, TRUE)

/datum/quirk/sillyvoice
	name = "Annoying"
	desc = "People really hate my voice for some reason."
	value = -4

/datum/quirk/sillyvoice/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_COMICSANS, TRAIT_GENERIC)
	H.dna.add_mutation(WACKY)

/datum/quirk/unlucky
	name = "Unlucky"
	desc = "Ever since you knocked over that glass vase, you just feel... off"
	value = -6

/datum/quirk/unlucky/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.STALUC = rand(1, 10)


/datum/quirk/jesterphobia
	name = "Jesterphobic"
	desc = "I have a severe, irrational fear of Jesters"
	value = -4

/datum/quirk/jesterphobia/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_JESTERPHOBIA, TRAIT_GENERIC)

/datum/quirk/dweakness
	name = "Deceiving Weakness"
	desc = "People think i am weak... THINK."
	value = -4

/datum/quirk/dweakness/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_DECEIVING_MEEKNESS, TRAIT_GENERIC)

/datum/quirk/wild_night
	name = "Wild Night"
	desc = "I don't remember what I did last night, and now I'm lost!"
	value = -4

/datum/quirk/wild_night/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	var/turf/location = get_spawn_turf_for_job("Pilgrim")
	H.forceMove(location)
	grant_lit_torch(H)

/datum/quirk/atrophy
	name = "Atrophy"
	desc = "When growing up I could barely feed myself... this left me weak and fragile"
	value = -6

/datum/quirk/atrophy/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.change_stat("strength", -2)
	H.change_stat("constitution", -2)
	H.change_stat("endurance", -2)

/datum/quirk/nude_sleeper
	name = "Picky Sleeper"
	desc = "I just can't seem to fall asleep unless I'm <i>truly</i> comfortable..."
	value = -7 //Sleeping people are already rather vulnerable. Having to take off literally everything is more than just bothersome.

/datum/quirk/nude_sleeper/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.change_stat("endurance", 1) //since sleeping naked will probably get you sick or some shit.
	H.change_stat("constitution", 1)
	ADD_TRAIT(H, TRAIT_NUDE_SLEEPER, TRAIT_GENERIC)

/datum/quirk/nymphomaniac
	name = "Nymphomaniac"
	desc = "My experiences with certain things make me good in bed."
	value = -5
/datum/quirk/nymphomaniac/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_GOODLOVER, TRAIT_GENERIC)

// disgustingly hooking into quirks to provide a convenient way to become a vampire
/datum/quirk/vampire
	name = "Blood Sucker"
	desc = "You need blood to survive, depending if you are merely an beast folk that needs blood to survive or a mutated human, you are not truly a vampire, of course others might think you are. (To gain the undead trait, and all the benefits of being a vampire, select the correct virtue alongside this quirk.)"
//	desc = "You've existed long before the gods existed, you know the truth and have no reason to worship them. You are faithless. After attaining power, Levishth has cursed your people, bringing bad omens where ever you go. For this reason, the people of Stonehedge have shunned you and discriminated against you, there is no possible way an antediluvian will ever hold a position of power in Stonehedge, let alone be welcomed. Levishth has only shown favor to one antediluvian, rewarding them with the title of Vampire Lord, and gifting them powers far beyond that of a regular nitecreacher. Your pale skin, fangs, and eerie eyes are EASILY identifable features, so it is best to stay covered at all times in public areas."

/datum/quirk/vampire/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	var/datum/antagonist/vampire/new_antag = new /datum/antagonist/vampirelord/lesser/secret()
	H.mind.add_antag_datum(new_antag)
	H.mind.special_items["Crimson Medallion"] = /obj/item/clothing/mask/rogue/collar/medallion

/datum/antagonist/vampirelord/lesser/secret
	ashes = FALSE

/datum/antagonist/vampirelord/lesser/secret/roundend_report()
	return

/datum/antagonist/vampirelord/lesser/secret/move_to_spawnpoint()
	return

/*
/datum/quirk/werewolf
	name = "Cursed Lineage (Werewolf)"
	desc = "Cursed with lycanthropy but driven by a heart that resists darkness, you walk the line between beast and person, harnessing the primal power and keen senses of the wolf to protect rather than destroy, perhaps guided by Selûne's blessing or Mielikki's wisdom, striving to master your dual nature while society's fear and misunderstanding shadow your every step. (You are a werewolf but NOT an ANTAGONIST. DO NOT BITE PEOPLE WITHOUT A VERY GOOD REASON.)"

/datum/quirk/werewolf/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	var/datum/antagonist/werewolf/new_antag = new /datum/antagonist/werewolf/secret()
	H.mind.add_antag_datum(new_antag)

/datum/antagonist/werewolf/secret/roundend_report()
	return
*/

/datum/quirk/elvishtalker
	name = "Knows Elvish"
	desc = "I learned to speak elvish in my time here."
	value = 1

/datum/quirk/elvishtalker/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.grant_language(/datum/language/elvish)

/datum/quirk/lupinetalker
	name = "Knows Lupine"
	desc = "I learned to speak lupine in my time here."
	value = 1

/datum/quirk/lupinetalker/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.grant_language(/datum/language/canilunzt)


/datum/quirk/selfaware
	name = "Self-Aware"
	desc = "I know the extent of my wounds to a terrifying scale."
	value = 1
	mob_trait = TRAIT_SELF_AWARE
	medical_record_text = "Patient demonstrates an uncanny knack for self-diagnosis."

/datum/quirk/clothing_stasher
	name = "Clothing stasher'
	desc = "You have a few clothing stashed away"


/datum/quirk/clohing_stasher()
	var/mob/living/carbon/human/H = quirk_holder
	H.mind.special_items["Black Collar"] = /obj/item/clothing/mask/rogue/collar/black
	H.mind.special_items["Spiked Collar"] = /obj/item/clothing/mask/rogue/collar/spiked
	H.mind.special_items["Cyan Collar"] = /obj/item/clothing/mask/rogue/collar

