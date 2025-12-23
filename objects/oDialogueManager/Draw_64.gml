var _TerminalWidth = display_get_gui_width(), _TerminalHeight = display_get_gui_height();

#region [ Dialogue Box ]
draw_sprite_stretched(GfxInterfaceBorder, 0, 0, _TerminalHeight - 64, _TerminalWidth, _TerminalHeight);
#endregion

#region [ Talker Sprite ]
var _TalkerSprite = EntityData.SpriteTalker;
draw_sprite(_TalkerSprite, 0, _TerminalWidth/2, _TerminalHeight/2 - sprite_get_height(_TalkerSprite));
#endregion