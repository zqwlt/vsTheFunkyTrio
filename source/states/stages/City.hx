package states.stages;

import states.stages.objects.*;

class City extends BaseStage
{
	var mfs:BGSprite;

	override function create()
	{
		var bg:BGSprite = new BGSprite('cityBG', -250, -350, 0.2, 0.2);
		bg.setGraphicSize(Std.int(bg.width * 1.5));
		bg.updateHitbox();
		add(bg);

		var front:BGSprite = new BGSprite('city2', -250, -50, 0.4, 0.4);
		front.setGraphicSize(Std.int(front.width * 1));
		front.updateHitbox();
		add(front);
		
		var fronter:BGSprite = new BGSprite('sidewalk', -500, 440, 0.9, 0.9);
		fronter.setGraphicSize(Std.int(fronter.width * 0.9));
		fronter.updateHitbox();
		add(fronter);

		mfs = new BGSprite('mfs', 100, 160, 0.8, 0.8, ['mfDance']);
			mfs.setGraphicSize(Std.int(mfs.width * 1.1));
			mfs.updateHitbox();
			add(mfs);
	}

	function mfsdance()
		{
			mfs.dance(true);
		}

	//override function countdownTick(count:Countdown, num:Int) everyoneDance();
	override function beatHit() 
	{
		mfsdance();
	}
}