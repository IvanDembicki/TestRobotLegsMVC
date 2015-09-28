package iv.robotlegs.view.mediators {

import iv.robotlegs.view.pages.APage;
import iv.robotlegs.view.pages.IntroPage;

public class IntroPageMediator extends APageMediator {

	[Inject]
	public var view:IntroPage;

	override protected function get viewInstance():APage {
		return view;
	}


}
}
