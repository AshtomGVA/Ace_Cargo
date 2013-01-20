package states;
import org.flixel.FlxG;
import org.flixel.FlxState;
import org.flixel.FlxTilemap;
import data.Registry;

/**
 * ...
 * @author Alexandre Thomas
 */

class LevelState extends FlxState
{
	// Some static constants for the size of the tilemap tiles
	private var TILE_WIDTH:Int;
	private var TILE_HEIGHT:Int;
	
	public function new()
	{
		TILE_WIDTH = 16;
		TILE_HEIGHT = 16;
		
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
		/*
		for (i Int = 0; i < 15; i++)
		{
			
		}
		*/
	}
	
}