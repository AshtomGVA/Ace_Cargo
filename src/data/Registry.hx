package data;

import sprites.Ship;
import levels.GroundBlock;

/**
 * ...
 * @author Alexandre Thomas
 */

class Registry 
{
	public static var ship:Ship;
	
	public static function init()
	{
		ship = new Ship();
	}
	
}