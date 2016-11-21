if (global.muted){
    audio_master_gain(1);
    for (i = 0; i < instance_number(obj_mutebtn); i++){
        instance = instance_find(obj_mutebtn,i);
        instance.sprite_index = spr_unmuted;
    }
}else{
    audio_master_gain(0);
    for (i = 0; i < instance_number(obj_mutebtn); i++){
        instance = instance_find(obj_mutebtn,i);
        instance.sprite_index = spr_muted;
    }
}
global.muted = !global.muted;
