/particles/weather/ash_storm
	icon_state             = list("cross"=2, "snow_1"=5, "snow_2"=2, "snow_3"=2, "puff"=2, "spiral"=2,)
	color                  = "#100e0e"
	position               = generator("box", list(-500,-256,5), list(500,500,0))
	spin                   = generator("num",-10,10)
	gravity                = list(0, -2, 0.1)
	drift                  = generator("circle", 0, 3) // Some random movement for variation
	friction               = 0.7  // shed 30% of velocity and drift every 0.1s
	//Weather effects, max values
	maxSpawning           = 50
	minSpawning           = 10
	wind                  = 4

	// big snowflakes
	transform			 = null

/datum/particle_weather/ash
	name = "Ash Storm"
	desc = "Gentle Rain, la la description."
	particleEffectType = /particles/weather/ash_storm


	scale_vol_with_severity = TRUE
	weather_sounds = list(/datum/looping_sound/snow)
	weather_messages = list("Smoke is descending from the skies.", "Volcanic ashes is starting to cover the ground.", "Black clouds of smoke fill the sky.")

	minSeverity = 1
	maxSeverity = 10
	maxSeverityChange = 5
	severitySteps = 5
	immunity_type = TRAIT_SNOWSTORM_IMMUNE
	probability = 1
	target_trait = PARTICLEWEATHER_SNOW

//Makes you a little chilly
/datum/particle_weather/ash/weather_act(mob/living/L)
	L.adjust_bodytemperature(rand(5,10))
