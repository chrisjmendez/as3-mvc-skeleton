package
{
	import controller.Controller;
	import controller.IKeyboardInputHandler;
	
	import flash.display.Sprite;
	
	import model.IModel;
	import model.Model;
	
	import view.View;
	
	public class main extends Sprite
	{
		public function main()
		{
			var model:IModel = new Model();
			var controller:IKeyboardInputHandler = new Controller( model );
			var view:View = new View( model, controller, stage );
			
		}
	}
}