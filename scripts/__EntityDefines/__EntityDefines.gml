//          _         __  _                                                
//       __| |  ___  / _|(_) _ __    ___  ___  _   _ __   _ __    ___  ___ 
//      / _` | / _ \| |_ | || '_ \  / _ \/ __|(_) | '_ \ | '_ \  / __|/ __|
//     | (_| ||  __/|  _|| || | | ||  __/\__ \ _  | | | || |_) || (__ \__ \
//      \__,_| \___||_|  |_||_| |_| \___||___/(_) |_| |_|| .__/  \___||___/
//                                                       |_|               

function EntityDefine(__config = {}) constructor
{
	ID = null;
	name = "jerma";
	hitpoints = 10;
	
	AnimFrameCurrent = 0;
	AnimFrameMax = __config[$ "MaxFrames"] ?? 4;
	
	SpriteColor = __config[$ "SpriteColor"] ?? null;
	SpriteSize = __config[$ "SpriteSize"] ?? new Vector2(24, 32);
	SpriteOverworld = __config[$ "SpriteOverworld"] ?? __GfxOverworldJerma;
	SpriteTalker = __config[$ "SpriteTalker"] ?? __GfxTalkerJerma;
	SpriteBattler = __config[$ "SpriteBattler"] ?? __GfxBattlerJerma;
}