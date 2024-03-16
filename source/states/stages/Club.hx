package states.stages;

import states.stages.objects.*;
import objects.Character;

class Club extends BaseStage
{

	override function create()
	{
		var bg:BGSprite = new BGSprite('wall', -400, 0, 0.6, 0.6);
        bg.setGraphicSize(Std.int(bg.width * 0.7));
        bg.updateHitbox();
		add(bg);

		var front:BGSprite = new BGSprite('floor', -720, 520, 1, 1);
		front.setGraphicSize(Std.int(front.width * 0.7));
		front.updateHitbox();
		add(front);
	}

		override function createPost()
	{
		var fronter:BGSprite = new BGSprite('lights', -320, -500, 1, 1);
		fronter.setGraphicSize(Std.int(fronter.width * 0.7));
		add(fronter);
	}

}