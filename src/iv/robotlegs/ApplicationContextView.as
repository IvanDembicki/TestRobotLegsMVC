package iv.robotlegs {

import flash.display.Sprite;

import iv.robotlegs.view.pages.APage;

public class ApplicationContextView extends Sprite {

	private var context:ApplicationContext;
	private var _openedPage:APage;

	public function ApplicationContextView() {
		initInstance();
	}

	private function initInstance():void {
		context = new ApplicationContext(this);
	}

	public function get openedPage():APage {
		return _openedPage;
	}

	public function set openedPage(value:APage):void {
		if (_openedPage) {
			removeChild(_openedPage);
		}
		_openedPage = value;
		addChild(_openedPage);
	}
}
}
