package iv.robotlegs.view.pages {

import iv.robotlegs.view.components.ApplicationButton;

public class MainPage extends APage {
	private static const VERTICAL_SPACE:Number = 10;

	private var goToIntro:ApplicationButton;
	private var saveData:ApplicationButton;
	private var _savedValue:Number;

	public function MainPage() {
		initInstance();
	}

	private function initInstance():void {
		goToIntro = new ApplicationButton();
		addChild(goToIntro);
		goToIntro.text = "Go To Intro";
		goToIntro.action = GO_TO_INTRO;

		saveData = new ApplicationButton();
		addChild(saveData);
		saveData.text = "Save";
		saveData.y = goToIntro.height + VERTICAL_SPACE;
		saveData.action = SAVE_DATA;
	}

	public function get savedValue():Number {
		return _savedValue;
	}

	public function set savedValue(value:Number):void {
		_savedValue = value;
	}
}
}
