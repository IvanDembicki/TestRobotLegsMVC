package iv.robotlegs.view.events {

import flash.events.Event;

public class ComponentEvent extends Event {

	//  это преднамеренная шняга, чтобы показать, якобы зачем нужен медиатор.
	public static const USER_ACTION:String = "USER_ACTION";

	public var action:String;
	public var data:String;

	public function ComponentEvent(type:String) {
		super (type);
	}

	override public function clone ():Event {
		const event:ComponentEvent = new ComponentEvent(type);
		event.action = action;
		event.data = data;
		return event;
	}

}
}
