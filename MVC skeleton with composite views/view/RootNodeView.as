package view
{
	import controller.IKeyboardInputHandler;
	
	import flash.display.Stage;
	import flash.events.KeyboardEvent;

	public class RootNodeView extends CompositeView
	{
		public function RootNodeView(m:Object, c:Object=null, target:Stage=null )
		{
			super(m, c);
			
			target.addEventListener( KeyboardEvent.KEY_DOWN, onKeyPress );
		}
		
		private function onKeyPress( e:KeyboardEvent ):void
		{
			(controller as IKeyboardInputHandler).keyPressHandler( e );
		}
	}
}