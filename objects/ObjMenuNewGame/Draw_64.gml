// Variables
var _page = menu_page;
var _cursor = menu_cursor;
var _TerminalColor = global.GMSTTerminalColor;
	var _TerminalColorValue = global.ColorMap.format_scribble_tag(global.ColorMap.get_color_value(_TerminalColor));
	var _TerminalColorValueInverse = global.ColorMap.format_scribble_tag(global.ColorMap.get_color_inverse(_TerminalColor));
	var _TerminalColorValueContrast = global.ColorMap.format_scribble_tag(global.ColorMap.get_color_contrast(_TerminalColor));

switch(_page)
{
    case 0: // Page : Choose Player Class
		var _ArraySprite = [ GfxClassWarrior, GfxClassRanger, GfxClassWizard ]
		var _OptionsTextColor = [ "red", "green", "blue" ]
		var _OptionsCount = array_length(MenuData[_page]);
		var _GUISize = [ display_get_gui_width(), display_get_gui_height() ]
		var _UIMargin = [ (_GUISize[0] div _OptionsCount), (_GUISize[1] - (TERMINAL_CHAR_HEIGHT * 3)) ]
		
		for(var i = 0; i < _OptionsCount; ++i)
		{
			var _CurrentOptionSprite = _ArraySprite[i];
			var _CurrentOptionStringName = MenuData[_page][i];
			
			var _SpriteAlpha = (_cursor == i) ? 1.0 : 0.50;
			var _ColumnMidpoint = ((_UIMargin[0] div 2) + (i * _UIMargin[0]));
			
			var _CurrentOptionColor = _OptionsTextColor[i];
			var _TextColor = global.ColorMap.format_scribble_tag( (_cursor == i) ? global.ColorMap.get_color_value(_CurrentOptionColor) : global.ColorMap.get_color_inverse(_CurrentOptionColor));
			
			var _TextOrigin = [ (_ColumnMidpoint - (scribble(_CurrentOptionStringName).get_width() div 2)), (_UIMargin[1]) ]
			var _SpriteSize = [ (_ColumnMidpoint - (sprite_get_width(_CurrentOptionSprite) div 2)), 0 ]
			
			draw_sprite_ext(_CurrentOptionSprite, 0, _SpriteSize[0], _SpriteSize[1], 1.0, 1.0, 0.0, c_white, _SpriteAlpha - 0.25);
			draw_sprite_ext(_CurrentOptionSprite, 1, _SpriteSize[0], _SpriteSize[1], 1.0, 1.0, 0.0, c_white, _SpriteAlpha);
			scribble(_TextColor + _CurrentOptionStringName + "[/c]").draw(_TextOrigin[0], _TextOrigin[1]);
	    }
    break;
    case 1: // Page : Choose Player Race
    	var _ArraySprite = __GfxGenericCharacterArt;
		var _OptionsTextColor = [ "red", "blue", "white", "cyan", "magenta" ]
		var _OptionsCount = array_length(MenuData[_page]);
		var _GUISize = [ display_get_gui_width(), display_get_gui_height() ]
		var _UIMargin = [ (_GUISize[0] div _OptionsCount), (_GUISize[1] - (TERMINAL_CHAR_HEIGHT * 3)) ]
		
		for(var i = 0; i < _OptionsCount; ++i)
		{
			var _CurrentOptionSprite = _ArraySprite;
			var _CurrentOptionStringName = MenuData[_page][i];
			
			var _SpriteAlpha = (_cursor == i) ? 1.0 : 0.50;
			var _ColumnMidpoint = ((_UIMargin[0] div 2) + (i * _UIMargin[0]));
			
			var _CurrentOptionColor = _OptionsTextColor[i];
			var _TextColor = global.ColorMap.format_scribble_tag( (_cursor == i) ? global.ColorMap.get_color_value(_CurrentOptionColor) : global.ColorMap.get_color_inverse(_CurrentOptionColor));
			
			var _TextOrigin = [ (_ColumnMidpoint - (scribble(_CurrentOptionStringName).get_width() div 2)), (_UIMargin[1]) ]
			var _SpriteSize = [ (_ColumnMidpoint - (sprite_get_width(_CurrentOptionSprite) div 2)), 0 ]
			
			draw_sprite_ext(_CurrentOptionSprite, 0, _SpriteSize[0], _SpriteSize[1], 1.0, 1.0, 0.0, global.ColorMap.get_color_value(_CurrentOptionColor), _SpriteAlpha - 0.25);
			//draw_sprite_ext(_CurrentOptionSprite, 1, _SpriteSize[0], _SpriteSize[1], 1.0, 1.0, 0.0, c_white, _SpriteAlpha);
			
			scribble(_TextColor + _CurrentOptionStringName + "[/c]").draw(_TextOrigin[0], _TextOrigin[1]);
		}
    break;
    case 2:
		var _StringStartupBlurb = MenuData[_page][0];
        scribble("[fa_center]This game is in EARLY ALPHA. Bugs and unfinished content are to be expected.").draw(display_get_gui_width() div 2, TERMINAL_CHAR_HEIGHT);
    break;
    default: break;
}