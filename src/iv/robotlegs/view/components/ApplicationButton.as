package iv.robotlegs.view.components {

import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.text.TextField;
import flash.text.TextFieldAutoSize;

import iv.robotlegs.view.events.ComponentEvent;

public class ApplicationButton extends Sprite {

	private static const DEFAULT_WIDTH:int = 200;
	private static const DEFAULT_HEIGHT:int = 30;
	private static const DEFAULT_ROUNDING:int = 6;

	private var labelTxt:TextField;
	private var _action:String = "";

	public function ApplicationButton() {
		initInstance();
	}

	private function initInstance():void {
		initUpState();
		initListeners();
	}

	private function initListeners():void {
		mouseChildren = false;
		addEventListener(MouseEvent.CLICK, onMouseClick);
	}

	private function onMouseClick(event:MouseEvent):void {
		const componentEvent:ComponentEvent = new ComponentEvent(ComponentEvent.USER_ACTION);
		componentEvent.action = action;
		parent.dispatchEvent(componentEvent);
	}

	private function initUpState():void {
		drawBackground();
		initLabel();
	}

	private function drawBackground():void {
		with (graphics) {
			clear();
			lineStyle(3, 0x0000FF);
			beginFill(0x00CCFF);
			drawRoundRect(0, 0, DEFAULT_WIDTH, DEFAULT_HEIGHT, DEFAULT_ROUNDING, DEFAULT_ROUNDING);
		}
	}

	private function initLabel():void {
		labelTxt = new TextField();
		addChild(labelTxt);
		labelTxt.autoSize = TextFieldAutoSize.LEFT;
		labelTxt.multiline = false;
		labelTxt.wordWrap = false;
		labelTxt.selectable = false;
	}

	public function set text(value:String):void {
		labelTxt.htmlText = value;
		updateLabelPosition();
	}

	private function updateLabelPosition():void {
		labelTxt.x = (width - labelTxt.width) / 2;
		labelTxt.y = (height - labelTxt.height) / 2;
	}

	public function get action():String {
		return _action;
	}

	public function set action(value:String):void {
		_action = value;
	}
}
}
