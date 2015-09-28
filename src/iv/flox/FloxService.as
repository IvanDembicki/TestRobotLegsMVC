package iv.flox {

import com.gamua.flox.Flox;

public class FloxService {

	private const GAME_ID:String = "12345";
	private const GAME_KEY:String = "12345";

	public function FloxService() {
		initInstance();
	}

	private function initInstance():void {
		Flox.init(GAME_ID, GAME_KEY);
	}

	public function saveData(savedData:String):void {
		trace("FloxService::saveData(" + arguments + ");");
	}
}
}
