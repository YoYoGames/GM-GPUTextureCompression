// This takes the player to the next room.
// In the Room Order, after the menu room, the next room is rm_level_1 (the first level).
global.RoomTimer = get_timer();
global.TimerRunning = 2;

room_goto_next();