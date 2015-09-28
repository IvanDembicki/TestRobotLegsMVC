package iv.robotlegs.controller {

import iv.flox.FloxService;
import iv.robotlegs.model.ApplicationModel;

import robotlegs.bender.bundles.mvcs.Command;

public class SaveResultsCommand extends Command {

	[Inject]
	public var floxService:FloxService;

	[Inject]
	public var applicationModel:ApplicationModel;

	override public function execute():void {
		floxService.saveData(applicationModel.savedData);
	}

}
}
