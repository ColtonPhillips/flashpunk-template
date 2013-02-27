package
{
	import net.flashpunk.Engine;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import net.flashpunk.FP;

	public class Main extends Engine
	{
		public function Main()
		{
			super(800, 600, 60, false);

			FP.world = new MyWorld;
			
			Input.define("Left", 	Key.LEFT, 	Key.A);
			Input.define("Right", 	Key.RIGHT, 	Key.D);
			Input.define("Up", 		Key.UP, 	Key.W);
			Input.define("Down", 	Key.DOWN, 	Key.S);
		}

		override public function init():void
		{
			FP.console.enable();
			FP.console.log("Flashpunk initialized");
		}
	}
}