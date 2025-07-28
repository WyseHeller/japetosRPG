// Variables
var _InterfaceBorder = [ TERMINAL_CHAR_WIDTH, TERMINAL_CHAR_HEIGHT, display_get_gui_width() - TERMINAL_CHAR_WIDTH, display_get_gui_height() - TERMINAL_CHAR_HEIGHT ];

draw_rectangle_color(_InterfaceBorder[0], _InterfaceBorder[1], _InterfaceBorder[2], _InterfaceBorder[3], c_black, c_black, c_black, c_black, false);

switch(_page)
{
	case 0: break;
	case 1: // Page : Inventory
		var _PlayerInventorySize = ObjSysControl.PlayerInventory.size();
	if(_PlayerInventorySize == 0)
	{
		scribble("No items in inventory").draw(0, 0);
	}
	else
	{
		
	}
	break;
	case 2: break;
	default: break;
}