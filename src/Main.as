package
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.external.ExternalInterface;
	
	/**
	 * ...
	 * @author Ash47
	 */
	public class Main extends Sprite 
	{
		
		public function Main() 
		{
			//var var1 : String = HashingMaster.niceHash("test");
			
			//ExternalInterface.call("console.log", var1);
			
			ExternalInterface.addCallback("performHash", HashingMaster.niceHash);
		}
		
	}
	
}