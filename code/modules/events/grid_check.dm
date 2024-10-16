/datum/round_event_control/grid_check
	name = "Grid Check"
	typepath = /datum/round_event/grid_check
	weight = 10
	max_occurrences = 1
	category = EVENT_CATEGORY_ENGINEERING
	description = "Turns off all APCs for a while, or until they are manually rebooted."

/datum/round_event/grid_check
	announce_when	= 1
	start_when = 1

/datum/round_event/grid_check/announce(fake)
	priority_announce("Abnormal activity detected in [station_name()]'s powernet. As a precautionary measure, the station's power will be shut off for an indeterminate duration.", "Critical Power Failure", "poweroff")


/datum/round_event/grid_check/start()
	power_fail(30, 120)
