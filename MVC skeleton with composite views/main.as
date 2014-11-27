package
{
	import controller.Controller;
	import controller.IKeyboardInputHandler;
	
	import flash.display.Sprite;
	import flash.events.Event;
	
	import model.IModel;
	import model.Model;
	
	import view.AsciiCharLeafView;
	import view.CharCodeLeafView;
	import view.CompositeView;
	import view.RootNodeView;
	
	public class main extends Sprite
	{
		public function main()
		{
			var model:IModel = new Model();
			var controller:IKeyboardInputHandler = new Controller( model );
			//var view:View = new View( model, controller, stage );
			
			var rootView:CompositeView = new RootNodeView( model, controller, stage );
				rootView.add( new CharCodeLeafView( model ) );
				rootView.add( new AsciiCharLeafView( model ) );
				(model as IModel).addEventListener( Event.CHANGE, rootView.update );
		}
	}
}