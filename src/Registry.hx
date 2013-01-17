package ;

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