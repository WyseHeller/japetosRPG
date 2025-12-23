// Variables
var _MenuCursor = MenuCursor;
var _MenuPage = MenuPage;

var _TerminalWidth = display_get_gui_width();
var _terminalHeight = display_get_gui_height();
var _TerminalColor = global.GMSTTerminalColor;
	var _ColorTagTerminal = global.ColorMap.get_scribble_tag(_TerminalColor);
	var _ColorTagTerminalInverse = global.ColorMap.get_scribble_tag(_TerminalColor, "Inverse");
	var _ColorTagTerminalContrast = global.ColorMap.get_scribble_tag(_TerminalColor, "Contrast");
	
switch(_MenuPage)
{
    case 0: // Page : Choose Player Class
		var _ArraySprite = [ GfxClassWarrior, GfxClassRanger, GfxClassWizard ]
		var _OptionsTextColor = [ "red", "green", "blue" ]
		var _OptionsCount = array_length(MenuData[_MenuPage]);
		var _GUISize = [ display_get_gui_width(), display_get_gui_height() ]
		var _UIMargin = [ (_GUISize[0] div _OptionsCount), (_GUISize[1] - (TERMINAL_CHAR_HEIGHT * 3)) ]
		
		for(var i = 0; i < _OptionsCount; ++i)
		{
			var _CurrentOptionSprite = _ArraySprite[i];
			var _CurrentOptionStringName = MenuData[_MenuPage][i];
			
			var _SpriteAlpha = (_MenuCursor == i) ? 1.0 : 0.50;
			var _ColumnMidpoint = ((_UIMargin[0] div 2) + (i * _UIMargin[0]));
			
			var _CurrentOptionColor = _OptionsTextColor[i];
			var _TextColor = global.ColorMap.get_scribble_tag( (_MenuCursor == i) ? _CurrentOptionColor : _CurrentOptionColor);
			
			var _TextOrigin = [ (_ColumnMidpoint - (scribble(_CurrentOptionStringName).get_width() div 2)), (_UIMargin[1]) ]
			var _SpriteSize = [ (_ColumnMidpoint - (sprite_get_width(_CurrentOptionSprite) div 2)), 0 ]
			
			draw_sprite_ext(_CurrentOptionSprite, 0, _SpriteSize[0], _SpriteSize[1], 1.0, 1.0, 0.0, c_white, _SpriteAlpha - 0.25);
			draw_sprite_ext(_CurrentOptionSprite, 1, _SpriteSize[0], _SpriteSize[1], 1.0, 1.0, 0.0, c_white, _SpriteAlpha);
			scribble(_TextColor + _CurrentOptionStringName + "[/c]").draw(_TextOrigin[0], _TextOrigin[1]);
	    }
    break;
    case 1: // Page : Choose Player Race
    	var _ArraySprite = __GfxClassGeneric;
		var _OptionsTextColor = [ "red", "blue", "white", "cyan", "magenta" ]
		var _OptionsCount = array_length(MenuData[_MenuPage]);
		var _GUISize = [ display_get_gui_width(), display_get_gui_height() ]
		var _UIMargin = [ (_GUISize[0] div _OptionsCount), (_GUISize[1] - (TERMINAL_CHAR_HEIGHT * 3)) ]
		
		for(var i = 0; i < _OptionsCount; ++i)
		{
			var _CurrentOptionSprite = _ArraySprite;
			var _CurrentOptionStringName = MenuData[_MenuPage][i];
			
			var _SpriteAlpha = (_MenuCursor == i) ? 1.0 : 0.50;
			var _ColumnMidpoint = ((_UIMargin[0] div 2) + (i * _UIMargin[0]));
			
			var _CurrentOptionColor = _OptionsTextColor[i];
			var _TextColor = global.ColorMap.get_scribble_tag( (_MenuCursor == i) ? _CurrentOptionColor : _CurrentOptionColor);
			
			var _TextOrigin = [ (_ColumnMidpoint - (scribble(_CurrentOptionStringName).get_width() div 2)), (_UIMargin[1]) ]
			var _SpriteSize = [ (_ColumnMidpoint - (sprite_get_width(_CurrentOptionSprite) div 2)), 0 ]
			
			draw_sprite_ext(_CurrentOptionSprite, 0, _SpriteSize[0], _SpriteSize[1], 1.0, 1.0, 0.0, global.ColorMap.get_hexcode(_CurrentOptionColor), _SpriteAlpha - 0.25);
			//draw_sprite_ext(_CurrentOptionSprite, 1, _SpriteSize[0], _SpriteSize[1], 1.0, 1.0, 0.0, c_white, _SpriteAlpha);
			
			scribble(_TextColor + _CurrentOptionStringName + "[/c]").draw(_TextOrigin[0], _TextOrigin[1]);
		}
    break;
    case 2:
		var _StringStartupBlurb = MenuData[_MenuPage][0];
        scribble("[fa_center]This game is in EARLY ALPHA. Bugs and unfinished content are to be expected.").draw(display_get_gui_width() div 2, TERMINAL_CHAR_HEIGHT);
    break;
    default: break;
}