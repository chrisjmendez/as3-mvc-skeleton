/**
 * 
 * Calling the update function in the root node of the
 * composite view will cascade down and traverse in component
 * tree updating all views 
 * 
 * In short, update can cascade down the composite view tree structure
 * 
 * */
package view
{
	import flash.events.Event;

	public class CompositeView extends ComponentView
	{
		private var children:Array;
		
		public function CompositeView(m:Object, c:Object=null)
		{
			super(m, c);
			children = new Array();
		}
		
		override public function add( c:ComponentView ):void
		{
			children.push( c );
		}
		
		override public function update( e:Event = null ):void
		{
			//Calls an update method in all its children
			for each ( var c:ComponentView in children )
			{
				c.update( e );
			}
		}
	}
}