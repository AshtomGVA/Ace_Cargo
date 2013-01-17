package;

import browser.display.StageScaleMode;
import nme.display.Sprite;
import nme.Lib;

/**
 * ...
 * @author Alexandre Thomas
 */

class Main extends Sprite
{
	
	public static function main() 
	{
		new Main();
	}
	
	public function new() 
	{
		super();
		Lib.current.addChild(new Game());
	}
}