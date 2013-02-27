package
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;

	public class MyEntity extends Entity
	{
		[Embed(source = 'assets/player.png')] private const PLAYER:Class;
		public function MyEntity()
		{
			graphic = new Image(PLAYER);
		}

		override public function update():void
		{
			super.update();
			
			if (Input.check("Left")) 	{ x -= 5; }
			if (Input.check("Right"))	{ x += 5; }
			if (Input.check("Up")) 		{ y -= 5; }
			if (Input.check("Down")) 	{ y += 5; }
		}
		
		override public function added():void
		{
			// Called when added to the world
		}
	}
}