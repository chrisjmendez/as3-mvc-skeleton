package view
{
	import flash.events.Event;

	public class CharCodeLeafView extends ComponentView
	{
		public function CharCodeLeafView(m:Object, c:Object=null)
		{
			super(m, c);
		}
		
		override public function update( e:Event = null ):void
		{
			trace( "CharCodeLeafView:", model.getKey() );
		}
	}
}