package controller
{
	import flash.events.KeyboardEvent;
	
	import model.IModel;

	public class Controller implements IKeyboardInputHandler
	{
		private var model:IModel;
		
		public function Controller( iModel:IModel )
		{
			model = iModel;
		}
		
		public function keyPressHandler( e:KeyboardEvent ):void
		{
			(model as IModel).setKey( e.charCode );
		}
	}
}