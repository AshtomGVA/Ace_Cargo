package ;
import org.flixel.FlxSprite;
import org.flixel.FlxObject;
import org.flixel.FlxG;

/**
 * ...
 * @author Alexandre Thomas
 */

class Ship extends FlxSprite
{
	//For autoshoot to delay the firing of lasers
	private var fireDelay:Int = 80;
    //Store the time of the last fired bullet so that we know when to shoot
    private var lastFired:Int;
    //the x axis movement speed
    private var xSpeed:Float = 200;
    //the y axis movement speed
    private var ySpeed:Float = 150;
    //the current fire type for the player
    public var fireType:Int = 1;
	

	public function new() 
	{
		super(FlxG.width / 2, FlxG.height / 2, "img/ship.png");
		facing = FlxObject.LEFT;
	}
	
	override public function update():Void
	{
		super.update();
		
		//Make sure the ships movement is under control
        velocity.x = 0;
        velocity.y = 0;
		
		if (FlxG.keys.LEFT && x > 0)
		{
			velocity.x -= xSpeed;
			this.facing = FlxObject.LEFT;
		}		
		if (FlxG.keys.RIGHT && x < FlxG.width - width)
		{
			velocity.x += xSpeed;
			this.facing = FlxObject.RIGHT;
		}
		if (FlxG.keys.UP && y >= 20)
		{
			velocity.y -= ySpeed;
			if (y < 20)
			{
				//20 pixels for the top banner score and lives - to be confirmed
				y = 20; 
			}
		}
		if (FlxG.keys.DOWN && y < FlxG.height - height)
		{
			velocity.y += ySpeed;
		}
		if (y < FlxG.height - height)
		{
			velocity.y += 32;
		}
		
		if (this.facing == FlxObject.LEFT && flipped == 0)
		{
			this.flipped = 1;
		}
		
	}
	
}