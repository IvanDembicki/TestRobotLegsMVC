package iv.robotlegs.controller {

import iv.robotlegs.view.pages.IntroPage;

public class OpenIntroPageCommand extends AOpenPageCommand {

	override public function execute():void {
		setPage(IntroPage);
	}

}
}
