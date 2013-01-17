package ;
import org.flixel.FlxG;
import org.flixel.FlxState;

/**
 * ...
 * @author Alexandre Thomas
 */

class FirstLevel extends FlxState
{

	public function new() 
	{
		super();
	}
	
	override public function create():Void 
	{
		#if !neko
		FlxG.bgColor = 0x000000ff;
		#else
		FlxG.camera.bgColor = {rgb:0x000000, a:0xff};
		#end
		
		//initialize game registry
		Registry.init();
		
		//adding objects to the stage
		add(Registry.ship);
	}
	
}