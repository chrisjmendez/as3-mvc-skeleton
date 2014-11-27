package view
{
	import controller.IKeyboardInputHandler;
	
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	
	import model.IModel;

	public class View
	{
		private var model:IModel;
		//Link the interface to the Interface not the controller
		private var controller:IKeyboardInputHandler;
		
		public function View( iModel:IModel, iController:IKeyboardInputHandler, target:Stage )
		{
			model = iModel;
			(model as IModel).addEventListener( Event.CHANGE, update );

			controller = iController;
			
			target.addEventListener(  KeyboardEvent.KEY_DOWN, onKeyPress );
		}
		
		private function update( e:Event ):void
		{
			trace( "update:", (model as IModel).getKey() );
		}
		
		private function onKeyPress( e:KeyboardEvent ):void
		{
			//trace( "onKeyPress:", e.charCode );
			(controller as IKeyboardInputHandler ).keyPressHandler( e );
		}
	}
}