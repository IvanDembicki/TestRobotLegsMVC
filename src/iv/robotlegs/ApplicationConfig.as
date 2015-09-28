package iv.robotlegs {

import flash.events.IEventDispatcher;

import iv.flox.FloxService;
import iv.robotlegs.controller.OpenIntroPageCommand;
import iv.robotlegs.controller.OpenMainPageCommand;
import iv.robotlegs.controller.SaveResultsCommand;
import iv.robotlegs.events.ApplicationEvent;
import iv.robotlegs.model.ApplicationModel;
import iv.robotlegs.view.mediators.IntroPageMediator;
import iv.robotlegs.view.mediators.MainPageMediator;
import iv.robotlegs.view.pages.IntroPage;
import iv.robotlegs.view.pages.MainPage;

import robotlegs.bender.extensions.contextView.ContextView;
import robotlegs.bender.extensions.eventCommandMap.api.IEventCommandMap;
import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
import robotlegs.bender.framework.api.IConfig;
import robotlegs.bender.framework.api.IContext;
import robotlegs.bender.framework.api.IInjector;

public class ApplicationConfig implements IConfig {

	[Inject]
	public var injector:IInjector;

	[Inject]
	public var mediatorMap:IMediatorMap;

	[Inject]
	public var commandMap:IEventCommandMap;

	[Inject]
	public var contextView:ContextView;

	[Inject]
	public var dispatcher:IEventDispatcher;

	[Inject]
	public var context:IContext;

	public function ApplicationConfig() {
	}


	public function configure():void {
		injector.map(ApplicationModel).asSingleton();
		injector.map(FloxService).asSingleton();


		commandMap.map(ApplicationEvent.OPEN_INTRO_PAGE).toCommand(OpenIntroPageCommand);
		commandMap.map(ApplicationEvent.OPEN_MAIN_PAGE).toCommand(OpenMainPageCommand);
		commandMap.map(ApplicationEvent.SAVE_DATA).toCommand(SaveResultsCommand);

		mediatorMap.map(IntroPage).toMediator(IntroPageMediator);
		mediatorMap.map(MainPage).toMediator(MainPageMediator);

		context.afterInitializing(init);
	}

	private function init():void {
		var applicationEvent:ApplicationEvent = new ApplicationEvent(ApplicationEvent.OPEN_INTRO_PAGE);
		dispatcher.dispatchEvent(applicationEvent);
	}

}
}
