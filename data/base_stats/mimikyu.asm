        db MIMIKYU ; 252

	db 55,  90,  80,  96,  50, 105
	;   hp  atk  def  spd  sat  sdf

	db GHOST, GHOST
	db 45 ; catch rate
	db 167 ; base exp
	db NO_ITEM ; item 1
	db LUCKY_EGG ; item 2
	db 254 ; gender
	db 100 ; unknown
	db 40 ; step cycles to hatch
	db 5 ; unknown
	INCBIN "gfx/pics/blissey/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db FAST ; growth rate
	dn FAIRY, FAIRY ; egg groups

	; tmhm
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, SNORE, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, SOLARBEAM, IRON_TAIL, RETURN, DIG, SHADOW_BALL, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, FIRE_BLAST, DEFENSE_CURL, DREAM_EATER, REST, ATTRACT, FLASH
	; end
