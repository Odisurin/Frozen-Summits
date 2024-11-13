/datum/patron/divine
	name = null
	associated_faith = /datum/faith/divine
	t0 = /obj/effect/proc_holder/spell/invoked/lesser_heal

/datum/patron/divine/astrata
	name = "Pelor"
	domain = "God of the Sun, Healing, and Agriculture"
	desc = "The benevolent god of the Sun, Pelor radiates warmth and healing to all. Farmers and healers alike revere his light and are strengthened by his guidance."
	worshippers = "Clerics of the Light, Healers, Farmers"
	t1 = /obj/effect/proc_holder/spell/invoked/sacred_flame_rogue
	t2 = /obj/effect/proc_holder/spell/invoked/heal
	t3 = /obj/effect/proc_holder/spell/invoked/revive
	confess_lines = list(
		"PELOR IS MY LIGHT!",
		"PELOR BRINGS PEACE!",
		"I SERVE THE GLORY OF THE SUN!",
	)

/datum/patron/divine/noc
	name = "Mystra"
	domain = "Goddess of Magic and Mysticism"
	desc = "Mystra is the living embodiment of all magic and arcane power within the universe. As the Goddess of Magic, she governs the weave of magic that connects all things, and her influence permeates both the natural and mystical realms. Mystra's divine presence maintains the delicate balance of magic, ensuring it flows freely yet remains controlled, for it is through her power that reality itself is shaped. She is the keeper of the Weave, the framework through which all magic is channeled and manipulated, both by mortals and immortals alike. Mystra’s guidance has fostered great civilizations and advanced arcane knowledge, yet she also serves as a reminder of the potential dangers of unchecked magical forces."
	worshippers = "Wizards and Scholars"
	mob_traits = list(TRAIT_NIGHT_OWL, TRAIT_NOCSIGHT)
	t1 = /obj/effect/proc_holder/spell/invoked/blindness/miracle
	t2 = /obj/effect/proc_holder/spell/invoked/invisibility/miracle
	confess_lines = list(
		"THE WEAVE CONNECTS ALL THAT IS!",
		"IN MYSTRA'S LIGHT, MAGIC THRIVES!",
		"MAGIC IS THE SONG OF THE UNIVERSE!",
	)

/datum/patron/divine/dendor
	name = "Silvanus"
	domain = "God of the Earth and Nature"
	desc = "The Oak Father of the wilderness, Silvanus represents nature in all its forms. He presides over the balance of the land and life itself."
	worshippers = "Druids, Beasts, Madmen"
	mob_traits = list(TRAIT_KNEESTINGER_IMMUNITY)
	t1 = /obj/effect/proc_holder/spell/targeted/blesscrop
	t2 = /obj/effect/proc_holder/spell/targeted/beasttame
	t3 = /obj/effect/proc_holder/spell/targeted/conjure_glowshroom
	t4 = /obj/effect/proc_holder/spell/self/howl/call_of_the_moon
	confess_lines = list(
		"Silvanus PROVIDES!",
		"THE TREEFATHER BRINGS BOUNTY!",
		"I ANSWER THE CALL OF THE WILD!",
	)

/datum/patron/divine/abyssor
	name = "Umberlee"
	domain = "Goddess of the Sea, Storms, and Tides"
	desc = "The Queen of the Depths, Umberlee is feared and respected by those who sail. She commands the fury of the seas. "
	worshippers = "Men of the Sea, Primitive Aquatics"
	mob_traits = list(TRAIT_ABYSSOR_SWIM)
	confess_lines = list(
		"UMBERLEE COMMANDS THE WAVES!",
		"THE OCEAN'S FURY IS UMBERLEE'S WILL!",
		"I AM DRAWN BY THE PULL OF THE TIDE!",
	)

/datum/patron/divine/ravox
	name = "Tyr"
	domain = "God of Justice, Glory, Battle"
	desc = "Tyr, the Maimed God, stands for justice and law. He is known for his unwavering sense of right and wrong and often inspires warriors with a sense of duty."
	worshippers = "Warriors, Sellswords & those who seek Justice"
	confess_lines = list(
		"TYR IS JUSTICE!",
		"THROUGH STRIFE, GRACE!",
		"THE DRUMS OF JUSTICE BEAT IN MY CHEST!",
	)

/datum/patron/divine/necra
	name = "Kelemvor"
	domain = "God of Death and the Afterlife"
	desc = "Kelemvor oversees the passage of souls, guiding them into the afterlife. He is fair and seeks to maintain balance, respected by mortals as the judge of the dead."
	worshippers = "The Dead, Mourners, Gravekeepers"
	mob_traits = list(TRAIT_SOUL_EXAMINE)
	t1 = /obj/effect/proc_holder/spell/invoked/avert
	t2 = /obj/effect/proc_holder/spell/targeted/abrogation
	t3 = /obj/effect/proc_holder/spell/targeted/soulspeak
	confess_lines = list(
		"ALL SOULS FIND THEIR WAY TO KELEMVOR!",
		"THE JUDGE IS OUR FINAL REPOSE!",
		"I FEAR NOT DEATH, AS IT AWAITS ME!",
	)

/datum/patron/divine/xylix
	name = "Olidammara"
	domain = "God of Trickery, Freedom and Inspiration"
	desc = "The Laughing Rogue, Olidammara is a god of wit, music, and freedom. His followers seek to revel in life's pleasures, from games of chance to the pursuit of inspiration. Known for his trickery and penchant for unpredictability, he is a god of those who dance to their own beat."
	worshippers = "Gamblers, Bards, Artists, and the Silver-Tongued"
	mob_traits = list(TRAIT_XYLIX)
	confess_lines = list(
		"OLIDAMMARA IS MY LIGHT!",
		"FREEDOM IS NIGHT!",
		"THE DICE PROVIDES!",
	)

/datum/patron/divine/pestra
	name = "Talona"
	domain = "Goddess of Disease, Poison, Decay and Medicine"
	desc = "The Lady of Poison, Talona represents both the natural decay of life and the spread of sickness. She is seen both as a curse and a purifier."
	worshippers = "The Sick, Phyicians, Apothecaries"
	mob_traits = list(TRAIT_EMPATH, TRAIT_ROT_EATER)
	t0 = /obj/effect/proc_holder/spell/invoked/diagnose
	t1 = /obj/effect/proc_holder/spell/invoked/lesser_heal
	t2 = /obj/effect/proc_holder/spell/invoked/heal
	t3 = /obj/effect/proc_holder/spell/invoked/attach_bodypart
	t4 = /obj/effect/proc_holder/spell/invoked/cure_rot
	confess_lines = list(
		"TALONA'S TOUCH IS INESCAPABLE!",
		"DECAY IS A CONTINUATION OF LIFE!",
		"MY AFFLICTION IS MY TESTAMENT!",
	)

/datum/patron/divine/malum
	name = "Moradin"
	domain = "God of Creation, Fire, and Crafting"
	desc = "Moradin, the Soul Forger, is the dwarven god of creation and craftsmanship. He values hard work and skill above all else."
	worshippers = "Smiths, Miners, Engineers"
	t1 = /obj/effect/proc_holder/spell/invoked/sacred_flame_rogue
	confess_lines = list(
		"MORADIN IS MY MUSE!",
		"TRUE VALUE IS IN THE TOIL!",
		"I AM AN INSTRUMENT OF CREATION!",
	)

//Eora content from Stonekeep

/datum/patron/divine/eora
	name = "Sune"
	domain = "Goddess of Love, Life and Beauty"
	desc = "Sune is the goddess of beauty and love, her followers cherishing the values of compassion and charm. She inspires the arts and romantic love."
	worshippers = "Lovers, the romantically inclined, and Doting Grandparents"
	t0 = /obj/effect/proc_holder/spell/invoked/lesser_heal
	t1 = /obj/effect/proc_holder/spell/invoked/bud
	t2 = /obj/effect/proc_holder/spell/invoked/eoracurse
	t3 = null
	confess_lines = list(
		"SUNE INSPIRES LOVE!",
		"HER BEAUTY SHINES IN ALL THINGS!",
		"I LOVE YOU, EVEN AS YOU TRESPASS AGAINST ME!",
	)
