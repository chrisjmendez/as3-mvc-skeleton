package model
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	
	public class Model extends EventDispatcher implements IModel
	{
		private var lastKeyPressed:uint = 0;
		
		/*
		public function Model(target:IEventDispatcher=null)
		{
			super(target);
		}
		*/
		
		public function setKey(key:uint):void
		{
			lastKeyPressed = key;
			dispatchEvent( new Event( Event.CHANGE ) );
		}
		
		public function getKey():uint
		{
			return lastKeyPressed;
		}
	}
}