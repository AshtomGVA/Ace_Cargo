package levels;

import org.flixel.FlxTileblock;
import org.flixel.FlxG;

/**
 * ...
 * @author Alexandre Thomas
 */

class GroundBlock extends FlxTileblock
{	

	public function new() 
	{
		super(0, FlxG.height - 40, 16, 16);
	}
	
}