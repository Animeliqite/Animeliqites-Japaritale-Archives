Fader_Fade(-1,0,15);

ini_open("settings.ini");
ini_write_real("General","LowVFX",global.low_vfx);
ini_write_real("General","Border",global.chosen_border);
ini_write_real("Setup","SetupDone",true);
ini_close();

room_goto(room_disclaimer);