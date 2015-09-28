package iv.robotlegs.view.pages {

import iv.robotlegs.view.components.ApplicationButton;

public class IntroPage extends APage {

	private var goToMain:ApplicationButton;

	public function IntroPage() {
		initInstance();
	}

	private function initInstance():void {
		goToMain = new ApplicationButton();
		addChild(goToMain);
		goToMain.text = "Go To Main";
		goToMain.action = GO_TO_MAIN;
	}

}
}
