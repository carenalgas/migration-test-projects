@tool
extends "res://addons/popochiu/engine/interfaces/i_audio.gd"

# cues ----
var sfx_drawer_close: AudioCueSound = load("res://game/rooms/house/props/drawer/audio/sfx_drawer_close.tres")
var sfx_drawer_open: AudioCueSound = load("res://game/rooms/house/props/drawer/audio/sfx_drawer_open.tres")
var sfx_apple_fall: AudioCueSound = load("res://game/rooms/outside/props/tree/audio/sfx_apple_fall.tres")
var sfx_tree_impact: AudioCueSound = load("res://game/rooms/outside/props/tree/audio/sfx_tree_impact.tres")
var vo_goddiu_happy_01: AudioCueSound = load("res://game/characters/goddiu/voices/vo_goddiu_happy_01.tres")
var vo_goddiu_happy_03: AudioCueSound = load("res://game/characters/goddiu/voices/vo_goddiu_happy_03.tres")
var vo_goddiu_happy_05: AudioCueSound = load("res://game/characters/goddiu/voices/vo_goddiu_happy_05.tres")
var vo_goddiu_normal_01: AudioCueSound = load("res://game/characters/goddiu/voices/vo_goddiu_normal_01.tres")
var vo_goddiu_normal_02: AudioCueSound = load("res://game/characters/goddiu/voices/vo_goddiu_normal_02.tres")
var vo_goddiu_normal_03: AudioCueSound = load("res://game/characters/goddiu/voices/vo_goddiu_normal_03.tres")
var vo_goddiu_sad_02: AudioCueSound = load("res://game/characters/goddiu/voices/vo_goddiu_sad_02.tres")
var vo_goddiu_sad_04: AudioCueSound = load("res://game/characters/goddiu/voices/vo_goddiu_sad_04.tres")
var vo_goddiu_sad_06: AudioCueSound = load("res://game/characters/goddiu/voices/vo_goddiu_sad_06.tres")
var vo_popsy_happy_02: AudioCueSound = load("res://game/characters/popsy/voices/vo_popsy_happy_02.tres")
var vo_popsy_happy_05: AudioCueSound = load("res://game/characters/popsy/voices/vo_popsy_happy_05.tres")
var vo_popsy_happy_07: AudioCueSound = load("res://game/characters/popsy/voices/vo_popsy_happy_07.tres")
var vo_popsy_normal_01: AudioCueSound = load("res://game/characters/popsy/voices/vo_popsy_normal_01.tres")
var vo_popsy_normal_02: AudioCueSound = load("res://game/characters/popsy/voices/vo_popsy_normal_02.tres")
var vo_popsy_normal_03: AudioCueSound = load("res://game/characters/popsy/voices/vo_popsy_normal_03.tres")
var vo_popsy_sad_03: AudioCueSound = load("res://game/characters/popsy/voices/vo_popsy_sad_03.tres")
var vo_popsy_sad_05: AudioCueSound = load("res://game/characters/popsy/voices/vo_popsy_sad_05.tres")
var vo_popsy_sad_06: AudioCueSound = load("res://game/characters/popsy/voices/vo_popsy_sad_06.tres")
var mx_beach_time: AudioCueMusic = load("res://game/music/mx_beach_time.tres")
var mx_two_popochius: AudioCueMusic = load("res://game/music/mx_two_popochius.tres")
# ---- cues

