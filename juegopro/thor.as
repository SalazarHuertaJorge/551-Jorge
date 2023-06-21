package  {
	import flash.display.MovieClip;
	import flash.events.KeyboardEvent;
	import flash.events.Event;
	
	public class thor extends MovieClip {
		private var der: Boolean = false;
		private var izq: Boolean = false;
		private var vel: int = 10;
		private var limite_x_der: int = 500;
		private var limite_x_izq: int = 90;

		public function thor() {
			// constructor code
			addEventListener(Event.ENTER_FRAME, motor);
			
		}
    public function motor(e: Event) : void {
		if(der){
			if (x<=limite_x_der){
				x+=vel;
			}
		} else if (izq){
			if(x>=limite_x_izq){
				x-=vel;
			}
			}
			controles();
		}
	public function controles (){
		stage.addEventListener(KeyboardEvent.KEY_DOWN, keydown);
		stage.addEventListener(KeyboardEvent.KEY_UP, keyup);
	}
	public function keydown(e: KeyboardEvent): void{
		switch (e.keyCode){
			case 68:
			der=true;
			break;
			case 65:
			izq=true;
			break;
		}
	}
	public function keyup(e: KeyboardEvent): void {
	switch (e.keyCode){
		case 68:
			der=false;
			break;
			case 65:
			izq=false;
			break;
	}
   }
  }
	
}

