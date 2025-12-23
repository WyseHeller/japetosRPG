// general variable declarations
var _DisplayWidth = display_get_gui_width(),	_DisplayHeight = display_get_gui_height();
var _TerminalColorTag = global.ColorMap.get_scribble_tag(global.GMSTTerminalColor);
var _Margine = new Vector2(0, 0),	_Padding = 8;

#region [ battle background ]
draw_sprite_stretched(GfxInterfaceBorder, 0, 0, 0, _DisplayWidth, _DisplayHeight);
#endregion

#region [ enemy battler ]
#region [ battler info ]
_Margine.Set(TERMINAL_CHAR_WIDTH * 3, TERMINAL_CHAR_HEIGHT);
	
scribble(Battler.hitpoints).draw(_Margine.x, _Margine.y);
#endregion

#region [ battler sprite ]
_Margine.Set( _DisplayWidth/2, TERMINAL_CHAR_HEIGHT * 3); // update menu element maringe
var _BattlerSprite = Battler.SpriteBattler;

draw_sprite(_BattlerSprite, 0, _Margine.x - sprite_get_width(_BattlerSprite)/2, _Margine.y);
draw_sprite_ext(_BattlerSprite, 0, _Margine.x - sprite_get_width(_BattlerSprite)/2, _Margine.y, 1.0, 1.0, 0.0, c_red, 0.50 + abs(sin(current_time/500)));
#endregion
#endregion

#region [ player ]
#region [ player info ]
_Margine.Set(TERMINAL_CHAR_WIDTH * 3, TERMINAL_CHAR_HEIGHT * 64);

scribble("10").draw(_Margine.x, _Margine.y);
#endregion

#region [ player sprite ]
_Margine.Set(_DisplayWidth/2, _DisplayHeight);
var _FpsSprite = GfxFpsBattleAxe;
draw_sprite(_FpsSprite, 0, _Margine.x - sprite_get_width(_FpsSprite)/2, _Margine.y - sprite_get_height(_FpsSprite) + (TERMINAL_CHAR_HEIGHT/2 * sin(current_time/450)));
#endregion
#endregion