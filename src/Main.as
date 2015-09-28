package {

import flash.display.Sprite;
import flash.display.StageAlign;
import flash.display.StageScaleMode;

import iv.robotlegs.ApplicationContextView;

[SWF(width="640", height="920", frameRate="25", backgroundColor="#FFFFFF")]

public class Main extends Sprite {

	public function Main() {
		initInstance();
	}

	private function initInstance():void {
		initStage();
		initContext();
	}

	private function initContext():void {
		addChild(new ApplicationContextView());
	}

	private function initStage():void {
		stage.scaleMode = StageScaleMode.NO_SCALE;
		stage.align = StageAlign.TOP_LEFT;
	}


}
}
