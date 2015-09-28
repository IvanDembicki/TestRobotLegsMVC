package iv.robotlegs.view.mediators {

import flash.events.IEventDispatcher;

import iv.robotlegs.events.ApplicationEvent;
import iv.robotlegs.view.events.ComponentEvent;
import iv.robotlegs.view.pages.APage;

import robotlegs.bender.bundles.mvcs.Mediator;

public class APageMediator extends Mediator {

	[Inject]
	public var dispatcher:IEventDispatcher;

	protected function get viewInstance ():APage{
		trace("**Error** APageMediator::viewInstance:(" + arguments + ") — override it!");
		return null;
	}

	override public function initialize():void {
		eventMap.mapListener(viewInstance, ComponentEvent.USER_ACTION, onUserAction);
	}

	protected function onUserAction(event:ComponentEvent):void {
		//  это преднамеренная шняга, чтобы показать, якобы зачем нужен медиатор.
		var eventName:String = "";
		switch (event.action) {
			case APage.WENT_TO_MAIN:
				eventName = ApplicationEvent.OPEN_MAIN_PAGE;
				break;
			case APage.SAVE_DATA:
				eventName = ApplicationEvent.SAVE_DATA;
				break;
			case APage.GO_TO_INTRO:
				eventName = ApplicationEvent.OPEN_INTRO_PAGE;
				break;
			default:
				eventName = ApplicationEvent.OPEN_INTRO_PAGE;
		}
		dispatcher.dispatchEvent(new ApplicationEvent(eventName));
	}

}
}
