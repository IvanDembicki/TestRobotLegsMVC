package iv.robotlegs.view.pages {

import flash.display.Sprite;
import flash.events.Event;

public class APage extends Sprite {

	public static const GO_TO_MAIN:String = "goToMain";
	public static const GO_TO_INTRO:String = "goToIntro";
	public static const SAVE_DATA:String = "saveData";

	public function APage() {
		initPageInstance();
	}

	private function initPageInstance():void {
		initListeners();
	}

	private function initListeners():void {
		addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
	}

	private function onAddedToStage(event:Event):void {
		setPosition();
	}

	protected function setPosition():void {
		x = (stage.stageWidth - width) / 2;
		y = (stage.stageHeight - height) / 2;
	}
}
}
