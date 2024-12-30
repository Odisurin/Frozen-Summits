/datum/sex_action/force_milk_tits
	name = "Forcibly milk tits"
	check_same_tile = FALSE

/datum/sex_action/force_milk_tits/shows_on_menu(mob/living/user, mob/living/target)
	if(user == target)
		return FALSE
	if(!target.getorganslot(ORGAN_SLOT_BREASTS))
		return FALSE
	return TRUE

/datum/sex_action/force_milk_tits/can_perform(mob/living/carbon/human/user, mob/living/carbon/human/target)
	var/holding = user.get_active_held_item()
	if(istype(holding, /obj/item/reagent_containers/glass) != TRUE)
		return FALSE
	if(user == target)
		return FALSE
	if(ishuman(target))
		var/mob/living/carbon/human/targethuman = target
		if(targethuman.wear_shirt)
			var/obj/item/clothing/suit/roguetown/shirtsies = targethuman.wear_shirt
			if(shirtsies.flags_inv & HIDEBOOB)
				if(shirtsies == FALSE)
					return FALSE
	if(!target.getorganslot(ORGAN_SLOT_BREASTS))
		return FALSE
	return TRUE

/datum/sex_action/force_milk_tits/on_start(mob/living/user, mob/living/target)
	user.visible_message(span_warning("[user] starts milking [target]'s breasts into [user.get_active_held_item()]..."))

/datum/sex_action/force_milk_tits/on_perform(mob/living/user, mob/living/target)
	if(user.sexcon.do_message_signature("[type]"))
		user.visible_message(user.sexcon.spanify_force("[user] [user.sexcon.get_generic_force_adjective()] tugs [target]'s nipples against the [user.get_active_held_item()]..."))
	playsound(user, 'sound/misc/mat/fingering.ogg', 30, TRUE, -2, ignore_walls = FALSE)

	user.sexcon.perform_sex_action(target, 2, 4, TRUE)

	target.sexcon.handle_breast_milking(user)

/datum/sex_action/force_milk_tits/on_finish(mob/living/user, mob/living/target)
	user.visible_message(span_warning("[user] stops milking [target] into the container."))

/datum/sex_action/force_milk_tits/is_finished(mob/living/carbon/human/user, mob/living/carbon/human/target)
	if(target.sexcon.finished_check())
		return TRUE
	return FALSE


/datum/sex_action/milk_container
	name = "Milk self into container"

/datum/sex_action/milk_container/shows_on_menu(mob/living/user, mob/living/target)
	if(user != target)
		return FALSE
	if(!user.getorganslot(ORGAN_SLOT_BREASTS))
		return FALSE
	return TRUE

/datum/sex_action/milk_container/can_perform(mob/living/carbon/human/user, mob/living/carbon/human/target)
	var/holding = user.get_active_held_item()
	if(istype(holding, /obj/item/reagent_containers/glass) != TRUE)
		return FALSE
	if(user != target)
		return FALSE
	if(ishuman(target))
		var/mob/living/carbon/human/targethuman = target
		if(targethuman.wear_shirt)
			var/obj/item/clothing/suit/roguetown/shirtsies = targethuman.wear_shirt
			if(shirtsies.flags_inv & HIDEBOOB)
				if(shirtsies == FALSE)
					return FALSE
	if(!target.getorganslot(ORGAN_SLOT_BREASTS))
		return FALSE
	return TRUE

/datum/sex_action/milk_container/on_start(mob/living/user, mob/living/target)
	user.visible_message(span_warning("[user] starts milking themself into [user.get_active_held_item()]..."))

/datum/sex_action/milk_container/on_perform(mob/living/user, mob/living/target)
	var/chosen_verb = pick(list("milks themself over [user.get_active_held_item()]", "squeezes their breasts over [user.get_active_held_item()]"))
	if(user.sexcon.do_message_signature("[type]"))
		user.visible_message(user.sexcon.spanify_force("[user] [user.sexcon.get_generic_force_adjective()] [chosen_verb]..."))
	playsound(user, 'sound/misc/mat/fingering.ogg', 30, TRUE, -2, ignore_walls = FALSE)

	user.sexcon.perform_sex_action(user, 2, 0, TRUE)

	user.sexcon.handle_container_milk()

/datum/sex_action/milk_container/on_finish(mob/living/user, mob/living/target)
	user.visible_message(span_warning("[user] stops milking themself into the container."))

/datum/sex_action/milk_container/is_finished(mob/living/carbon/human/user, mob/living/carbon/human/target)
	if(user.sexcon.finished_check())
		return TRUE
	return FALSE



/datum/sex_controller/proc/handle_container_milk()
	if(arousal < PASSIVE_EJAC_THRESHOLD)
		return
	milk_container(user.get_active_held_item())


/datum/sex_controller/proc/handle_breast_milking(mob/living/carbon/human/milker)
	if(arousal < ACTIVE_EJAC_THRESHOLD)
		return
	milk_container(milker.get_active_held_item())


/datum/sex_controller/proc/do_message_signature(sigkey)
/* fuck that -vide
	var/properkey = "[speed][force][sigkey]"
	if(properkey == msg_signature && last_msg_signature + 4.0 SECONDS >= world.time)
		return FALSE
	msg_signature = properkey
	last_msg_signature = world.time
*/
	return TRUE
