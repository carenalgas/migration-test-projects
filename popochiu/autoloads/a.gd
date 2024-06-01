@tool
extends "res://addons/popochiu/engine/interfaces/i_audio.gd"

# classes ----
const AudioCueSound := preload("res://addons/popochiu/engine/audio_manager/audio_cue_sound.gd")
const AudioCueMusic := preload("res://addons/popochiu/engine/audio_manager/audio_cue_music.gd")
# ---- classes

# cues ----
var vo_goddiu_normal_01: AudioCueSound = preload("res://popochiu/characters/goddiu/audio/vo_goddiu_normal_01.tres")
var vo_goddiu_normal_02: AudioCueSound = preload("res://popochiu/characters/goddiu/audio/vo_goddiu_normal_02.tres")
var vo_goddiu_normal_03: AudioCueSound = preload("res://popochiu/characters/goddiu/audio/vo_goddiu_normal_03.tres")
var vo_popsy_happy_01: AudioCueSound = preload("res://popochiu/characters/popsy/audio/vo_popsy_happy_01.tres")
var vo_popsy_happy_02: AudioCueSound = preload("res://popochiu/characters/popsy/audio/vo_popsy_happy_02.tres")
var vo_popsy_happy_03: AudioCueSound = preload("res://popochiu/characters/popsy/audio/vo_popsy_happy_03.tres")
var vo_popsy_normal_01: AudioCueSound = preload("res://popochiu/characters/popsy/audio/vo_popsy_normal_01.tres")
var vo_popsy_normal_02: AudioCueSound = preload("res://popochiu/characters/popsy/audio/vo_popsy_normal_02.tres")
var vo_popsy_normal_03: AudioCueSound = preload("res://popochiu/characters/popsy/audio/vo_popsy_normal_03.tres")
var vo_popsy_sad_01: AudioCueSound = preload("res://popochiu/characters/popsy/audio/vo_popsy_sad_01.tres")
var vo_popsy_sad_02: AudioCueSound = preload("res://popochiu/characters/popsy/audio/vo_popsy_sad_02.tres")
var vo_popsy_sad_03: AudioCueSound = preload("res://popochiu/characters/popsy/audio/vo_popsy_sad_03.tres")
var mx_two_popochius: AudioCueMusic = preload("res://popochiu/music/mx_two_popochius.tres")
var sfx_drawer_close: AudioCueSound = preload("res://popochiu/rooms/house/props/drawer/sfx_drawer_close.tres")
var sfx_drawer_open: AudioCueSound = preload("res://popochiu/rooms/house/props/drawer/sfx_drawer_open.tres")
var sfx_apple_fall: AudioCueSound = preload("res://popochiu/rooms/outside/props/tree/sfx_apple_fall.tres")
var sfx_tree_impact: AudioCueSound = preload("res://popochiu/rooms/outside/props/tree/sfx_tree_impact.tres")
# ---- cues

