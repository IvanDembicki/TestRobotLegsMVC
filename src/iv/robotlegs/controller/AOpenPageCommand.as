package iv.robotlegs.controller {

import iv.robotlegs.ApplicationContextView;

import robotlegs.bender.bundles.mvcs.Command;
import robotlegs.bender.extensions.contextView.ContextView;

public class AOpenPageCommand extends Command {

	[Inject]
	public var contextView:ContextView;

	protected function setPage(PageClass:Class):void {
		applicationView.openedPage = new PageClass();
	}

	protected function get applicationView():ApplicationContextView {
		return contextView.view as ApplicationContextView;
	}
}
}
