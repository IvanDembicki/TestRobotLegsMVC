package iv.robotlegs {

import flash.display.DisplayObjectContainer;

import robotlegs.bender.bundles.mvcs.MVCSBundle;
import robotlegs.bender.extensions.contextView.ContextView;
import robotlegs.bender.framework.api.IContext;

import robotlegs.bender.framework.impl.Context;

public class ApplicationContext {

	private var context:IContext;

	public function ApplicationContext(contextView:ApplicationContextView) {
		initInstance(contextView);
	}

	private function initInstance(contextView:ApplicationContextView):void {
		context = new Context();
		context.install(MVCSBundle);
		context.configure(ApplicationConfig);
		context.configure(new ContextView(contextView));
	}


}
}
