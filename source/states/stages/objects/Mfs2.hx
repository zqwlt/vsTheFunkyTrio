package states.stages.objects;

class Mfs2 extends BGSprite
{
	public function new(x:Float = 0, y:Float = 0, sprite:String = 'mfs2', idle:String = 'mfs new')
	{
		super(sprite, x, y, 0.9, 0.9, [idle]);
		antialiasing = ClientPrefs.data.antialiasing;
	}

	override function update(elapsed:Float)
		{
			super.update(elapsed);
					dance(true);
		}
	
		override function dance(?forceplay:Bool = false)
		{
			super.dance(forceplay);
		}
	}