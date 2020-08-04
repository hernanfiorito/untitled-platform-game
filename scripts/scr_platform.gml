///scr_platform

//Check if there is an obj_block below the player
if(place_meeting(x, y + 1, obj_block)){
    return 1;
}

//Check if there for an obj_platform below the player
if(place_meeting(x, y + 1, obj_platform) && !place_meeting(x, y, obj_platform)){
    if(player_y_spd >= 0){
        return 1;
    }
}

//Check if there's an obj_h_platform, obj_v_platform or obj_falling_platform below the player
if(place_meeting(x, y + 1, obj_h_platform) && !place_meeting(x, y, obj_h_platform)){
    return 1;
}

if(place_meeting(x, y + 1, obj_falling_platform) && !place_meeting(x, y, obj_falling_platform)){
    if(player_y_spd >= 0){
        return 1;
    }
}

if((place_meeting(x, y + 1, obj_v_platform) || place_meeting(x, y + 2, obj_v_platform)) && !place_meeting(x, y, obj_v_platform)){
    return 1;
}
