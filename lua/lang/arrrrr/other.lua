L = LANG.GetLanguageTableReference("ARRRRR")

PrintTable(roles.GetList())

local function RoleIsValid(name) --Check if role is loaded
	local roles = roles.GetList()
	for _, v in pairs(roles) do
		if v.ClassName == name then
			return true
		end
	end
	return false
end

--ROLE: SPY
if RoleIsValid("spy") then
L[SPY.name] = "Spy"
L["info_popup_" .. SPY.name] = [[You are a spy! A spy plays in the innocent team but is shown to the traitos as their mate to confuse them.]]
L["body_found_" .. SPY.abbr] = "They were a spy!"
L["search_role_" .. SPY.abbr] = "This person was a spy!"
L["target_" .. SPY.name] = "Spy"
L["ttt2_desc_" .. SPY.name] = [[]]

L["ttt2_teamchat_jammed_" .. SPY.name] = "You are not able to chat with your team until every Spy is dead!"
L["ttt2_teamvoice_jammed_" .. SPY.name] = "You are not able to use the team voice chat until every Spy is dead!"
L["ttt2_fakebuy_success_" .. SPY.name] = "Erfolgreich die Traitoren getrickst!"
end

--ROLE: SIDEKICK
if RoleIsValid("sidekick") then
L[SIDEKICK.name] = "Sidekick"
L["target_" .. SIDEKICK.name] = "Sidekick"
L["ttt2_desc_" .. SIDEKICK.name] = [[You need to win with your mate!]]
L["body_found_" .. SIDEKICK.abbr] = "They were a Sidekick."
L["search_role_" .. SIDEKICK.abbr] = "This person was a Sidekick!"
end

--ROLE: UNKNOWN
if RoleIsValid("unknown") then
L[UNKNOWN.name] = "Unknown"
L["info_popup_" .. UNKNOWN.name] = [[You can decide who you want to be...
Get killed by someone to receive the role of your killer!]]
L["body_found_" .. UNKNOWN.abbr] = "They were an Unknown."
L["search_role_" .. UNKNOWN.abbr] = "This person was an Unknown!"
L["target_" .. UNKNOWN.name] = "Unknown"
L["ttt2_desc_" .. UNKNOWN.name] = [[The Unknown can decide (more or less) about his role.
Get killed by someone to receive the role of your killer!]]
L["unknown_revival"] = "You will be revived!"
L["unknown_revival_text"] = "You will be revived as {role} in {time} second(s). Be prepared."
L["unknown_revival_canceled"] = "Revival Canceled"
L["unknown_revival_canceled_text"] = "Your revival was canceled because your killer died prematurely."
end

--ROLE: PHARAOH
if RoleIsValid("pharaoh") then
L[PHARAOH.name] = "Pharaoh"
L["info_popup_" .. PHARAOH.name] = [[You are the Pharaoh!
Use your Ankh to your benefit. Place it in a strategic position and make sure it is protected!]]
L["body_found_" .. PHARAOH.abbr] = "They were a Pharaoh."
L["search_role_" .. PHARAOH.abbr] = "This person was a Pharaoh!"
L["target_" .. PHARAOH.name] = "Pharaoh"
L["ttt2_desc_" .. PHARAOH.name] = [[The Pharaoh is an innocent player that has a special item to use to his benefit!]]

L[GRAVEROBBER.name] = "Graverobber"
L["info_popup_" .. GRAVEROBBER.name] = [[You are the Graverobber!
Search for the placed Ankh and try to use it for your benefit!]]
L["body_found_" .. GRAVEROBBER.abbr] = "They were a Graverobber."
L["search_role_" .. GRAVEROBBER.abbr] = "This person was a Graverobber!"
L["target_" .. GRAVEROBBER.name] = "Graverobber"
L["ttt2_desc_" .. GRAVEROBBER.name] = [[The Graverobber is a player in the traitor team that is the adversary of the pharao.]]

L["ttt2_weapon_ankh_name"] = "Ankh"
L["ttt2_weapon_ankh_desc"] = "Place this ankh on the ground."
L["weapon_ttt_ankh_help"] = "Use {primaryfire} to place the ankh on the ground."
L["ankh_short_desc"] = "A mystical thing on the ground that allows specific players to respawn."
L["ankh_convert"] = "Hold [{usekey}] to convert"
L["ankh_no_convert"] = "You can't convert this ankh right now"
L["ankh_unknown_terrorist"] = "This is the Ankh of an unknown terrorist"
L["ankh_no_pickup"] = "You can't pick up this Ankh"
L["ankh_health_points"] = "Health: {health} / {maxhealth}"
L["ankh_progress"] = "Conversion Progress: {progress}%"
L["ankh_broken"] = "Your ankh was broken."
L["ankh_broken_adv"] = "The ankh was broken."
L["ankh_no_traitor_alive"] = "The Ankh can't be placed if no traitor is alive."
L["ankh_too_steep"] = "This surface is to steep to place an Ankh."
L["ankh_selected_graverobber"] = "A traitor got converted to a graverobber. They are now your adversary!"
L["ankh_popup_converted_title"] = "Your Ankh was Converted!"
L["ankh_popup_converted_text"] = "Your adversary got enough time to convert your ankh and use it for his own purposes. Get back to it and make sure it is yours again!"
L["ankh_revival"] = "You will be revived!"
L["ankh_revival_text"] = "The power of the ankh will revive you in {time} second(s). Be prepared."
L["ankh_revival_canceled"] = "Revival Canceled"
L["ankh_revival_canceled_text"] = "Your revival was canceled because your ankh has been destroyed."
L["ankh_insufficient_room"] = "Insufficient room."
L["ankh_owner_is_reviving"] = "Conversion blocked - owner is reviving"
end

--ROLE: NECROMANCER
if RoleIsValid("necromancer") then
L[NECROMANCER.name] = "Necromancer"
L[NECROMANCER.defaultTeam] = "TEAM Necromancers"
L["hilite_win_" .. NECROMANCER.defaultTeam] = "THE NECROMANCER WON"
L["win_" .. NECROMANCER.defaultTeam] = "The Necromancer has won!"
L["info_popup_" .. NECROMANCER.name] = [[Now it's your turn! Try to get some dead players to fight on your side!]]
L["body_found_" .. NECROMANCER.abbr] = "They were a Necromancer!"
L["search_role_" .. NECROMANCER.abbr] = "This person was a Necromancer!"
L["ev_win_" .. NECROMANCER.defaultTeam] = "The evil Necromancer won the round!"
L["target_" .. NECROMANCER.name] = "Necromancer"
L["ttt2_desc_" .. NECROMANCER.name] = [[The Necromancer needs to revive dead players. If a player gets revived, the player looks like a zombie and will die if the ammo is empty.]]

L[ZOMBIE.name] = "Zombie"
L["target_" .. ZOMBIE.name] = "Zombie"
L["ttt2_desc_" .. ZOMBIE.name] = [[You need to win with your mate!]]
L["body_found_" .. ZOMBIE.abbr] = "They were a Zombie!"
L["search_role_" .. ZOMBIE.abbr] = "This person was a Zombie!"

L["necro_defi_name"] = "Necro's Defi"
L["zombie_pistol_name"] = "Zombie Deagle"

L["revived_by_necromancer"] = "You are revived by {name} as a necromancer zombie. Prepare yourself!"
L["necrodefi_hold_key_to_revive"] = "Hold [{key}] to revive player as a zombie"
L["necrodefi_revive_progress"] = "Time left: {time}s"
L["necrodefi_charging"] = "Defibrillator is recharging, please wait"
L["necrodefi_player_already_reviving"] = "Player is already reviving"
L["necrodefi_error_no_space"] = "There is insufficient room available for this revival attempt."
L["necrodefi_error_too_fast"] = "Defibrillator is recharging. Please wait."
L["necrodefi_error_lost_target"] = "You lost your target. Please try again."
L["necrodefi_error_no_valid_ply"] = "You can't revive this player since they are no longer valid."
L["necrodefi_error_already_reviving"] = "You can't revive this player since they are already reviving."
L["necrodefi_error_failed"] = "Revival attempt failed. Please try again."
end

--ROLE: MARKER
if RoleIsValid("marker") then
L[MARKER.name] = "Marker"
L[TEAM_MARKER] = "TEAM marker"
L["info_popup_" .. MARKER.name] = [[You are the Marker!
	Try to mark all players! It"s hard, but don"t wait until only a few players are left...]]
L["body_found_" .. MARKER.abbr] = "They were a Marker."
L["search_role_" .. MARKER.abbr] = "This person was a Marker!"
L["target_" .. MARKER.name] = "Marker"
L["ttt2_desc_" .. MARKER.name] = [[The Marker needs to win alone!]]
L["hilite_win_" .. TEAM_MARKER] = "THE MARKER WON"
L["win_" .. TEAM_MARKER] = "The Marker has won!"
L["ev_win_" .. TEAM_MARKER] = "The evil Marker won the round!"
L["credit_" .. MARKER.abbr .. "_all"] = "Markers, you have been awarded {num} equipment credit(s) for your performance."

L["ttt_marker_was_marked"] = "This player seems to be covered in color. They were marked!"
L["ttt_marker_player_deal_no_damage"] = "You are a marker, you can't deal any damage!"
L["ttt_marker_player_take_no_damage"] = "This player is marked and can't hurt you!"
L["ttt_marker_marked"] = "It seems like a player was marked."
L["ttt_marker_died"] = "It seems like a marked player died."
L["ttt_marker_player_marked"] = "PLAYER IS MARKED"

L["weapon_markerdefi_name"] = "Marker's Defi"
L["weapon_markerdefi_desc"] = "Revives dead people as marked players. They keep their role."

L["ttt2_paintgun_name"] = "Marker's Gun"
L["ttt2_paintgun_desc"] = "Marks players while covering them in color."

L["revived_by_marker"] = "You are revived by {name}. You will keep your role but you will be marked. Prepare yourself!"
L["markerdefi_hold_key_to_revive"] = "Hold [{key}] to revive player as a marked player"
L["markerdefi_revive_progress"] = "Time left: {time}s"
L["markerdefi_charging"] = "Defibrillator is recharging, please wait"
L["markerdefi_player_already_reviving"] = "Player is already reviving"
L["markerdefi_error_no_space"] = "There is insufficient room available for this revival attempt."
L["markerdefi_error_too_fast"] = "Defibrillator is recharging. Please wait."
L["markerdefi_error_lost_target"] = "You lost your target. Please try again."
L["markerdefi_error_no_valid_ply"] = "You can't revive this player since they are no longer valid."
L["markerdefi_error_already_reviving"] = "You can't revive this player since they are already reviving."
L["markerdefi_error_failed"] = "Revival attempt failed. Please try again."
end

--ROLE: SNIFFER
if RoleIsValid("sniffer") then
L[SNIFFER.name] = "Sniffer"
L["info_popup_" .. SNIFFER.name] = [[You are a Sniffer!
Try to get some credits!]]
L["body_found_" .. SNIFFER.abbr] = "They were a Sniffer."
L["search_role_" .. SNIFFER.abbr] = "This person was a Sniffer!"
L["target_" .. SNIFFER.name] = "Sniffer"
L["ttt2_desc_" .. SNIFFER.name] = [[The Sniffer is a Detective, working together with the other detectives]]
end

--ROLE: SURVIVALIST
if RoleIsValid("survivalist") then
L[SURVIVALIST.name] = "Survivalist"
L["info_popup_" .. SURVIVALIST.name] = [[You are a Survivalist!
Try to survive and protect your mates if possible!]]
L["body_found_" .. SURVIVALIST.abbr] = "They were a Survivalist."
L["search_role_" .. SURVIVALIST.abbr] = "This person was a Survivalist!"
L["target_" .. SURVIVALIST.name] = "Survivalist"
L["ttt2_desc_" .. SURVIVALIST.name] = [[The Survivalist is a better innocent, because he is able to access his own ([C]) shop.
Try to protect the innocents!]]
end

--ROLE: SERIALKILLER
if RoleIsValid("serialkiller") then
L[SERIALKILLER.name] = "Serial Killer"
L[SERIALKILLER.defaultTeam] = "TEAM Serial Killers"
L["hilite_win_" .. SERIALKILLER.defaultTeam] = "THE SK WON"
L["win_" .. SERIALKILLER.defaultTeam] = "The Serial Killer has won!"
L["info_popup_" .. SERIALKILLER.name] = [[Now it's your turn! Kill them all. Use your tracker to find your targets.
Right klicking with your knife throws an explosive grenade.]]
L["body_found_" .. SERIALKILLER.abbr] = "They were a Serial Killer!"
L["search_role_" .. SERIALKILLER.abbr] = "This person was a Serial Killer!"
L["ev_win_" .. SERIALKILLER.defaultTeam] = "The deadly Serial Killer won the round!"
L["target_" .. SERIALKILLER.name] = "Serial Killer"
L["ttt2_desc_" .. SERIALKILLER.name] = [[The Serialkiller needs to kill every player and must be the last survivor to win the game.
He can access his own ([C]) shop and is able to see every player through the walls (as well as he is able to select the jester from the other players).]]

L["ttt2_role_sk_knife_primary"] = "{primaryfire} attacks a focused player"
L["ttt2_role_sk_knife_secondary"] = "{secondaryfire} throws a shake nade"
end

--ROLE: VAMPIRE
if RoleIsValid("vampire") then
L[VAMPIRE.name] = "Taube"
L["info_popup_" .. VAMPIRE.name] = [[Und dann hat er sich in eine Taube verwandelt,
er nannte sich Taubenrichard!
Lustigste Scheiße, die ich je gesehen habe.]]
L["body_found_" .. VAMPIRE.abbr] = "Er war eine Taube!"
L["search_role_" .. VAMPIRE.abbr] = "Diese Person war eine Taube"
L["target_" .. VAMPIRE.name] = "Regierungsüberwachungsdrohne"
L["ttt2_desc_" .. VAMPIRE.name] = [[Die Taube ist ein Traitarrrrr, welche alle anderen nicht-Traitarrrrr umbringen muss.
Um sich in Taubenrichard zu verwandeln, muss zuerst im F1-Menü . To make it balanced, the Vampire needs to kill another player every minute. Otherwise, he will fall into Bloodlust. In Bloodlust, the Vampire loses 1 hp every 2 seconds.
In Bloodlust, the vampire heals 50% of the damage he did to other players. In addition to that, he can just transform into Pigeon if he is in bloodlust. So you be also able to trigger into bloodlust, but it's not possible to undo it.]]
end

--ROLE: HITMAN
if RoleIsValid("hitman") then
L[HITMAN.name] = "Hitman"
L["info_popup_" .. HITMAN.name] = [[You are a Hitman!
Try to get some credits!]]
L["body_found_" .. HITMAN.abbr] = "They were a Hitman!"
L["search_role_" .. HITMAN.abbr] = "This person was a Hitman!"
L["target_" .. HITMAN.name] = "Hitman"
L["ttt2_desc_" .. HITMAN.name] = [[The Hitman is a Traitor working together with the other traitors with the goal to kill all other non-traitor players.
The Hitman is just able to collect some credits if he kills his target.]]

L["ttt2_hitman_target_killed_credits"] = "You received {amount} credit(s) for eleminating your target."
L["ttt2_hitman_target_killed"] = "You've killed your target!"
L["ttt2_hitman_chat_reveal"] = "'{playername}' is a Hitman!"
L["ttt2_hitman_target_died"] = "Your target died..."
end

--ROLE: INFECTED
if RoleIsValid("infected") then
L[INFECTED.name] = "Infected"
L[INFECTED.defaultTeam] = "TEAM Infecteds"
L["hilite_win_" .. INFECTED.defaultTeam] = "THE INF WON"
L["win_" .. INFECTED.defaultTeam] = "The Infected has won!"
L["info_popup_" .. INFECTED.name] = [[Now its your turn! Infect them all by killing them.]]
L["body_found_" .. INFECTED.abbr] = "They were an Infected!"
L["search_role_" .. INFECTED.abbr] = "This person was a Infected!"
L["ev_win_" .. INFECTED.defaultTeam] = "The ill Infected won the round!"
L["target_" .. INFECTED.name] = "Infected"
L["ttt2_desc_" .. INFECTED.name] = [[The Infected needs to infect every player to win. He will infect other players by killing them.
If a player gets infected, the player looks like a zombie and is also able to infect other players. So you can build up a whole army.
But there is one thing you need to get in mind: If the host (the main infected player with a normal model) will die or disconnect, each player that the host infected will die.
If there is a Jester, feel free to infect him.]]

L["infected_fists_name"] = "Infected Fists"
end

--ROLE: CLAIRVOYANT
if RoleIsValid("clairvoyant") then
L[CLAIRVOYANT.name] = "Clairvoyant"
L["info_popup_" .. CLAIRVOYANT.name] = [[You are the Clairvoyant!
Play them all with your knowledge against each other!
Do not talk too much about your ability, otherwise you will quickly pay for it!]]
L["body_found_" .. CLAIRVOYANT.abbr] = "They were a Clairvoyant."
L["search_role_" .. CLAIRVOYANT.abbr] = "This person was a Clairvoyant!"
L["target_" .. CLAIRVOYANT.name] = "Clairvoyant"
L["ttt2_desc_" .. CLAIRVOYANT.name] = [[The Clairvoyant is able to see whether a player is an innocent or a player has a special role.
It's his goal to survive the traitors as an innocent.
In combination with the SIDEKICK role and the JESTER role, you can kill the Jester as the only one and get a free sidekick.]]
end

--ROLE: JACKAL
if RoleIsValid("jackal") then
L[JACKAL.name] = "Jackal"
L[JACKAL.defaultTeam] = "TEAM Jackal"
L["hilite_win_" .. JACKAL.defaultTeam] = "THE JACKAL WON"
L["win_" .. JACKAL.defaultTeam] = "The Jackal has won!"
L["info_popup_" .. JACKAL.name] = [[You are the Jackal! Try to kill everyone but you!
Make use of your sidekick deagle to shoot yourself a partner in crime.]]
L["body_found_" .. JACKAL.abbr] = "They were a Jackal!"
L["search_role_" .. JACKAL.abbr] = "This person was a Jackal!"
L["ev_win_" .. JACKAL.defaultTeam] = "The evil Jackal won the round!"
L["target_" .. JACKAL.name] = "Jackal"
L["ttt2_desc_" .. JACKAL.name] = [[The Jackal needs to win alone or with his sidekick!]]
L["credit_" .. JACKAL.abbr .. "_all"] = "Jackals, you have been awarded {num} equipment credit(s) for your performance."
end

--ROLE: JESTER
if RoleIsValid("jester") then
L[JESTER.name] = "Jester"
L[JESTER.defaultTeam] = "TEAM Jesters"
L["hilite_win_" .. JESTER.defaultTeam] = "THE JESTER WON"
L["win_" .. JESTER.defaultTeam] = "The Jester has won!"
L["info_popup_" .. JESTER.name] = [[You are the JESTER! Make TROUBLE and let 'em kill you!]]
L["body_found_" .. JESTER.abbr] = "They were a Jester!"
L["search_role_" .. JESTER.abbr] = "This person was a Jester!"
L["ev_win_" .. JESTER.defaultTeam] = "The goofy Jester won the round!"
L["target_" .. JESTER.name] = "Jester"
L["ttt2_desc_" .. JESTER.name] = [[The Jester is visible for any traitor, but not for innocents or other "normal" roles (except custom traitor roles or the Clairvoyant).
The Jester can't deal any damage or kill himself. But if he dies, he will WIN. So don't kill the Jester!]]

L["ttt2_role_jester_killed_by_player"] = "{nick} killed the Jester!"
L["ttt2_role_jester_killer_info"] = "You were killed, because you killed the Jester!"
L["ttt2_role_jester_info_no_kill"] = "Don't kill the Jester!"
L["ttt2_role_jester_info_no_jester"] = "There is no Jester in this round!"
L["ttt2_role_jester_info_jester_single"] = "'{playername}' is the Jester!"
L["ttt2_role_jester_info_jester_multiple"] = "'{playernames}' are the Jesters!"

L["ttt2_role_jester_winstate_0"] = "Random jester winstate selection active."
L["ttt2_role_jester_winstate_1"] = "Jester winstate 1: You will win if you are killed."
L["ttt2_role_jester_winstate_2"] = "Jester winstate 2: You will respawn with the opposite role of your killer."
L["ttt2_role_jester_winstate_3"] = "Jester winstate 3: You will respawn with the opposite role of your killer after they died."
L["ttt2_role_jester_winstate_4"] = "Jester winstate 4: You will respawn with the role of your killer after they died."
L["ttt2_role_jester_winstate_5"] = "Jester winstate 5: You will respawn with the role of your killer and your killer will die."
L["ttt2_role_jester_winstate_6"] = "Jester winstate 6: You will respawn with the opposite role of your killer and your killer will die."
L["ttt2_role_jester_winstate_7"] = "Jester winstate 7: You will respawn with the role of your killer and your killer will die, unless your killer is a serialkiller or traitor."
end

--ROLE: BOUNCER
if RoleIsValid("bouncer") then
L[BOUNCER.name] = "Bouncer"
L["info_popup_" .. BOUNCER.name] = [[You're a Bouncer. Doors seem to attrackt you.
Sneak or duck to become invisible and manipulate the doors on the map for other players.
You have to walk slowly to use your special weapons (default: Alt key).]]
L["body_found_" .. BOUNCER.abbr] = "They were a Bouncer!"
L["search_role_" .. BOUNCER.abbr] = "This person was a Bouncer"
L["target_" .. BOUNCER.name] = "Bouncer"
L["ttt2_desc_" .. BOUNCER.name] = [[The Bouncer plays in the traitor team. He has a special appreciation for doors.]]

L["weapon_doorghost_name"] = "Door's Ghost"
L["weapon_doorghost_desc"] = "Use this on doors to infect them with the evil spirit of the Door's Ghost."
L["doorghost_help_msb1"] = "{primaryfire} infects the door with the ghost"
L["doorghost_help_msb2"] = "{secondaryfire} removes the ghost from the door"
L["doorghost_not_hauntable"] = "This door can't be haunted."
L["doorghost_already_haunted"] = "This door is already haunted."
L["doorghost_is_locked"] = "This door can't be haunted becaused it's locked."
L["doorghost_now_haunted"] = "This door is now haunted."
L["doorghost_not_haunted"] = "This door is not haunted."
L["doorghost_now_unhaunted"] = "This door isn't haunted anymore."
L["door_is_haunted"] = "This door is haunted"
end

--ROLE: PRIEST
if RoleIsValid("priest") then
L[PRIEST.name] = "Priest"
L["info_popup_" .. PRIEST.name] = [[You are the Priest!
Use your holy deagle to convert players into your brotherhood. But be careful, only innocent players behave well.]]
L["body_found_" .. PRIEST.abbr] = "They were a Priest."
L["search_role_" .. PRIEST.abbr] = "This person was a Priest!"
L["target_" .. PRIEST.name] = "Priest"
L["ttt2_desc_" .. PRIEST.name] = [[The Priest needs to win with the innocents! They can confirm players for themselves with their holy weapon.]]

L["ttt2_priest_was_priest"] = "This player appears to be a member of the brotherhood."
L["ttt2_priest_added"] = "It seems like a player was added to the brotherhood."
L["ttt2_priest_brother_died"] = "It seems like a brother died."
L["ttt2_priest_detective"] = "The holy spirit was used to hurt a detective."
L["ttt2_priest_infected"] = "The holy spirit was used to kill an infected."
L["ttt2_priest_necromancer"] = "The holy spirit was used to kill a necromancer."
L["ttt2_priest_sidekick"] = "The holy spirit was used to kill a sidekick."
L["ttt2_priest_died"] = "The holy spirit killed a priest."
L["ttt2_priest_priest"] = "You can't add a priest to the brotherhood."
L["ttt2_priest_marker"] = "It seems like the priest shot a bucket full of color."
L["ttt2_priest_brother_jackal"] = "Shooting the priest converted the whole brotherhood to sidekicks."
L["ttt2_priest_brother_necromancer"] = "Reviving the priest as a zombie converted the whole brotherhood to zombies."
L["ttt2_priest_brother_infected"] = "Killing the priest converted the whole brotherhood to infected."
L["ttt2_priest_player_brother"] = "PLAYER IS IN BROTHERHOOD"
end
