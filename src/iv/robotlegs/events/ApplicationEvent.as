package iv.robotlegs.events {

import flash.events.Event;

public class ApplicationEvent extends Event {

	public static const OPEN_INTRO_PAGE:String = "OPEN_INTRO_PAGE";
	public static const OPEN_MAIN_PAGE:String = "OPEN_MAIN_PAGE";
	public static const SAVE_DATA:String = "SAVE_DATA";

	public function ApplicationEvent(type:String) {
		super (type);
	}

	override public function clone ():Event {
		const event:ApplicationEvent = new ApplicationEvent(type);
		//
		return event;
	}
}
}
