package states.stages;

import states.stages.objects.*;

class Template extends BaseStage
{
	// If you're moving your stage from PlayState to a stage file,
	// you might have to rename some variables if they're missing, for example: camZooming -> game.camZooming

	override function create()
	{
		var bg:BGSprite = new BGSprite('cityBG', -300, -120, 0.2, 0.2);
		add(bg);

		var front:BGSprite = new BGSprite('city2', -500, -50, 0.9, 0.9);
		front.setGraphicSize(Std.int(front.width * 1.1));
		front.updateHitbox();
		add(front);

	}
}