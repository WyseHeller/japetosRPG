function __InputConfigVerbs()
{
    enum INPUT_VERB
    {
        //Add your own verbs here!
        MOVE_N,
        MOVE_S,
        MOVE_E,
        MOVE_W,
		MOVE_NE,
		MOVE_NW,
		MOVE_SE,
		MOVE_SW,
        ACTION,
		LADDER,
		PIPBOY,
    }
    
    enum INPUT_CLUSTER
    {
        //Add your own clusters here!
        //Clusters are used for two-dimensional checkers (InputDirection() etc.)
        NAVIGATION_BASIC,
		NAVIGATION_DIAGONAL,
    }
    
    if (not INPUT_ON_SWITCH)
    {
        InputDefineVerb(INPUT_VERB.MOVE_N, "move_n", [vk_up, "W", "K"], [-gp_axislv, gp_padu]);
        InputDefineVerb(INPUT_VERB.MOVE_S, "move_s", [vk_down, "S", "J"], [ gp_axislv, gp_padd]);
        InputDefineVerb(INPUT_VERB.MOVE_E, "move_e", [vk_left, "A", "H"], [-gp_axislh, gp_padl]);
        InputDefineVerb(INPUT_VERB.MOVE_W, "move_w", [vk_right, "D", "L"], [ gp_axislh, gp_padr]);
        InputDefineVerb(INPUT_VERB.MOVE_NE, "move_ne", [vk_numpad9, "U"], );
        InputDefineVerb(INPUT_VERB.MOVE_SE, "move_se", [vk_numpad3, "N"], );
        InputDefineVerb(INPUT_VERB.MOVE_NW, "move_nw", [vk_numpad9, "Y"], );
        InputDefineVerb(INPUT_VERB.MOVE_SW, "move_sw", [vk_numpad9, "B"], );
        InputDefineVerb(INPUT_VERB.LADDER, "ladder", [vk_backspace, vk_escape],	gp_face2);
        InputDefineVerb(INPUT_VERB.ACTION, "action", [vk_enter, "E"], gp_face3);
        InputDefineVerb(INPUT_VERB.PIPBOY, "pipboy", [vk_tab], gp_face3);
    }
    else //Flip A/B over on Switch
    {
        InputDefineVerb(INPUT_VERB.MOVE_N, "move_n", undefined, [-gp_axislv, gp_padu]);
        InputDefineVerb(INPUT_VERB.MOVE_S, "move_s", undefined, [ gp_axislv, gp_padd]);
        InputDefineVerb(INPUT_VERB.MOVE_E, "move_e", undefined, [-gp_axislh, gp_padl]);
        InputDefineVerb(INPUT_VERB.MOVE_W, "move_w", undefined, [ gp_axislh, gp_padr]);
        InputDefineVerb(INPUT_VERB.LADDER, "ladder", undefined, gp_face1);
        InputDefineVerb(INPUT_VERB.ACTION, "action", undefined, gp_face3);
        InputDefineVerb(INPUT_VERB.PIPBOY, "pipboy", undefined, gp_face4);
    }
    
    //Define a cluster of verbs for moving around
    InputDefineCluster(INPUT_CLUSTER.NAVIGATION_BASIC, INPUT_VERB.MOVE_N, INPUT_VERB.MOVE_E, INPUT_VERB.MOVE_S, INPUT_VERB.MOVE_W);
    InputDefineCluster(INPUT_CLUSTER.NAVIGATION_DIAGONAL, INPUT_VERB.MOVE_NE, INPUT_VERB.MOVE_SE, INPUT_VERB.MOVE_SW, INPUT_VERB.MOVE_NW);
}