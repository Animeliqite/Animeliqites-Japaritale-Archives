ini_open("settings.ini");
ini_write_real("General","Language",global.chosen_language);
ini_write_real("General","SFXVolume",audio_emitter_get_gain(global._gmu_emitter_sfx));
ini_write_real("General","BGMVolume",audio_emitter_get_gain(global._gmu_emitter_bgm));
ini_close();