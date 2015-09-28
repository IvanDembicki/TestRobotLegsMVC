package iv.robotlegs.model {

public class ApplicationModel {

	private var _openedPage:Class;

	public function ApplicationModel() {
	}

	public function get openedPage():Class {
		return _openedPage;
	}

	public function set openedPage(value:Class):void {
		_openedPage = value;
	}

	public function get savedData():String {
		return "some data for save";
	}
}
}
