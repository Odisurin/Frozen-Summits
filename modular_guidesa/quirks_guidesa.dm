/datum/quirk/elemental_breath_fire
	name = "Elemental Breath (Fire Breath)"
	desc = "Harness the elemental fury within you to unleash a breath of scorching fire. This power, often gifted by draconic heritage or a deep elemental connection, allows you to exhale a ball of flames, searing the enemies. Its not not as strong as a true dragon breath, the intensity only embodies a little of your lineage's power, but it requires time to recover after each use."
	value = 5

/datum/quirk/elemental_breath_fire/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/projectile/elemental_fire_breath)

/obj/effect/proc_holder/spell/invoked/projectile/elemental_fire_breath
	name = "Fire Breath"
	desc = "Using your own body energy or organ, you can use fire breath as a minor weapon."
	clothes_req = FALSE
	range = 8
	projectile_type = /obj/projectile/magic/aoe/fireball/firebolt5e
	overlay_state = "fireball_multi"
	sound = list('sound/magic/whiteflame.ogg')
	active = FALSE
	releasedrain = 30
	chargedrain = 1
	chargetime = 3
	charge_max = 15 SECONDS
	warnie = "spellwarning"
	no_early_release = TRUE
	movement_interrupt = FALSE
	charging_slowdown = 3
	chargedloop = /datum/looping_sound/invokegen
	associated_skill = /datum/skill/magic/arcane
	cost = 1
	xp_gain = TRUE

/obj/projectile/magic/aoe/fireball/firebolt5e
	name = "fireball"
	exp_heavy = 0
	exp_light = 0
	exp_flash = 1
	exp_fire = -1
	damage = 35
	damage_type = BURN
	nodamage = FALSE
	flag = "magic"
	hitsound = 'sound/blank.ogg'
	aoe_range = 0

//---------------------------------------------

/datum/quirk/elemental_breath_eletricity
	name = "Elemental Breath (Lighting Breath)"
	desc = "You can unleash a bolt of lightning from your breath, striking enemies in a straight line. This power comes from your draconic heritage or elemental connection and can only be used occasionally as it takes time to recharge."
	value = 5

/datum/quirk/elemental_breath_eletricity/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/projectile/lightningbolt)
