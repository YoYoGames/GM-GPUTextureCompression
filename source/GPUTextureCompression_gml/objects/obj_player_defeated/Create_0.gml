// Enable gravity
gravity = 1.5;

// Make the instance jump up
vspeed = -40;

// Flip the sprite horizontally so it faces right (as the original sprite for this object faces left)
image_xscale = -1;

// Set Alarm 0 to run after a while, which starts the transition
alarm[0] = 30;

// Stop all playing audio
audio_stop_all();

// Play the lose sound effect
audio_play_sound(snd_music_lose, 0, 0);