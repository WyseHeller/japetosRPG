function __InputConfigVerbs()
{
    enum INPUT_VERB
    {
        //Add your own verbs here!
        MOVE_N,
        MOVE_S,
        MOVE_W,
        MOVE_E,
        MOVE_SE,
        MOVE_SW,
        MOVE_NW,
        MOVE_NE,
        ACTION,
		PIPBOY,
		LADDER,
    }
    
    enum INPUT_CLUSTER
    {
        //Add your own clusters here!
        //Clusters are used for two-dimensional checkers (InputDirection() etc.)
        NAVIGATION,
    }
    
    if (not INPUT_ON_SWITCH)
    {
        InputDefineVerb(INPUT_VERB.MOVE_N,		"move_n",		["K","W"]);
        InputDefineVerb(INPUT_VERB.MOVE_S,		"move_s",		["J","S"]);
        InputDefineVerb(INPUT_VERB.MOVE_W,		"move_w",		["H","A"]);
        InputDefineVerb(INPUT_VERB.MOVE_E,		"move_e",		["L","D"]);
        InputDefineVerb(INPUT_VERB.MOVE_SE,		"move_se",		"N");
        InputDefineVerb(INPUT_VERB.MOVE_SW,		"move_sw",		"B");
        InputDefineVerb(INPUT_VERB.MOVE_NE,		"move_ne",		"U");
        InputDefineVerb(INPUT_VERB.MOVE_NW,		"move_nw",		"Y");
        InputDefineVerb(INPUT_VERB.ACTION,		"action",		"E");
        InputDefineVerb(INPUT_VERB.PIPBOY,		"special",		vk_tab,);
        InputDefineVerb(INPUT_VERB.LADDER,		"ladder",		vk_escape);
    }
    else //Flip A/B over on Switch
    {
        InputDefineVerb(INPUT_VERB.MOVE_N,		"move_n",		["K","W"]);
        InputDefineVerb(INPUT_VERB.MOVE_S,		"move_s",		["J","S"]);
        InputDefineVerb(INPUT_VERB.MOVE_W,		"move_w",		["H","A"]);
        InputDefineVerb(INPUT_VERB.MOVE_E,		"move_e",		["L","D"]);
        InputDefineVerb(INPUT_VERB.MOVE_SE,		"move_se",		"N");
        InputDefineVerb(INPUT_VERB.MOVE_SW,		"move_sw",		"B");
        InputDefineVerb(INPUT_VERB.MOVE_NE,		"move_ne",		"U");
        InputDefineVerb(INPUT_VERB.MOVE_NW,		"move_nw",		"Y");
        InputDefineVerb(INPUT_VERB.ACTION,		"action",		"E");
        InputDefineVerb(INPUT_VERB.PIPBOY,		"special",		vk_tab,);
        InputDefineVerb(INPUT_VERB.LADDER,		"ladder",		vk_escape);
    }
    
    //Define a cluster of verbs for moving around
    InputDefineCluster(INPUT_CLUSTER.NAVIGATION, INPUT_VERB.MOVE_N, INPUT_VERB.MOVE_E, INPUT_VERB.MOVE_S, INPUT_VERB.MOVE_W);
}
