package states.stages;

import states.stages.objects.*;
import objects.Character;
class City2 extends BaseStage
{
	var mfs2:Mfs2;

	override function create()
	{
		var bg:BGSprite = new BGSprite('sky', -400, -200, 0.2, 0.2);
        bg.setGraphicSize(Std.int(bg.width * 0.7));
        bg.updateHitbox();
		add(bg);

		var front:BGSprite = new BGSprite('buildings', -400, 0, 0.35, 0.35);
		front.setGraphicSize(Std.int(front.width * 0.7));
		front.updateHitbox();
		add(front);

        var fronter:BGSprite = new BGSprite('ground', -500, 600, 1, 1);
		fronter.setGraphicSize(Std.int(fronter.width * 0.8));
		fronter.updateHitbox();
		add(fronter);
	}

	override function createPost()
		{
			var tint:BGSprite = new BGSprite('tint', 0, 0, 0.1, 0.1);
			tint.setGraphicSize(Std.int(tint.width * 2));
			add(tint);
		}
	

}