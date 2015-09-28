package iv.robotlegs.view.mediators {

import iv.robotlegs.view.pages.APage;
import iv.robotlegs.view.pages.MainPage;

public class MainPageMediator extends APageMediator {

	[Inject]
	public var view:MainPage;

	override protected function get viewInstance():APage {
		return view;
	}

}
}
