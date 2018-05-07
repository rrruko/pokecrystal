const_value set 2
	const SATANSHOUSE_COOLTRAINER_F
	const SATANSHOUSE_POKEFAN_F

SatansHouse_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

SatansDaughter:
	jumptextfaceplayer SatansDaughterText

Satan:
	jumptextfaceplayer SatanText

SatansHouseBookshelf:
	jumpstd magazinebookshelf

SatansHouseRadio:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .NormalRadio
	checkevent EVENT_LISTENED_TO_INITIAL_RADIO
	iftrue .AbbreviatedRadio
	playmusic MUSIC_POKEMON_TALK
	opentext
	writetext SatanRadioText1
	pause 45
	writetext SatanRadioText2
	pause 45
	writetext SatanRadioText3
	pause 45
	musicfadeout MUSIC_NEW_BARK_TOWN, $10
	writetext SatanRadioText4
	pause 45
	closetext
	setevent EVENT_LISTENED_TO_INITIAL_RADIO
	end
.NormalRadio:
	jumpstd radio1
.AbbreviatedRadio:
	opentext
	writetext SatanRadioText4
	pause 45
	closetext
	end

SatansDaughterText:
	text "PIKACHU is an"
	line "evolved #MON."

	para "I was amazed by"
	line "PROF.ELM's find-"
	cont "ings."

	para "He's so famous for"
	line "his research on"
	cont "#MON evolution."

	para "…sigh…"

	para "I wish I could be"
	line "a researcher like"
	cont "him…"
	done

SatanText:
	text "My daughter is"
	line "adamant about"

	para "becoming PROF."
	line "ELM's assistant."

	para "She really loves"
	line "#MON!"

	para "But then, so do I!"
	done

SatanRadioText1:
	text "PROF.OAK'S #MON"
	line "TALK! Please tune"
	cont "in next time!"
	done

SatanRadioText2:
	text "#MON CHANNEL!"
	done

SatanRadioText3:
	text "This is DJ MARY,"
	line "your co-host!"
	done

SatanRadioText4:
	text "#MON!"
	line "#MON CHANNEL…"
	done

SatansHouse_MapEventHeader: db 0, 0

.Warps: db 2
	warp_def 7, 2, 3, NEW_BARK_TOWN
	warp_def 7, 3, 3, NEW_BARK_TOWN

.CoordEvents: db 0

.BGEvents: db 3
	signpost 1, 0, SIGNPOST_READ, SatansHouseBookshelf
	signpost 1, 1, SIGNPOST_READ, SatansHouseBookshelf
	signpost 1, 7, SIGNPOST_READ, SatansHouseRadio

.ObjectEvents: db 0

