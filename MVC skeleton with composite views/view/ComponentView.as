/**
 * 
 * ComponentView keeps references to the model and view
 * ComponentView can be constructed with only a model, not all views need a controller
 * 
 * Leaf Views should be able to override the update()
 * 
 * */
package view
{
	import flash.display.Sprite;
	import flash.errors.IllegalOperationError;
	import flash.events.Event;
	
	public class ComponentView extends Sprite
	{
		protected var model:Object;
		protected var controller:Object;
		
		public function ComponentView( m:Object, c:Object = null )
		{
			model = m;
			controller = c;
		}
		
		public function add( c:ComponentView ):void
		{
			throw new IllegalOperationError("add operation not supported");
		}
		
		public function remove( c:ComponentView ):void
		{
			throw new IllegalOperationError("remove operation not supported");
		}
		
		public function getChild( n:int ):ComponentView
		{
			throw new IllegalOperationError( "getChild operation not supported");
			return null;
		}
		
		//Override this in the subclass
		public function update( e:Event = null ):void
		{
			
		}
	}
}