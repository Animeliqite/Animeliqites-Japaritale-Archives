hurt = function(){ 
    //Hurt the player
    Player_Hurt(Player_CalculateDamage(4));

    //Let the soul show the hurt animation
    Battle_CallSoulEventHurt();
}

if(!_hurt){
    if(image_blend==c_orange){
        if(!battle_soul._moving)
            hurt();
    }
    else if(image_blend==c_aqua){
        if(battle_soul._moving)
            hurt();
    }
    else{
        hurt();
    }
    
    _hurt=true;
}