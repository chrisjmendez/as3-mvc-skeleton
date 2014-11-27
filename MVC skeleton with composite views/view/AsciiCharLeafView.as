package view
{
	import flash.events.Event;

	public class AsciiCharLeafView extends ComponentView
	{
		public function AsciiCharLeafView(m:Object, c:Object=null)
		{
			super(m, c);
		}
		
		override public function update(e:Event=null) : void
		{
			trace( "AsciiCharLeafView:", String.fromCharCode( model.getKey() ) );
		}
	}
}