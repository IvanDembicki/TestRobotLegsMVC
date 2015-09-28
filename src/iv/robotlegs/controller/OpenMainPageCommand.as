package iv.robotlegs.controller {

import iv.robotlegs.view.pages.MainPage;

public class OpenMainPageCommand extends AOpenPageCommand {

	override public function execute():void {
		setPage(MainPage);
		mainPage.savedValue = int(Math.random() * 1e+5);
	}

	public function get mainPage():MainPage {
		return applicationView.openedPage as MainPage;
	}
}
}
