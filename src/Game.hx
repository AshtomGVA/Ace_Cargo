package;

import org.flixel.FlxGame;
import states.LevelState;

class Game extends FlxGame
{
	public function new()
	{
		super(320, 240, LevelState, 2, 60, 60);
	}
}